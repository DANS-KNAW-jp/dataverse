package edu.harvard.iq.dataverse;

import java.io.IOException;
import java.io.StringReader;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

import javax.ejb.Asynchronous;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.inject.Named;
import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonException;
import javax.json.JsonObject;
import javax.json.JsonObjectBuilder;
import javax.json.JsonReader;
import javax.json.JsonString;
import javax.json.JsonValue;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import edu.harvard.iq.dataverse.settings.SettingsServiceBean;

/**
 *
 * @author xyang
 */
@Stateless
@Named
public class DatasetFieldServiceBean implements java.io.Serializable {

    @PersistenceContext(unitName = "VDCNet-ejbPU")
    private EntityManager em;
    
    private static final Logger logger = Logger.getLogger(DatasetFieldServiceBean.class.getCanonicalName());

    @EJB
    SettingsServiceBean settingsService;

    private static final String NAME_QUERY = "SELECT dsfType from DatasetFieldType dsfType where dsfType.name= :fieldName";

    public List<DatasetFieldType> findAllAdvancedSearchFieldTypes() {
        return em.createQuery("select object(o) from DatasetFieldType as o where o.advancedSearchFieldType = true and o.title != '' order by o.id", DatasetFieldType.class).getResultList();
    }

    public List<DatasetFieldType> findAllFacetableFieldTypes() {
         return em.createNamedQuery("DatasetFieldType.findAllFacetable", DatasetFieldType.class)
                .getResultList();   
    }

    public List<DatasetFieldType> findFacetableFieldTypesByMetadataBlock(Long metadataBlockId) {
        return em.createNamedQuery("DatasetFieldType.findFacetableByMetadaBlock", DatasetFieldType.class)
                .setParameter("metadataBlockId", metadataBlockId)
                .getResultList();
    }

    public List<DatasetFieldType> findAllRequiredFields() {
        return em.createQuery("select object(o) from DatasetFieldType as o where o.required = true order by o.id", DatasetFieldType.class).getResultList();
    }

    public List<DatasetFieldType> findAllOrderedById() {
        return em.createQuery("select object(o) from DatasetFieldType as o order by o.id", DatasetFieldType.class).getResultList();
    }

    public List<DatasetFieldType> findAllOrderedByName() {
        return em.createQuery("select object(o) from DatasetFieldType as o order by o.name", DatasetFieldType.class).getResultList();
    }

    public DatasetFieldType find(Object pk) {
        return em.find(DatasetFieldType.class, pk);
    }

