/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.harvard.iq.dataverse;

import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.persistence.UniqueConstraint;

/**
 *
 * 
 * @author skraffmi
 */
@Entity
@Table(name = "termsofaccess", uniqueConstraints = @UniqueConstraint(name = "uk_termsofaccess_contenthash", columnNames = "contenthash"))
@ValidateTermsOfAccess
public class TermsOfAccess implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "contenthash", length = 64, nullable = false)
    private String contentHash;

    @PrePersist
    @PreUpdate
    public void computeContentHash() {
        this.contentHash = hash(normalizeForHash());
    }

    public boolean sameContent(TermsOfAccess other) {
        return other != null && Objects.equals(this.contentHash, other.contentHash);
    }

    private String normalizeForHash() {
        StringBuilder sb = new StringBuilder();
        appendHashPart(sb, termsOfAccess);
        appendHashPart(sb, dataAccessPlace);
        appendHashPart(sb, originalArchive);
        appendHashPart(sb, availabilityStatus);
        appendHashPart(sb, contactForAccess);
        appendHashPart(sb, sizeOfCollection);
        appendHashPart(sb, studyCompletion);
        sb.append('|').append(fileAccessRequest);
        return sb.toString();
    }

    private void appendHashPart(StringBuilder sb, String value) {
        if (sb.length() > 0) {
            sb.append('|');
        }
        sb.append(value == null ? "" : value.trim());
    }

    private String hash(String input) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hashBytes = digest.digest(input.getBytes(StandardCharsets.UTF_8));
            StringBuilder hex = new StringBuilder();
            for (byte b : hashBytes) {
                hex.append(String.format("%02x", b));
            }
            return hex.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 unavailable", e);
        }
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    
    @OneToMany(mappedBy = "termsOfAccess")
    private List<DatasetVersion> datasetVersions = new ArrayList<>();

    public List<DatasetVersion> getDatasetVersions() {
        return datasetVersions;
    }

    public void setDatasetVersions(List<DatasetVersion> datasetVersions) {
        this.datasetVersions = datasetVersions;
    }

    @Transient
    public DatasetVersion getDatasetVersion() {
        return datasetVersions == null || datasetVersions.isEmpty() ? null : datasetVersions.get(0);
    }

    @Transient
    public void setDatasetVersion(DatasetVersion datasetVersion) {
        if (datasetVersion == null) {
            this.datasetVersions = new ArrayList<>();
            return;
        }
        if (this.datasetVersions == null) {
            this.datasetVersions = new ArrayList<>();
        }
        if (!this.datasetVersions.contains(datasetVersion)) {
            this.datasetVersions.add(datasetVersion);
        }
        datasetVersion.setTermsOfAccess(this);
    }
    
    @OneToMany(mappedBy = "termsOfAccess")
    private List<Template> templates = new ArrayList<>();

    public List<Template> getTemplates() {
        return templates;
    }

    public void setTemplates(List<Template> templates) {
        this.templates = templates;
    }

    @Transient
    public Template getTemplate() {
        return templates == null || templates.isEmpty() ? null : templates.get(0);
    }

    @Transient
    public void setTemplate(Template template) {
        if (template == null) {
            this.templates = new ArrayList<>();
            return;
        }
        if (this.templates == null) {
            this.templates = new ArrayList<>();
        }
        if (!this.templates.contains(template)) {
            this.templates.add(template);
        }
        template.setTermsOfAccess(this);
    }


    @Column(columnDefinition = "TEXT")
    private String termsOfAccess;
    
    @Column(columnDefinition = "TEXT")
    private String dataAccessPlace;
    
    @Column( columnDefinition = "TEXT")
    private String originalArchive;
    
    @Column(columnDefinition = "TEXT")
    private String availabilityStatus;
    
    @Column(columnDefinition = "TEXT")
    private String contactForAccess;
    
    @Column( columnDefinition = "TEXT")
    private String sizeOfCollection;
    
    @Column(columnDefinition = "TEXT")
    private String studyCompletion;

    @Column(columnDefinition = "BOOLEAN")
    private boolean fileAccessRequest;

    public boolean isFileAccessRequest() {
        return fileAccessRequest;
    }

    public void setFileAccessRequest(boolean fileAccessRequest) {
        this.fileAccessRequest = fileAccessRequest;
    }

    public String getTermsOfAccess() {
        return termsOfAccess;
    }

    public void setTermsOfAccess(String termsOfAccess) {
        this.termsOfAccess = termsOfAccess;
    }

    public String getDataAccessPlace() {
        return dataAccessPlace;
    }

    public void setDataAccessPlace(String dataAccessPlace) {
        this.dataAccessPlace = dataAccessPlace;
    }

    public String getOriginalArchive() {
        return originalArchive;
    }

    public void setOriginalArchive(String originalArchive) {
        this.originalArchive = originalArchive;
    }

    public String getAvailabilityStatus() {
        return availabilityStatus;
    }

    public void setAvailabilityStatus(String availabilityStatus) {
        this.availabilityStatus = availabilityStatus;
    }

    public String getContactForAccess() {
        return contactForAccess;
    }

    public void setContactForAccess(String contactForAccess) {
        this.contactForAccess = contactForAccess;
    }

    public String getSizeOfCollection() {
        return sizeOfCollection;
    }

    public void setSizeOfCollection(String sizeOfCollection) {
        this.sizeOfCollection = sizeOfCollection;
    }

    public String getStudyCompletion() {
        return studyCompletion;
    }

    public void setStudyCompletion(String studyCompletion) {
        this.studyCompletion = studyCompletion;
    }
    
        
    public TermsOfAccess copyTermsOfAccess(){

        TermsOfAccess retVal = new TermsOfAccess();
        retVal.setAvailabilityStatus(this.getAvailabilityStatus());
        retVal.setContactForAccess(this.getContactForAccess());
        retVal.setDataAccessPlace(this.getDataAccessPlace());
        retVal.setOriginalArchive(this.getOriginalArchive());
        retVal.setSizeOfCollection(this.getSizeOfCollection());
        retVal.setStudyCompletion(this.getStudyCompletion());
        retVal.setTermsOfAccess(this.getTermsOfAccess());
        retVal.setFileAccessRequest(this.isFileAccessRequest());
        return retVal;
    }

    @Transient
    private String validationMessage;

    public String getValidationMessage() {
        return validationMessage;
    }

    public void setValidationMessage(String validationMessage) {
        this.validationMessage = validationMessage;
    }
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TermsOfAccess)) {
            return false;
        }
        TermsOfAccess other = (TermsOfAccess) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return this.getClass().getCanonicalName() + "[ id=" + id + " ]";
    }
    
}