    public DatasetFieldType findByName(String name) {
        try {
            return  (DatasetFieldType) em.createQuery(NAME_QUERY).setParameter("fieldName", name).getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
       
    }

    /**
     * Gets the dataset field type, or returns {@code null}. Does not throw
     * exceptions.
     *
     * @param name the name do the field type
     * @return the field type, or {@code null}
     * @see #findByName(java.lang.String)
     */
    public DatasetFieldType findByNameOpt(String name) {
        try {
            return em.createNamedQuery("DatasetFieldType.findByName", DatasetFieldType.class)
                    .setParameter("name", name)
                    .getSingleResult();
        } catch (NoResultException nre) {
            return null;
        }
    }

    /* 
     * Similar method for looking up foreign metadata field mappings, for metadata
     * imports. for these the uniquness of names isn't guaranteed (i.e., there 
     * can be a field "author" in many different formats that we want to support), 
     * so these have to be looked up by both the field name and the name of the 
     * foreign format.
     */
    public ForeignMetadataFieldMapping findFieldMapping(String formatName, String pathName) {
        try {
            return em.createNamedQuery("ForeignMetadataFieldMapping.findByPath", ForeignMetadataFieldMapping.class)
                    .setParameter("formatName", formatName)
                    .setParameter("xPath", pathName)
                    .getSingleResult();
        } catch (NoResultException nre) {
            return null;
        }
        // TODO: cache looked up results.
    }

    public ControlledVocabularyValue findControlledVocabularyValue(Object pk) {
        return em.find(ControlledVocabularyValue.class, pk);
    }
   
    /**
     * @param dsft The DatasetFieldType in which to look up a
     * ControlledVocabularyValue.
     * @param strValue String value that may exist in a controlled vocabulary of
     * the provided DatasetFieldType.
     * @param lenient should we accept alternate spellings for value from mapping table
     *
     * @return The ControlledVocabularyValue found or null.
     */
    public ControlledVocabularyValue findControlledVocabularyValueByDatasetFieldTypeAndStrValue(DatasetFieldType dsft, String strValue, boolean lenient) {
        TypedQuery<ControlledVocabularyValue> typedQuery = em.createQuery("SELECT OBJECT(o) FROM ControlledVocabularyValue AS o WHERE o.strValue = :strvalue AND o.datasetFieldType = :dsft", ControlledVocabularyValue.class);       
        typedQuery.setParameter("strvalue", strValue);
        typedQuery.setParameter("dsft", dsft);
        try {
            ControlledVocabularyValue cvv = typedQuery.getSingleResult();
            return cvv;
        } catch (NoResultException | NonUniqueResultException ex) {
            if (lenient) {
                // if the value isn't found, check in the list of alternate values for this datasetFieldType
                TypedQuery<ControlledVocabAlternate> alternateQuery = em.createQuery("SELECT OBJECT(o) FROM ControlledVocabAlternate as o WHERE o.strValue = :strvalue AND o.datasetFieldType = :dsft", ControlledVocabAlternate.class);
                alternateQuery.setParameter("strvalue", strValue);
                alternateQuery.setParameter("dsft", dsft);
                try {
                    ControlledVocabAlternate alternateValue = alternateQuery.getSingleResult();
                    return alternateValue.getControlledVocabularyValue();
                } catch (NoResultException | NonUniqueResultException ex2) {
                    return null;
                }

            } else {
                return null;
            }
        }
    }
    
    public ControlledVocabAlternate findControlledVocabAlternateByControlledVocabularyValueAndStrValue(ControlledVocabularyValue cvv, String strValue){
        TypedQuery<ControlledVocabAlternate> typedQuery = em.createQuery("SELECT OBJECT(o) FROM ControlledVocabAlternate AS o WHERE o.strValue = :strvalue AND o.controlledVocabularyValue = :cvv", ControlledVocabAlternate.class);
        typedQuery.setParameter("strvalue", strValue);
        typedQuery.setParameter("cvv", cvv);
        try {
            ControlledVocabAlternate alt = typedQuery.getSingleResult();
            return alt;
        } catch (NoResultException e) {
            return null;
        } catch (NonUniqueResultException ex){
           List results = typedQuery.getResultList();
           return (ControlledVocabAlternate) results.get(0);
        }
    }
    
    /**
     * @param dsft The DatasetFieldType in which to look up a
     * ControlledVocabularyValue.
     * @param identifier String Identifier that may exist in a controlled vocabulary of
     * the provided DatasetFieldType.
     *
     * @return The ControlledVocabularyValue found or null.
     */
    public ControlledVocabularyValue findControlledVocabularyValueByDatasetFieldTypeAndIdentifier (DatasetFieldType dsft, String identifier)  {
        TypedQuery<ControlledVocabularyValue> typedQuery = em.createQuery("SELECT OBJECT(o) FROM ControlledVocabularyValue AS o WHERE o.identifier = :identifier AND o.datasetFieldType = :dsft", ControlledVocabularyValue.class);       
        typedQuery.setParameter("identifier", identifier);
        typedQuery.setParameter("dsft", dsft);
        try {
            ControlledVocabularyValue cvv = typedQuery.getSingleResult();
            return cvv;
        } catch (NoResultException | NonUniqueResultException ex) {
                return null;
        }
    }

    // return singleton NA Controled Vocabulary Value
    public ControlledVocabularyValue findNAControlledVocabularyValue() {
        TypedQuery<ControlledVocabularyValue> typedQuery = em.createQuery("SELECT OBJECT(o) FROM ControlledVocabularyValue AS o WHERE o.datasetFieldType is null AND o.strValue = :strvalue", ControlledVocabularyValue.class);
        typedQuery.setParameter("strvalue", DatasetField.NA_VALUE);
        return typedQuery.getSingleResult();
    }

    public DatasetFieldType save(DatasetFieldType dsfType) {
        return em.merge(dsfType);
    }

    public MetadataBlock save(MetadataBlock mdb) {
        return em.merge(mdb);
    }

    public ControlledVocabularyValue save(ControlledVocabularyValue cvv) {
        return em.merge(cvv);
    }
    
    public ControlledVocabAlternate save(ControlledVocabAlternate alt) {
        return em.merge(alt);
    } 
    
    Map <Long, JsonObject> cvocMap = null;
    String oldHash = null;
    
    public Map<Long, JsonObject> getCVocConf(){
        
        //ToDo - change to an API call to be able to provide feedback if the json is invalid?
        String cvocSetting = settingsService.getValueForKey(SettingsServiceBean.Key.CVocConf);
        if (cvocSetting == null || cvocSetting.isEmpty()) {
            oldHash=null;
            return new HashMap<>();
    } 
        String newHash = DigestUtils.md5Hex(cvocSetting);
        if(newHash.equals(oldHash)) {
            return cvocMap;
        } 
            oldHash=newHash;
        cvocMap=new HashMap<>();
        
        try (JsonReader jsonReader = Json.createReader(new StringReader(settingsService.getValueForKey(SettingsServiceBean.Key.CVocConf)))) {
        JsonArray cvocConfJsonArray = jsonReader.readArray();
            for (JsonObject jo : cvocConfJsonArray.getValuesAs(JsonObject.class)) {
                DatasetFieldType dft = findByNameOpt(jo.getString("field-name"));
                if(dft!=null) {
                    cvocMap.put(dft.getId(), jo);
                   } else {
                       logger.warning("Ignoring External Vocabulary setting for non-existent field: " + jo.getString("field-name"));
                   }
                if(jo.containsKey("term-uri-field")) {
                    String termUriField=jo.getString("term-uri-field");
                    if (!dft.isHasChildren()) {
                        if (termUriField.equals(dft.getName())) {
                            logger.info("Found primitive field for term uri : " + dft.getName());
                        }
                    } else {
                        DatasetFieldType childdft = findByNameOpt(jo.getString("term-uri-field"));
                        logger.info("Found term child field: " + childdft.getName());
                        if (childdft.getParentDatasetFieldType() != dft) {
                            logger.warning("Term URI field (" + childdft.getDisplayName() + ") not a child of parent: "
                                    + dft.getDisplayName());
                        }
                    }
                    if(dft==null) {
                        logger.warning("Ignoring External Vocabulary setting for non-existent child field: " + jo.getString("term-uri-field"));
                    }

                }if(jo.containsKey("child-fields")) {
                    JsonArray childFields = jo.getJsonArray("child-fields");
                    for (JsonString elm : childFields.getValuesAs(JsonString.class)) {
                        dft = findByNameOpt(elm.getString());
                        logger.info("Found: " + dft.getName());
                        if (dft == null) {
                            logger.warning("Ignoring External Vocabulary setting for non-existent child field: "
                                    + elm.getString());
                        }
                    }
                }
            }
            } catch(JsonException e) {
                logger.warning("Ignoring External Vocabulary setting due to parsing error: " + e.getLocalizedMessage());
            }
        return cvocMap;
    }

    public void registerExternalVocabValues(DatasetField df) {
        DatasetFieldType dft =df.getDatasetFieldType(); 
        logger.info("Registering for field: " + dft.getName());
        JsonObject cvocEntry = getCVocConf().get(dft.getId());
        if(dft.isPrimitive()) {
            for(DatasetFieldValue dfv: df.getDatasetFieldValues()) {
                registerExternalTerm(cvocEntry, dfv.getValue(), cvocEntry.getString("retrieval-uri"), cvocEntry.getString("prefix", null));
            }
            } else {
                if (df.getDatasetFieldType().isCompound()) {
                    DatasetFieldType termdft = findByNameOpt(cvocEntry.getString("term-uri-field"));
                    for (DatasetFieldCompoundValue cv : df.getDatasetFieldCompoundValues()) {
                        for (DatasetField cdf : cv.getChildDatasetFields()) {
                            logger.info("Found term uri field type id: " + cdf.getDatasetFieldType().getId());
                            if(cdf.getDatasetFieldType().equals(termdft)) {
                                registerExternalTerm(cvocEntry, cdf.getValue(), cvocEntry.getString("retrieval-uri"), cvocEntry.getString("prefix", null));
                            }
                        }
                    }
                }
            }
    }
    
    // This method assumes externalvocabularyvalue entries have been filtered and
    // contain a single JsonObject whose values are either Strings or an array of
    // objects with "lang" and "value" keys. The string, or the "value"s for each
    // language are added to the set.
    // Any parsing error results in no entries (there can be unfiltered entries with
    // unknown structure - getting some strings from such an entry could give fairly
    // random info that would be bad to addd for searches, etc.)
    public Set<String> getStringsFor(String termUri) {
        Set<String> strings = new HashSet<String>();
        JsonObject jo = getExternalVocabularyValue(termUri);

        if (jo != null) {
            try {
                for (String key : jo.keySet()) {
                    JsonValue jv = jo.get(key);
                    if (jv.getValueType().equals(JsonValue.ValueType.STRING)) {
                        logger.info("adding " + jo.getString(key) + " for " + termUri);
                        strings.add(jo.getString(key));
                    } else {
                        if (jv.getValueType().equals(JsonValue.ValueType.ARRAY)) {
                            JsonArray jarr = jv.asJsonArray();
                            for (int i = 0; i < jarr.size(); i++) {
                                logger.info("adding " + jarr.getJsonObject(i).getString("value") + " for " + termUri);
                                strings.add(jarr.getJsonObject(i).getString("value"));
                            }
                        }
                    }
                }
            } catch (Exception e) {
                logger.warning(
                        "Problem interpreting external vocab value for uri: " + termUri + " : " + e.getMessage());
                return new HashSet<String>();
            }
        }
        logger.info("Returning " + String.join(",", strings) + " for " + termUri);
        return strings;
    }    

    public JsonObject getExternalVocabularyValue(String termUri) {
        try {
            ExternalVocabularyValue evv = em
                    .createQuery("select object(o) from ExternalVocabularyValue as o where o.uri=:uri",
                            ExternalVocabularyValue.class)
                    .setParameter("uri", termUri).getSingleResult();
            String valString = evv.getValue();
            try (JsonReader jr = Json.createReader(new StringReader(valString))) {
                return jr.readObject();
            } catch (Exception e) {
                logger.warning("Problem parsing external vocab value for uri: " + termUri + " : " + e.getMessage());
            }
        } catch (NoResultException nre) {
            logger.warning("No external vocab value for uri: " + termUri);
        }
        return null;
    }

    private void registerExternalTerm(JsonObject cvocEntry, String term, String retrievalUri, String prefix) {
        if(term.isBlank()) {
            logger.fine("Ingoring blank term");
            return;
        }
        logger.fine("Registering term: " + term);
        try {
            URI uri = new URI(term);
            ExternalVocabularyValue evv = null;
            try {
                evv = em.createQuery("select object(o) from ExternalVocabularyValue as o where o.uri=:uri",
                        ExternalVocabularyValue.class).setParameter("uri", term).getSingleResult();
            } catch (NoResultException nre) {
                evv = new ExternalVocabularyValue(term, null);
            }
            if (evv.getValue() == null) {
                String adjustedTerm = (prefix==null)? term: term.replace(prefix, "");
                retrievalUri = retrievalUri.replace("{0}", adjustedTerm);
                logger.info("Didn't find " + term + ", calling " + retrievalUri);
                try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
                    HttpGet httpGet = new HttpGet(retrievalUri);
                    httpGet.addHeader("Accept", "application/json+ld, application/json");

                    HttpResponse response = httpClient.execute(httpGet);
                    String data = EntityUtils.toString(response.getEntity(), StandardCharsets.UTF_8);
                    int statusCode = response.getStatusLine().getStatusCode();
                    if (statusCode == 200) {
                        logger.fine("Returned data: " + data);
                        try (JsonReader jsonReader = Json.createReader(new StringReader(data))) {
                            String dataObj =filterResponse(cvocEntry, jsonReader.readObject(), term).toString(); 
                            evv.setValue(dataObj);
                            logger.fine("JsonObject: " + dataObj);
                            em.merge(evv);
                            em.flush();
                            logger.fine("Wrote value for term: " + term);
                        } catch (JsonException je) {
                            logger.warning("Error retrieving: " + retrievalUri + " : " + je.getMessage());
                        }
                    } else {
                        logger.warning("Received response code : " + statusCode + " when retrieving " + retrievalUri
                                + " : " + data);
                    }
                } catch (IOException ioe) {
                    logger.warning("IOException when retrieving url: " + retrievalUri + " : " + ioe.getMessage());
                }

            }
        } catch (URISyntaxException e) {
            logger.fine("Term is not a URI: " + term);
        }

    }

    private JsonObject filterResponse(JsonObject cvocEntry, JsonObject readObject, String termUri) {

        JsonObjectBuilder job = Json.createObjectBuilder();
        JsonObject filtering = cvocEntry.getJsonObject("retrieval-filtering");
        logger.info("RF: " + filtering.toString());
        JsonObject managedFields = cvocEntry.getJsonObject("managed-fields");
        logger.info("MF: " + managedFields.toString());
        for (String filterKey : filtering.keySet()) {
            if (!filterKey.equals("@context")) {
                try {
                    JsonObject filter = filtering.getJsonObject(filterKey);
                    logger.info("F: " + filter.toString());
                    JsonArray params = filter.getJsonArray("params");
                    if (params == null) {
                        params = Json.createArrayBuilder().build();
                    }
                    logger.info("Params: " + params.toString());
                    List<Object> vals = new ArrayList<Object>();
                    for (int i = 0; i < params.size(); i++) {
                        String param = params.getString(i);
                        if (param.startsWith("/")) {
                            // Remove leading /
                            param = param.substring(1);
                            String[] pathParts = param.split("/");
                            logger.info("PP: " + String.join(", ", pathParts));
                            JsonValue curPath = readObject;
                            for (int j = 0; j < pathParts.length - 1; j++) {
                                if (pathParts[j].contains("=")) {
                                    JsonArray arr = ((JsonArray) curPath);
                                    for (int k = 0; k < arr.size(); k++) {
                                        String[] keyVal = pathParts[j].split("=");
                                        logger.info("Looking for object where " + keyVal[0] + " is " + keyVal[1]);
                                        JsonObject jo = arr.getJsonObject(k);
                                        String val = jo.getString(keyVal[0]);
                                        String expected = keyVal[1];
                                        if (expected.equals("@id")) {
                                            expected = termUri;
                                        }
                                        if (val.equals(expected)) {
                                            logger.info("Found: " + jo.toString());
                                            curPath = jo;
                                            break;
                                        }
                                    }
                                } else {
                                    curPath = ((JsonObject) curPath).get(pathParts[j]);
                                    logger.info("Found next Path object " + curPath.toString());
                                }
                            }
                            JsonValue jv = ((JsonObject) curPath).get(pathParts[pathParts.length - 1]);
                            if (jv.getValueType().equals(JsonValue.ValueType.STRING)) {
                                vals.add(i, ((JsonString) jv).getString());
                            } else if (jv.getValueType().equals(JsonValue.ValueType.ARRAY)) {
                                vals.add(i, jv);
                            }
                            logger.info("Added param value: " + i + ": " + vals.get(i));
                        } else {
                            logger.info("Param is: " + param);
                            // param is not a path - either a reference to the term URI
                            if (param.equals("@id")) {
                                logger.info("Adding id param: " + termUri);
                                vals.add(i, termUri);
                            } else {
                                // or a hardcoded value
                                logger.info("Adding hardcoded param: " + param);
                                vals.add(i, param);
                            }
                        }
                    }
                    // Shortcut: nominally using a pattern of {0} and a param that is @id or
                    // hardcoded value allows the same options as letting the pattern itself be @id
                    // or a hardcoded value
                    String pattern = filter.getString("pattern");
                    logger.info("Pattern: " + pattern);
                    if (pattern.equals("@id")) {
                        logger.info("Added #id pattern: " + filterKey + ": " + termUri);
                        job.add(filterKey, termUri);
                    } else if (pattern.contains("{")) {
                        if (pattern.equals("{0}")) {
                            if (vals.get(0) instanceof JsonArray) {
                                job.add(filterKey, (JsonArray) vals.get(0));
                            } else {
                                job.add(filterKey, (String) vals.get(0));
                            }
                        } else {
                            String result = MessageFormat.format(pattern, vals.toArray());
                            logger.info("Result: " + result);
                            job.add(filterKey, result);
                            logger.info("Added : " + filterKey + ": " + result);
                        }
                    } else {
                        logger.info("Added hardcoded pattern: " + filterKey + ": " + pattern);
                        job.add(filterKey, pattern);
                    }
                } catch (Exception e) {
                    logger.info("External Vocabulary: " + termUri + " - Failed to find value for " + filterKey + ": "
                            + e.getMessage());
                }
            }
        }
        JsonObject filteredResponse = job.build();
        if(filteredResponse.isEmpty()) {
            return readObject;
        } else {
            return filteredResponse;
        }
    }
    
    /*
    public class CVoc {
        String cvocUrl;
        String language;
        String protocol;
        String vocabUri;
        String termParentUri;
        String jsUrl;
        String mapId;
        String mapQuery;
        boolean readonly;
        boolean hideReadonlyUrls;
        int minChars;
        List<String> vocabs;
        List<String> keys;
        public CVoc(String cvocUrl, String language, String protocol, String vocabUri, String termParentUri, boolean readonly, boolean hideReadonlyUrls, int minChars,
                    List<String> vocabs, List<String> keys, String jsUrl, String mapId, String mapQuery){
            this.cvocUrl = cvocUrl;
            this.language = language;
            this.protocol = protocol;
            this.readonly = readonly;
            this.hideReadonlyUrls = hideReadonlyUrls;
            this.minChars = minChars;
            this.vocabs = vocabs;
            this.vocabUri = vocabUri;
            this.termParentUri = termParentUri;
            this.keys = keys;
            this.jsUrl = jsUrl;
            this.mapId = mapId;
            this.mapQuery = mapQuery;
        }

        public String getCVocUrl() {
            return cvocUrl;
        }
        public String getLanguage() {
            return language;
        }
        public String getProtocol() { return protocol; }
        public String getVocabUri() {
            return vocabUri;
        }
        public String getTermParentUri() {
            return termParentUri;
        }
        public boolean isReadonly() {
            return readonly;
        }
        public boolean isHideReadonlyUrls() {
            return hideReadonlyUrls;
        }
        public int getMinChars() { return minChars; }
        public List<String> getVocabs() {
            return vocabs;
        }
        public List<String> getKeys() {
            return keys;
        }

        public String getJsUrl() {
            return jsUrl;
        }

        public String getMapId() {
            return mapId;
        }

        public String getMapQuery() {
            return mapQuery;
        }
    }
*/
}
