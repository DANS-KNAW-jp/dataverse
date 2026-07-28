--
-- PostgreSQL database dump
--

\restrict qgOoNZfkBZkeO3aK0cKdiz6tLrxEy8o1kLfEF7135TQHlbUTbfb710aCnqjr418

-- Dumped from database version 16.11
-- Dumped by pg_dump version 16.11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.pendingworkflowinvocation_localdata DROP CONSTRAINT pndngwrkflwinvocationlocaldatapndngwrkflwinvocationinvocationid;
ALTER TABLE ONLY public.dataset DROP CONSTRAINT fx_dataset_template_id;
ALTER TABLE ONLY public.workflowstepdata_stepsettings DROP CONSTRAINT fk_workflowstepdata_stepsettings_workflowstepdata_id;
ALTER TABLE ONLY public.workflowstepdata_stepparameters DROP CONSTRAINT fk_workflowstepdata_stepparameters_workflowstepdata_id;
ALTER TABLE ONLY public.workflowstepdata DROP CONSTRAINT fk_workflowstepdata_parent_id;
ALTER TABLE ONLY public.workflowcomment DROP CONSTRAINT fk_workflowcomment_datasetversion_id;
ALTER TABLE ONLY public.workflowcomment DROP CONSTRAINT fk_workflowcomment_authenticateduser_id;
ALTER TABLE ONLY public.variablerangeitem DROP CONSTRAINT fk_variablerangeitem_datavariable_id;
ALTER TABLE ONLY public.variablerange DROP CONSTRAINT fk_variablerange_datavariable_id;
ALTER TABLE ONLY public.variablemetadata DROP CONSTRAINT fk_variablemetadata_weightvariable_id;
ALTER TABLE ONLY public.variablemetadata DROP CONSTRAINT fk_variablemetadata_filemetadata_id;
ALTER TABLE ONLY public.variablemetadata DROP CONSTRAINT fk_variablemetadata_datavariable_id;
ALTER TABLE ONLY public.variablecategory DROP CONSTRAINT fk_variablecategory_datavariable_id;
ALTER TABLE ONLY public.vargroup DROP CONSTRAINT fk_vargroup_filemetadata_id;
ALTER TABLE ONLY public.vargroup_datavariable DROP CONSTRAINT fk_vargroup_datavariable_varsingroup_id;
ALTER TABLE ONLY public.vargroup_datavariable DROP CONSTRAINT fk_vargroup_datavariable_vargroup_id;
ALTER TABLE ONLY public.usernotification DROP CONSTRAINT fk_usernotification_user_id;
ALTER TABLE ONLY public.usernotification DROP CONSTRAINT fk_usernotification_requestor_id;
ALTER TABLE ONLY public.userbannermessage DROP CONSTRAINT fk_userbannermessage_user_id;
ALTER TABLE ONLY public.userbannermessage DROP CONSTRAINT fk_userbannermessage_bannermessage_id;
ALTER TABLE ONLY public.termsofuseandaccess DROP CONSTRAINT fk_termsofuseandcesss_license_id;
ALTER TABLE ONLY public.termsofuseandaccess DROP CONSTRAINT fk_termsofuseandaccess_license_id;
ALTER TABLE ONLY public.template DROP CONSTRAINT fk_template_termsofuseandaccess_id;
ALTER TABLE ONLY public.template DROP CONSTRAINT fk_template_dataverse_id;
ALTER TABLE ONLY public.summarystatistic DROP CONSTRAINT fk_summarystatistic_datavariable_id;
ALTER TABLE ONLY public.storageuse DROP CONSTRAINT fk_storageuse_dvobjectcontainer_id;
ALTER TABLE ONLY public.storagequota DROP CONSTRAINT fk_storagequota_definitionpoint_id;
ALTER TABLE ONLY public.savedsearchfilterquery DROP CONSTRAINT fk_savedsearchfilterquery_savedsearch_id;
ALTER TABLE ONLY public.savedsearch DROP CONSTRAINT fk_savedsearch_definitionpoint_id;
ALTER TABLE ONLY public.savedsearch DROP CONSTRAINT fk_savedsearch_creator_id;
ALTER TABLE ONLY public.roleassignment DROP CONSTRAINT fk_roleassignment_role_id;
ALTER TABLE ONLY public.roleassignment DROP CONSTRAINT fk_roleassignment_definitionpoint_id;
ALTER TABLE ONLY public.pendingworkflowinvocation DROP CONSTRAINT fk_pendingworkflowinvocation_workflow_id;
ALTER TABLE ONLY public.pendingworkflowinvocation DROP CONSTRAINT fk_pendingworkflowinvocation_dataset_id;
ALTER TABLE ONLY public.passwordresetdata DROP CONSTRAINT fk_passwordresetdata_builtinuser_id;
ALTER TABLE ONLY public.oauth2tokendata DROP CONSTRAINT fk_oauth2tokendata_user_id;
ALTER TABLE ONLY public.metric DROP CONSTRAINT fk_metric_dataverse_id;
ALTER TABLE ONLY public.metadatablock DROP CONSTRAINT fk_metadatablock_owner_id;
ALTER TABLE ONLY public.ipv6range DROP CONSTRAINT fk_ipv6range_owner_id;
ALTER TABLE ONLY public.ipv4range DROP CONSTRAINT fk_ipv4range_owner_id;
ALTER TABLE ONLY public.ingestrequest DROP CONSTRAINT fk_ingestrequest_datafile_id;
ALTER TABLE ONLY public.ingestreport DROP CONSTRAINT fk_ingestreport_datafile_id;
ALTER TABLE ONLY public.harvestingdataverseconfig DROP CONSTRAINT fk_harvestingdataverseconfig_dataverse_id;
ALTER TABLE ONLY public.harvestingclient DROP CONSTRAINT fk_harvestingclient_dataverse_id;
ALTER TABLE ONLY public.guestbookresponse DROP CONSTRAINT fk_guestbookresponse_guestbook_id;
ALTER TABLE ONLY public.guestbookresponse DROP CONSTRAINT fk_guestbookresponse_datasetversion_id;
ALTER TABLE ONLY public.guestbookresponse DROP CONSTRAINT fk_guestbookresponse_dataset_id;
ALTER TABLE ONLY public.guestbookresponse DROP CONSTRAINT fk_guestbookresponse_datafile_id;
ALTER TABLE ONLY public.guestbookresponse DROP CONSTRAINT fk_guestbookresponse_authenticateduser_id;
ALTER TABLE ONLY public.guestbook DROP CONSTRAINT fk_guestbook_dataverse_id;
ALTER TABLE ONLY public.globustaskinprogress DROP CONSTRAINT fk_globustaskinprogress_user_id;
ALTER TABLE ONLY public.globustaskinprogress DROP CONSTRAINT fk_globustaskinprogress_dataset_id;
ALTER TABLE ONLY public.foreignmetadatafieldmapping DROP CONSTRAINT fk_foreignmetadatafieldmapping_parentfieldmapping_id;
ALTER TABLE ONLY public.foreignmetadatafieldmapping DROP CONSTRAINT fk_foreignmetadatafieldmapping_foreignmetadataformatmapping_id;
ALTER TABLE ONLY public.filemetadata DROP CONSTRAINT fk_filemetadata_datasetversion_id;
ALTER TABLE ONLY public.filemetadata_datafilecategory DROP CONSTRAINT fk_filemetadata_datafilecategory_filemetadatas_id;
ALTER TABLE ONLY public.filemetadata_datafilecategory DROP CONSTRAINT fk_filemetadata_datafilecategory_filecategories_id;
ALTER TABLE ONLY public.filemetadata DROP CONSTRAINT fk_filemetadata_datafile_id;
ALTER TABLE ONLY public.fileaccessrequests DROP CONSTRAINT fk_fileaccessrequests_guestbookresponse;
ALTER TABLE ONLY public.fileaccessrequests DROP CONSTRAINT fk_fileaccessrequests_datafile_id;
ALTER TABLE ONLY public.fileaccessrequests DROP CONSTRAINT fk_fileaccessrequests_authenticated_user_id;
ALTER TABLE ONLY public.externaltooltype DROP CONSTRAINT fk_externaltooltype_externaltool_id;
ALTER TABLE ONLY public.explicitgroup DROP CONSTRAINT fk_explicitgroup_owner_id;
ALTER TABLE ONLY public.explicitgroup_explicitgroup DROP CONSTRAINT fk_explicitgroup_explicitgroup_explicitgroup_id;
ALTER TABLE ONLY public.explicitgroup_explicitgroup DROP CONSTRAINT fk_explicitgroup_explicitgroup_containedexplicitgroups_id;
ALTER TABLE ONLY public.explicitgroup_containedroleassignees DROP CONSTRAINT fk_explicitgroup_containedroleassignees_explicitgroup_id;
ALTER TABLE ONLY public.explicitgroup_authenticateduser DROP CONSTRAINT fk_explicitgroup_authenticateduser_explicitgroup_id;
ALTER TABLE ONLY public.dvobject DROP CONSTRAINT fk_dvobject_releaseuser_id;
ALTER TABLE ONLY public.dvobject DROP CONSTRAINT fk_dvobject_owner_id;
ALTER TABLE ONLY public.dvobject DROP CONSTRAINT fk_dvobject_creator_id;
ALTER TABLE ONLY public.dataversetheme DROP CONSTRAINT fk_dataversetheme_dataverse_id;
ALTER TABLE ONLY public.dataversesubjects DROP CONSTRAINT fk_dataversesubjects_dataverse_id;
ALTER TABLE ONLY public.dataversesubjects DROP CONSTRAINT fk_dataversesubjects_controlledvocabularyvalue_id;
ALTER TABLE ONLY public.dataverserole DROP CONSTRAINT fk_dataverserole_owner_id;
ALTER TABLE ONLY public.dataversemetadatablockfacet DROP CONSTRAINT fk_dataversemetadatablockfacet_metadatablock_id;
ALTER TABLE ONLY public.dataversemetadatablockfacet DROP CONSTRAINT fk_dataversemetadatablockfacet_dataverse_id;
ALTER TABLE ONLY public.dataverselinkingdataverse DROP CONSTRAINT fk_dataverselinkingdataverse_linkingdataverse_id;
ALTER TABLE ONLY public.dataverselinkingdataverse DROP CONSTRAINT fk_dataverselinkingdataverse_dataverse_id;
ALTER TABLE ONLY public.dataversefieldtypeinputlevel DROP CONSTRAINT fk_dataversefieldtypeinputlevel_dataverse_id;
ALTER TABLE ONLY public.dataversefieldtypeinputlevel DROP CONSTRAINT fk_dataversefieldtypeinputlevel_datasetfieldtype_id;
ALTER TABLE ONLY public.dataversefeatureditem DROP CONSTRAINT fk_dataversefeatureditem_dvobject_id;
ALTER TABLE ONLY public.dataversefeatureditem DROP CONSTRAINT fk_dataversefeatureditem_dataverse_id;
ALTER TABLE ONLY public.dataversefeatureddataverse DROP CONSTRAINT fk_dataversefeatureddataverse_featureddataverse_id;
ALTER TABLE ONLY public.dataversefeatureddataverse DROP CONSTRAINT fk_dataversefeatureddataverse_dataverse_id;
ALTER TABLE ONLY public.dataversefacet DROP CONSTRAINT fk_dataversefacet_dataverse_id;
ALTER TABLE ONLY public.dataversefacet DROP CONSTRAINT fk_dataversefacet_datasetfieldtype_id;
ALTER TABLE ONLY public.dataversecontact DROP CONSTRAINT fk_dataversecontact_dataverse_id;
ALTER TABLE ONLY public.dataverse_metadatablock DROP CONSTRAINT fk_dataverse_metadatablock_metadatablocks_id;
ALTER TABLE ONLY public.dataverse_metadatablock DROP CONSTRAINT fk_dataverse_metadatablock_dataverse_id;
ALTER TABLE ONLY public.dataverse DROP CONSTRAINT fk_dataverse_id;
ALTER TABLE ONLY public.dataverse DROP CONSTRAINT fk_dataverse_defaulttemplate_id;
ALTER TABLE ONLY public.dataverse DROP CONSTRAINT fk_dataverse_defaultcontributorrole_id;
ALTER TABLE ONLY public.dataverse_citationdatasetfieldtypes DROP CONSTRAINT fk_dataverse_citationdatasetfieldtypes_dataverse_id;
ALTER TABLE ONLY public.datavariable DROP CONSTRAINT fk_datavariable_datatable_id;
ALTER TABLE ONLY public.datatable DROP CONSTRAINT fk_datatable_datafile_id;
ALTER TABLE ONLY public.datasetversionuser DROP CONSTRAINT fk_datasetversionuser_datasetversion_id;
ALTER TABLE ONLY public.datasetversionuser DROP CONSTRAINT fk_datasetversionuser_authenticateduser_id;
ALTER TABLE ONLY public.datasetversion DROP CONSTRAINT fk_datasetversion_termsofuseandaccess_id;
ALTER TABLE ONLY public.datasetversion DROP CONSTRAINT fk_datasetversion_dataset_id;
ALTER TABLE ONLY public.datasettype_metadatablock DROP CONSTRAINT fk_datasettype_metadatablock_metadatablocks_id;
ALTER TABLE ONLY public.datasettype_metadatablock DROP CONSTRAINT fk_datasettype_metadatablock_datasettype_id;
ALTER TABLE ONLY public.datasettype_license DROP CONSTRAINT fk_datasettype_license_licenses_id;
ALTER TABLE ONLY public.datasettype_license DROP CONSTRAINT fk_datasettype_license_datasettype_id;
ALTER TABLE ONLY public.datasetmetrics DROP CONSTRAINT fk_datasetmetrics_dataset_id;
ALTER TABLE ONLY public.datasetlock DROP CONSTRAINT fk_datasetlock_user_id;
ALTER TABLE ONLY public.datasetlock DROP CONSTRAINT fk_datasetlock_dataset_id;
ALTER TABLE ONLY public.datasetlinkingdataverse DROP CONSTRAINT fk_datasetlinkingdataverse_linkingdataverse_id;
ALTER TABLE ONLY public.datasetlinkingdataverse DROP CONSTRAINT fk_datasetlinkingdataverse_dataset_id;
ALTER TABLE ONLY public.datasetfieldvalue DROP CONSTRAINT fk_datasetfieldvalue_datasetfield_id;
ALTER TABLE ONLY public.datasetfieldtype DROP CONSTRAINT fk_datasetfieldtype_parentdatasetfieldtype_id;
ALTER TABLE ONLY public.datasetfieldtype DROP CONSTRAINT fk_datasetfieldtype_metadatablock_id;
ALTER TABLE ONLY public.datasetfielddefaultvalue DROP CONSTRAINT fk_datasetfielddefaultvalue_parentdatasetfielddefaultvalue_id;
ALTER TABLE ONLY public.datasetfielddefaultvalue DROP CONSTRAINT fk_datasetfielddefaultvalue_defaultvalueset_id;
ALTER TABLE ONLY public.datasetfielddefaultvalue DROP CONSTRAINT fk_datasetfielddefaultvalue_datasetfield_id;
ALTER TABLE ONLY public.datasetfieldcompoundvalue DROP CONSTRAINT fk_datasetfieldcompoundvalue_parentdatasetfield_id;
ALTER TABLE ONLY public.datasetfield DROP CONSTRAINT fk_datasetfield_template_id;
ALTER TABLE ONLY public.datasetfield DROP CONSTRAINT fk_datasetfield_parentdatasetfieldcompoundvalue_id;
ALTER TABLE ONLY public.datasetfield DROP CONSTRAINT fk_datasetfield_datasetversion_id;
ALTER TABLE ONLY public.datasetfield DROP CONSTRAINT fk_datasetfield_datasetfieldtype_id;
ALTER TABLE ONLY public.datasetfield_controlledvocabularyvalue DROP CONSTRAINT fk_datasetfield_controlledvocabularyvalue_datasetfield_id;
ALTER TABLE ONLY public.datasetexternalcitations DROP CONSTRAINT fk_datasetexternalcitations_dataset_id;
ALTER TABLE ONLY public.dataset DROP CONSTRAINT fk_dataset_thumbnailfile_id;
ALTER TABLE ONLY public.dataset DROP CONSTRAINT fk_dataset_template_id;
ALTER TABLE ONLY public.dataset DROP CONSTRAINT fk_dataset_id;
ALTER TABLE ONLY public.dataset DROP CONSTRAINT fk_dataset_harvestingclient_id;
ALTER TABLE ONLY public.dataset DROP CONSTRAINT fk_dataset_guestbook_id;
ALTER TABLE ONLY public.dataset DROP CONSTRAINT fk_dataset_datasettype_id;
ALTER TABLE ONLY public.dataset DROP CONSTRAINT fk_dataset_citationdatedatasetfieldtype_id;
ALTER TABLE ONLY public.datafiletag DROP CONSTRAINT fk_datafiletag_datafile_id;
ALTER TABLE ONLY public.datafilecategory DROP CONSTRAINT fk_datafilecategory_dataset_id;
ALTER TABLE ONLY public.datafile DROP CONSTRAINT fk_datafile_retention_id;
ALTER TABLE ONLY public.datafile DROP CONSTRAINT fk_datafile_id;
ALTER TABLE ONLY public.datafile DROP CONSTRAINT fk_datafile_embargo_id;
ALTER TABLE ONLY public.customquestionvalue DROP CONSTRAINT fk_customquestionvalue_customquestion_id;
ALTER TABLE ONLY public.customquestionresponse DROP CONSTRAINT fk_customquestionresponse_guestbookresponse_id;
ALTER TABLE ONLY public.customquestionresponse DROP CONSTRAINT fk_customquestionresponse_customquestion_id;
ALTER TABLE ONLY public.customquestion DROP CONSTRAINT fk_customquestion_guestbook_id;
ALTER TABLE ONLY public.curationstatus DROP CONSTRAINT fk_curationstatus_datasetversion_id;
ALTER TABLE ONLY public.curationstatus DROP CONSTRAINT fk_curationstatus_authenticateduser_id;
ALTER TABLE ONLY public.controlledvocabularyvalue DROP CONSTRAINT fk_controlledvocabularyvalue_datasetfieldtype_id;
ALTER TABLE ONLY public.controlledvocabalternate DROP CONSTRAINT fk_controlledvocabalternate_datasetfieldtype_id;
ALTER TABLE ONLY public.controlledvocabalternate DROP CONSTRAINT fk_controlledvocabalternate_controlledvocabularyvalue_id;
ALTER TABLE ONLY public.confirmemaildata DROP CONSTRAINT fk_confirmemaildata_authenticateduser_id;
ALTER TABLE ONLY public.clientharvestrun DROP CONSTRAINT fk_clientharvestrun_harvestingclient_id;
ALTER TABLE ONLY public.categorymetadata DROP CONSTRAINT fk_categorymetadata_variablemetadata_id;
ALTER TABLE ONLY public.categorymetadata DROP CONSTRAINT fk_categorymetadata_category_id;
ALTER TABLE ONLY public.bannermessagetext DROP CONSTRAINT fk_bannermessagetext_bannermessage_id;
ALTER TABLE ONLY public.auxiliaryfile DROP CONSTRAINT fk_auxiliaryfile_datafile_id;
ALTER TABLE ONLY public.authenticateduserlookup DROP CONSTRAINT fk_authenticateduserlookup_authenticateduser_id;
ALTER TABLE ONLY public.apitoken DROP CONSTRAINT fk_apitoken_authenticateduser_id;
ALTER TABLE ONLY public.alternativepersistentidentifier DROP CONSTRAINT fk_alternativepersistentidentifier_dvobject_id;
ALTER TABLE ONLY public.explicitgroup_authenticateduser DROP CONSTRAINT explicitgroup_authenticateduser_containedauthenticatedusers_id;
ALTER TABLE ONLY public.datasetfield_controlledvocabularyvalue DROP CONSTRAINT dtasetfieldcontrolledvocabularyvaluecntrolledvocabularyvaluesid;
ALTER TABLE ONLY public.dataverse_citationdatasetfieldtypes DROP CONSTRAINT dataverse_citationdatasetfieldtypes_citationdatasetfieldtype_id;
DROP INDEX public.unq_dvobject_storageidentifier;
DROP INDEX public.one_draft_version_per_dataset;
DROP INDEX public.license_sortorder_id;
DROP INDEX public.index_variablerangeitem_datavariable_id;
DROP INDEX public.index_variablerange_datavariable_id;
DROP INDEX public.index_variablemetadata_filemetadata_id;
DROP INDEX public.index_variablemetadata_datavariable_id_filemetadata_id;
DROP INDEX public.index_variablemetadata_datavariable_id;
DROP INDEX public.index_variablecategory_datavariable_id;
DROP INDEX public.index_vargroup_filemetadata_id;
DROP INDEX public.index_usernotification_user_id;
DROP INDEX public.index_template_dataverse_id;
DROP INDEX public.index_summarystatistic_datavariable_id;
DROP INDEX public.index_storageuse_dvobjectcontainer_id;
DROP INDEX public.index_savedsearchfilterquery_savedsearch_id;
DROP INDEX public.index_savedsearch_definitionpoint_id;
DROP INDEX public.index_savedsearch_creator_id;
DROP INDEX public.index_roleassignmenthistory_role_id;
DROP INDEX public.index_roleassignmenthistory_role_assignment_id;
DROP INDEX public.index_roleassignmenthistory_definition_point_id;
DROP INDEX public.index_roleassignmenthistory_assignee_identifier;
DROP INDEX public.index_roleassignmenthistory_action_type;
DROP INDEX public.index_roleassignmenthistory_action_timestamp;
DROP INDEX public.index_roleassignmenthistory_action_by_identifier;
DROP INDEX public.index_roleassignment_role_id;
DROP INDEX public.index_roleassignment_definitionpoint_id;
DROP INDEX public.index_roleassignment_assigneeidentifier;
DROP INDEX public.index_persistedglobalgroup_dtype;
DROP INDEX public.index_passwordresetdata_token;
DROP INDEX public.index_passwordresetdata_builtinuser_id;
DROP INDEX public.index_metric_id;
DROP INDEX public.index_metadatablock_owner_id;
DROP INDEX public.index_metadatablock_name;
DROP INDEX public.index_makedatacountprocessstate_yearmonth;
DROP INDEX public.index_ipv6range_owner_id;
DROP INDEX public.index_ipv4range_owner_id;
DROP INDEX public.index_ingestrequest_datafile_id;
DROP INDEX public.index_ingestreport_datafile_id;
DROP INDEX public.index_harvestingdataverseconfig_harvesttype;
DROP INDEX public.index_harvestingdataverseconfig_harveststyle;
DROP INDEX public.index_harvestingdataverseconfig_harvestingurl;
DROP INDEX public.index_harvestingdataverseconfig_dataverse_id;
DROP INDEX public.index_harvestingclient_harvesttype;
DROP INDEX public.index_harvestingclient_harveststyle;
DROP INDEX public.index_harvestingclient_harvestingurl;
DROP INDEX public.index_harvestingclient_dataverse_id;
DROP INDEX public.index_guestbookresponse_guestbook_id;
DROP INDEX public.index_guestbookresponse_datasetversion_id;
DROP INDEX public.index_guestbookresponse_dataset_id_guestbook_id;
DROP INDEX public.index_guestbookresponse_dataset_id_eventtype;
DROP INDEX public.index_guestbookresponse_dataset_id;
DROP INDEX public.index_guestbookresponse_datafile_id;
DROP INDEX public.index_guestbookresponse_authenticateduser_id;
DROP INDEX public.index_foreignmetadataformatmapping_name;
DROP INDEX public.index_foreignmetadatafieldmapping_parentfieldmapping_id;
DROP INDEX public.index_foreignmetadatafieldmapping_foreignmetadataformatmapping_;
DROP INDEX public.index_foreignmetadatafieldmapping_foreignfieldxpath;
DROP INDEX public.index_filemetadata_datasetversion_id;
DROP INDEX public.index_filemetadata_datafilecategory_filemetadatas_id;
DROP INDEX public.index_filemetadata_datafilecategory_filecategories_id;
DROP INDEX public.index_filemetadata_datafile_id;
DROP INDEX public.index_externalvocabularyvalue_uri;
DROP INDEX public.index_externaltooltype_externaltool_id;
DROP INDEX public.index_externalfileuploadinprogress_taskid;
DROP INDEX public.index_explicitgroup_owner_id;
DROP INDEX public.index_explicitgroup_groupaliasinowner;
DROP INDEX public.index_dvobject_releaseuser_id;
DROP INDEX public.index_dvobject_owner_id;
DROP INDEX public.index_dvobject_dtype;
DROP INDEX public.index_dvobject_creator_id;
DROP INDEX public.index_dvobject_authority_protocol_upper_identifier;
DROP INDEX public.index_dataversetheme_dataverse_id;
DROP INDEX public.index_dataverserole_owner_id;
DROP INDEX public.index_dataverserole_name;
DROP INDEX public.index_dataverserole_alias;
DROP INDEX public.index_dataversemetadatablockfacet_metadatablock_id;
DROP INDEX public.index_dataversemetadatablockfacet_dataverse_id;
DROP INDEX public.index_dataverselinkingdataverse_linkingdataverse_id;
DROP INDEX public.index_dataverselinkingdataverse_dataverse_id;
DROP INDEX public.index_dataversefieldtypeinputlevel_required;
DROP INDEX public.index_dataversefieldtypeinputlevel_displayoncreate;
DROP INDEX public.index_dataversefieldtypeinputlevel_dataverse_id;
DROP INDEX public.index_dataversefieldtypeinputlevel_datasetfieldtype_id;
DROP INDEX public.index_dataversefeatureditem_displayorder;
DROP INDEX public.index_dataversefeatureddataverse_featureddataverse_id;
DROP INDEX public.index_dataversefeatureddataverse_displayorder;
DROP INDEX public.index_dataversefeatureddataverse_dataverse_id;
DROP INDEX public.index_dataversefacet_displayorder;
DROP INDEX public.index_dataversefacet_dataverse_id;
DROP INDEX public.index_dataversefacet_datasetfieldtype_id;
DROP INDEX public.index_dataversecontact_displayorder;
DROP INDEX public.index_dataversecontact_dataverse_id;
DROP INDEX public.index_dataversecontact_contactemail;
DROP INDEX public.index_dataverse_themeroot;
DROP INDEX public.index_dataverse_templateroot;
DROP INDEX public.index_dataverse_permissionroot;
DROP INDEX public.index_dataverse_metadatablockroot;
DROP INDEX public.index_dataverse_guestbookroot;
DROP INDEX public.index_dataverse_facetroot;
DROP INDEX public.index_dataverse_defaulttemplate_id;
DROP INDEX public.index_dataverse_defaultcontributorrole_id;
DROP INDEX public.index_dataverse_dataversetype;
DROP INDEX public.index_dataverse_alias;
DROP INDEX public.index_dataverse_affiliation;
DROP INDEX public.index_datavariable_datatable_id;
DROP INDEX public.index_datatable_datafile_id;
DROP INDEX public.index_datasetversionuser_datasetversion_id;
DROP INDEX public.index_datasetversionuser_authenticateduser_id;
DROP INDEX public.index_datasetversion_termsofuseandaccess_id;
DROP INDEX public.index_datasetversion_dataset_id;
DROP INDEX public.index_datasetmetrics_dataset_id;
DROP INDEX public.index_datasetlock_user_id;
DROP INDEX public.index_datasetlock_dataset_id;
DROP INDEX public.index_datasetlinkingdataverse_linkingdataverse_id;
DROP INDEX public.index_datasetlinkingdataverse_dataset_id;
DROP INDEX public.index_datasetfieldvalue_datasetfield_id;
DROP INDEX public.index_datasetfieldtype_parentdatasetfieldtype_id;
DROP INDEX public.index_datasetfieldtype_metadatablock_id;
DROP INDEX public.index_datasetfielddefaultvalue_parentdatasetfielddefaultvalue_i;
DROP INDEX public.index_datasetfielddefaultvalue_displayorder;
DROP INDEX public.index_datasetfielddefaultvalue_defaultvalueset_id;
DROP INDEX public.index_datasetfielddefaultvalue_datasetfield_id;
DROP INDEX public.index_datasetfieldcompoundvalue_parentdatasetfield_id;
DROP INDEX public.index_datasetfield_template_id;
DROP INDEX public.index_datasetfield_parentdatasetfieldcompoundvalue_id;
DROP INDEX public.index_datasetfield_datasetversion_id;
DROP INDEX public.index_datasetfield_datasetfieldtype_id;
DROP INDEX public.index_datasetfield_controlledvocabularyvalue_datasetfield_id;
DROP INDEX public.index_datasetfield_controlledvocabularyvalue_controlledvocabula;
DROP INDEX public.index_dataset_thumbnailfile_id;
DROP INDEX public.index_dataset_guestbook_id;
DROP INDEX public.index_datafiletag_datafile_id;
DROP INDEX public.index_datafilecategory_dataset_id;
DROP INDEX public.index_datafile_restricted;
DROP INDEX public.index_datafile_ingeststatus;
DROP INDEX public.index_datafile_contenttype;
DROP INDEX public.index_datafile_checksumvalue;
DROP INDEX public.index_customquestionresponse_guestbookresponse_id;
DROP INDEX public.index_customquestion_guestbook_id;
DROP INDEX public.index_customfieldmap_sourcetemplate;
DROP INDEX public.index_customfieldmap_sourcedatasetfield;
DROP INDEX public.index_curationstatus_datasetversion;
DROP INDEX public.index_controlledvocabularyvalue_displayorder;
DROP INDEX public.index_controlledvocabularyvalue_datasetfieldtype_id;
DROP INDEX public.index_controlledvocabalternate_datasetfieldtype_id;
DROP INDEX public.index_controlledvocabalternate_controlledvocabularyvalue_id;
DROP INDEX public.index_confirmemaildata_token;
DROP INDEX public.index_confirmemaildata_authenticateduser_id;
DROP INDEX public.index_categorymetadata_variablemetadata_id;
DROP INDEX public.index_categorymetadata_category_id;
DROP INDEX public.index_builtinuser_username;
DROP INDEX public.index_authenticationproviderrow_enabled;
DROP INDEX public.index_authenticateduser_lower_useridentifier;
DROP INDEX public.index_authenticateduser_lower_email;
DROP INDEX public.index_apitoken_authenticateduser_id;
DROP INDEX public.index_actionlogrecord_useridentifier;
DROP INDEX public.index_actionlogrecord_starttime;
DROP INDEX public.index_actionlogrecord_actiontype;
DROP INDEX public.flyway_schema_history_s_idx;
DROP INDEX public.dataverse_alias_unique_idx;
DROP INDEX public.created_requests;
ALTER TABLE ONLY public.workflowstepdata DROP CONSTRAINT workflowstepdata_pkey;
ALTER TABLE ONLY public.workflowcomment DROP CONSTRAINT workflowcomment_pkey;
ALTER TABLE ONLY public.workflow DROP CONSTRAINT workflow_pkey;
ALTER TABLE ONLY public.variablerangeitem DROP CONSTRAINT variablerangeitem_pkey;
ALTER TABLE ONLY public.variablerange DROP CONSTRAINT variablerange_pkey;
ALTER TABLE ONLY public.variablemetadata DROP CONSTRAINT variablemetadata_pkey;
ALTER TABLE ONLY public.variablecategory DROP CONSTRAINT variablecategory_pkey;
ALTER TABLE ONLY public.vargroup DROP CONSTRAINT vargroup_pkey;
ALTER TABLE ONLY public.vargroup_datavariable DROP CONSTRAINT vargroup_datavariable_pkey;
ALTER TABLE ONLY public.usernotification DROP CONSTRAINT usernotification_pkey;
ALTER TABLE ONLY public.userbannermessage DROP CONSTRAINT userbannermessage_pkey;
ALTER TABLE ONLY public.variablemetadata DROP CONSTRAINT unq_variablemetadata_0;
ALTER TABLE ONLY public.roleassignment DROP CONSTRAINT unq_roleassignment_0;
ALTER TABLE ONLY public.license DROP CONSTRAINT unq_license_1;
ALTER TABLE ONLY public.license DROP CONSTRAINT unq_license_0;
ALTER TABLE ONLY public.globustaskinprogress DROP CONSTRAINT unq_globustaskinprogress_0;
ALTER TABLE ONLY public.foreignmetadatafieldmapping DROP CONSTRAINT unq_foreignmetadatafieldmapping_0;
ALTER TABLE ONLY public.dvobject DROP CONSTRAINT unq_dvobject_1;
ALTER TABLE ONLY public.dvobject DROP CONSTRAINT unq_dvobject_0;
ALTER TABLE ONLY public.dataversefieldtypeinputlevel DROP CONSTRAINT unq_dataversefieldtypeinputlevel_0;
ALTER TABLE ONLY public.datasetversion DROP CONSTRAINT unq_datasetversion_0;
ALTER TABLE ONLY public.datasettype DROP CONSTRAINT unq_datasettype_0;
ALTER TABLE ONLY public.authenticateduserlookup DROP CONSTRAINT unq_authenticateduserlookup_0;
ALTER TABLE ONLY public.setting DROP CONSTRAINT uc_setting_name_lang;
ALTER TABLE ONLY public.termsofuseandaccess DROP CONSTRAINT termsofuseandaccess_pkey;
ALTER TABLE ONLY public.template DROP CONSTRAINT template_pkey;
ALTER TABLE ONLY public.summarystatistic DROP CONSTRAINT summarystatistic_pkey;
ALTER TABLE ONLY public.storageuse DROP CONSTRAINT storageuse_pkey;
ALTER TABLE ONLY public.storagesite DROP CONSTRAINT storagesite_pkey;
ALTER TABLE ONLY public.storagequota DROP CONSTRAINT storagequota_pkey;
ALTER TABLE ONLY public.shibgroup DROP CONSTRAINT shibgroup_pkey;
ALTER TABLE ONLY public.sequence DROP CONSTRAINT sequence_pkey;
ALTER TABLE ONLY public.savedsearchfilterquery DROP CONSTRAINT savedsearchfilterquery_pkey;
ALTER TABLE ONLY public.savedsearch DROP CONSTRAINT savedsearch_pkey;
ALTER TABLE ONLY public.roleassignmenthistory DROP CONSTRAINT roleassignmenthistory_pkey;
ALTER TABLE ONLY public.roleassignment DROP CONSTRAINT roleassignment_pkey;
ALTER TABLE ONLY public.retention DROP CONSTRAINT retention_pkey;
ALTER TABLE ONLY public.persistedglobalgroup DROP CONSTRAINT persistedglobalgroup_pkey;
ALTER TABLE ONLY public.persistedglobalgroup DROP CONSTRAINT persistedglobalgroup_persistedgroupalias_key;
ALTER TABLE ONLY public.pendingworkflowinvocation DROP CONSTRAINT pendingworkflowinvocation_pkey;
ALTER TABLE ONLY public.passwordresetdata DROP CONSTRAINT passwordresetdata_pkey;
ALTER TABLE ONLY public.authenticateduser DROP CONSTRAINT orcid_unique;
ALTER TABLE ONLY public.oauth2tokendata DROP CONSTRAINT oauth2tokendata_pkey;
ALTER TABLE ONLY public.oaiset DROP CONSTRAINT oaiset_spec_key;
ALTER TABLE ONLY public.oaiset DROP CONSTRAINT oaiset_pkey;
ALTER TABLE ONLY public.oairecord DROP CONSTRAINT oairecord_pkey;
ALTER TABLE ONLY public.metric DROP CONSTRAINT metric_pkey;
ALTER TABLE ONLY public.metadatablock DROP CONSTRAINT metadatablock_pkey;
ALTER TABLE ONLY public.makedatacountprocessstate DROP CONSTRAINT makedatacountprocessstate_pkey;
ALTER TABLE ONLY public.license DROP CONSTRAINT license_pkey;
ALTER TABLE ONLY public.ipv6range DROP CONSTRAINT ipv6range_pkey;
ALTER TABLE ONLY public.ipv4range DROP CONSTRAINT ipv4range_pkey;
ALTER TABLE ONLY public.ingestrequest DROP CONSTRAINT ingestrequest_pkey;
ALTER TABLE ONLY public.ingestreport DROP CONSTRAINT ingestreport_pkey;
ALTER TABLE ONLY public.harvestingdataverseconfig DROP CONSTRAINT harvestingdataverseconfig_pkey;
ALTER TABLE ONLY public.harvestingclient DROP CONSTRAINT harvestingclient_pkey;
ALTER TABLE ONLY public.harvestingclient DROP CONSTRAINT harvestingclient_name_key;
ALTER TABLE ONLY public.guestbookresponse DROP CONSTRAINT guestbookresponse_pkey;
ALTER TABLE ONLY public.guestbook DROP CONSTRAINT guestbook_pkey;
ALTER TABLE ONLY public.globustaskinprogress DROP CONSTRAINT globustaskinprogress_taskid_key;
ALTER TABLE ONLY public.globustaskinprogress DROP CONSTRAINT globustaskinprogress_pkey;
ALTER TABLE ONLY public.foreignmetadataformatmapping DROP CONSTRAINT foreignmetadataformatmapping_pkey;
ALTER TABLE ONLY public.foreignmetadatafieldmapping DROP CONSTRAINT foreignmetadatafieldmapping_pkey;
ALTER TABLE ONLY public.flyway_schema_history DROP CONSTRAINT flyway_schema_history_pk;
ALTER TABLE ONLY public.filemetadata DROP CONSTRAINT filemetadata_pkey;
ALTER TABLE ONLY public.filemetadata_datafilecategory DROP CONSTRAINT filemetadata_datafilecategory_pkey;
ALTER TABLE ONLY public.fileaccessrequests DROP CONSTRAINT fileaccessrequests_pkey;
ALTER TABLE ONLY public.externalvocabularyvalue DROP CONSTRAINT externalvocabularyvalue_pkey;
ALTER TABLE ONLY public.externalvocabularyvalue DROP CONSTRAINT externalvocabularvalue_uri_key;
ALTER TABLE ONLY public.externaltooltype DROP CONSTRAINT externaltooltype_pkey;
ALTER TABLE ONLY public.externaltool DROP CONSTRAINT externaltool_pkey;
ALTER TABLE ONLY public.externalfileuploadinprogress DROP CONSTRAINT externalfileuploadinprogress_pkey;
ALTER TABLE ONLY public.explicitgroup DROP CONSTRAINT explicitgroup_pkey;
ALTER TABLE ONLY public.explicitgroup DROP CONSTRAINT explicitgroup_groupalias_key;
ALTER TABLE ONLY public.explicitgroup_explicitgroup DROP CONSTRAINT explicitgroup_explicitgroup_pkey;
ALTER TABLE ONLY public.explicitgroup_authenticateduser DROP CONSTRAINT explicitgroup_authenticateduser_pkey;
ALTER TABLE ONLY public.embargo DROP CONSTRAINT embargo_pkey;
ALTER TABLE ONLY public.dvobject DROP CONSTRAINT dvobject_pkey;
ALTER TABLE ONLY public.defaultvalueset DROP CONSTRAINT defaultvalueset_pkey;
ALTER TABLE ONLY public.dataversetheme DROP CONSTRAINT dataversetheme_pkey;
ALTER TABLE ONLY public.dataversesubjects DROP CONSTRAINT dataversesubjects_pkey;
ALTER TABLE ONLY public.dataverserole DROP CONSTRAINT dataverserole_pkey;
ALTER TABLE ONLY public.dataverserole DROP CONSTRAINT dataverserole_alias_key;
ALTER TABLE ONLY public.dataversemetadatablockfacet DROP CONSTRAINT dataversemetadatablockfacet_pkey;
ALTER TABLE ONLY public.dataverselinkingdataverse DROP CONSTRAINT dataverselinkingdataverse_pkey;
ALTER TABLE ONLY public.dataversefieldtypeinputlevel DROP CONSTRAINT dataversefieldtypeinputlevel_pkey;
ALTER TABLE ONLY public.dataversefeatureditem DROP CONSTRAINT dataversefeatureditem_pkey;
ALTER TABLE ONLY public.dataversefeatureddataverse DROP CONSTRAINT dataversefeatureddataverse_pkey;
ALTER TABLE ONLY public.dataversefacet DROP CONSTRAINT dataversefacet_pkey;
ALTER TABLE ONLY public.dataversecontact DROP CONSTRAINT dataversecontact_pkey;
ALTER TABLE ONLY public.dataverse DROP CONSTRAINT dataverse_pkey;
ALTER TABLE ONLY public.dataverse_metadatablock DROP CONSTRAINT dataverse_metadatablock_pkey;
ALTER TABLE ONLY public.dataverse_citationdatasetfieldtypes DROP CONSTRAINT dataverse_citationdatasetfieldtypes_pkey;
ALTER TABLE ONLY public.dataverse DROP CONSTRAINT dataverse_alias_key;
ALTER TABLE ONLY public.datavariable DROP CONSTRAINT datavariable_pkey;
ALTER TABLE ONLY public.datatable DROP CONSTRAINT datatable_pkey;
ALTER TABLE ONLY public.datasetversionuser DROP CONSTRAINT datasetversionuser_pkey;
ALTER TABLE ONLY public.datasetversion DROP CONSTRAINT datasetversion_pkey;
ALTER TABLE ONLY public.datasettype DROP CONSTRAINT datasettype_pkey;
ALTER TABLE ONLY public.datasettype_metadatablock DROP CONSTRAINT datasettype_metadatablock_pkey;
ALTER TABLE ONLY public.datasettype_license DROP CONSTRAINT datasettype_license_pkey;
ALTER TABLE ONLY public.datasetmetrics DROP CONSTRAINT datasetmetrics_pkey;
ALTER TABLE ONLY public.datasetlock DROP CONSTRAINT datasetlock_pkey;
ALTER TABLE ONLY public.datasetlinkingdataverse DROP CONSTRAINT datasetlinkingdataverse_pkey;
ALTER TABLE ONLY public.datasetfieldvalue DROP CONSTRAINT datasetfieldvalue_pkey;
ALTER TABLE ONLY public.datasetfieldtype DROP CONSTRAINT datasetfieldtype_pkey;
ALTER TABLE ONLY public.datasetfieldtype DROP CONSTRAINT datasetfieldtype_name_key;
ALTER TABLE ONLY public.datasetfielddefaultvalue DROP CONSTRAINT datasetfielddefaultvalue_pkey;
ALTER TABLE ONLY public.datasetfieldcompoundvalue DROP CONSTRAINT datasetfieldcompoundvalue_pkey;
ALTER TABLE ONLY public.datasetfield DROP CONSTRAINT datasetfield_pkey;
ALTER TABLE ONLY public.datasetfield_controlledvocabularyvalue DROP CONSTRAINT datasetfield_controlledvocabularyvalue_pkey;
ALTER TABLE ONLY public.datasetexternalcitations DROP CONSTRAINT datasetexternalcitations_pkey;
ALTER TABLE ONLY public.dataset DROP CONSTRAINT dataset_pkey;
ALTER TABLE ONLY public.datafiletag DROP CONSTRAINT datafiletag_pkey;
ALTER TABLE ONLY public.datafilecategory DROP CONSTRAINT datafilecategory_pkey;
ALTER TABLE ONLY public.datafile DROP CONSTRAINT datafile_pkey;
ALTER TABLE ONLY public.customquestionvalue DROP CONSTRAINT customquestionvalue_pkey;
ALTER TABLE ONLY public.customquestionresponse DROP CONSTRAINT customquestionresponse_pkey;
ALTER TABLE ONLY public.customquestion DROP CONSTRAINT customquestion_pkey;
ALTER TABLE ONLY public.customfieldmap DROP CONSTRAINT customfieldmap_pkey;
ALTER TABLE ONLY public.curationstatus DROP CONSTRAINT curationstatus_pkey;
ALTER TABLE ONLY public.controlledvocabularyvalue DROP CONSTRAINT controlledvocabularyvalue_pkey;
ALTER TABLE ONLY public.controlledvocabalternate DROP CONSTRAINT controlledvocabalternate_pkey;
ALTER TABLE ONLY public.confirmemaildata DROP CONSTRAINT confirmemaildata_pkey;
ALTER TABLE ONLY public.confirmemaildata DROP CONSTRAINT confirmemaildata_authenticateduser_id_key;
ALTER TABLE ONLY public.clientharvestrun DROP CONSTRAINT clientharvestrun_pkey;
ALTER TABLE ONLY public.categorymetadata DROP CONSTRAINT categorymetadata_pkey;
ALTER TABLE ONLY public.builtinuser DROP CONSTRAINT builtinuser_username_key;
ALTER TABLE ONLY public.builtinuser DROP CONSTRAINT builtinuser_pkey;
ALTER TABLE ONLY public.bannermessagetext DROP CONSTRAINT bannermessagetext_pkey;
ALTER TABLE ONLY public.bannermessage DROP CONSTRAINT bannermessage_pkey;
ALTER TABLE ONLY public.auxiliaryfile DROP CONSTRAINT auxiliaryfile_pkey;
ALTER TABLE ONLY public.authenticationproviderrow DROP CONSTRAINT authenticationproviderrow_pkey;
ALTER TABLE ONLY public.authenticateduserlookup DROP CONSTRAINT authenticateduserlookup_pkey;
ALTER TABLE ONLY public.authenticateduserlookup DROP CONSTRAINT authenticateduserlookup_authenticateduser_id_key;
ALTER TABLE ONLY public.authenticateduser DROP CONSTRAINT authenticateduser_useridentifier_key;
ALTER TABLE ONLY public.authenticateduser DROP CONSTRAINT authenticateduser_pkey;
ALTER TABLE ONLY public.authenticateduser DROP CONSTRAINT authenticateduser_email_key;
ALTER TABLE ONLY public.apitoken DROP CONSTRAINT apitoken_tokenstring_key;
ALTER TABLE ONLY public.apitoken DROP CONSTRAINT apitoken_pkey;
ALTER TABLE ONLY public.alternativepersistentidentifier DROP CONSTRAINT alternativepersistentidentifier_pkey;
ALTER TABLE ONLY public.actionlogrecord DROP CONSTRAINT actionlogrecord_pkey;
ALTER TABLE public.workflowstepdata ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.workflowcomment ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.workflow ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.variablerangeitem ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.variablerange ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.variablemetadata ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.variablecategory ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.vargroup ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.usernotification ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.userbannermessage ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.termsofuseandaccess ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.template ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.summarystatistic ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.storageuse ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.storagesite ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.storagequota ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.shibgroup ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.setting ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.savedsearchfilterquery ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.savedsearch ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.roleassignmenthistory ALTER COLUMN entry_id DROP DEFAULT;
ALTER TABLE public.roleassignment ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.retention ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.passwordresetdata ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.oauth2tokendata ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.oaiset ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.oairecord ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.metric ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.metadatablock ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.makedatacountprocessstate ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.license ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.ingestrequest ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.ingestreport ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.harvestingclient ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.guestbookresponse ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.guestbook ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.globustaskinprogress ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.foreignmetadataformatmapping ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.foreignmetadatafieldmapping ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.filemetadata ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.fileaccessrequests ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.externalvocabularyvalue ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.externaltooltype ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.externaltool ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.externalfileuploadinprogress ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.explicitgroup ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.embargo ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.dvobject ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.defaultvalueset ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.dataversetheme ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.dataverserole ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.dataversemetadatablockfacet ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.dataverselinkingdataverse ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.dataversefieldtypeinputlevel ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.dataversefeatureditem ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.dataversefeatureddataverse ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.dataversefacet ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.dataversecontact ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.datavariable ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.datatable ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.datasetversionuser ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.datasetversion ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.datasettype ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.datasetmetrics ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.datasetlock ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.datasetlinkingdataverse ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.datasetfieldvalue ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.datasetfieldtype ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.datasetfielddefaultvalue ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.datasetfieldcompoundvalue ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.datasetfield ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.datafiletag ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.datafilecategory ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.customquestionvalue ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.customquestionresponse ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.customquestion ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.customfieldmap ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.curationstatus ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.controlledvocabularyvalue ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.controlledvocabalternate ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.confirmemaildata ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.clientharvestrun ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.categorymetadata ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.builtinuser ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.bannermessagetext ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.bannermessage ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auxiliaryfile ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.authenticateduserlookup ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.authenticateduser ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.apitoken ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.alternativepersistentidentifier ALTER COLUMN id DROP DEFAULT;
DROP TABLE public.workflowstepdata_stepsettings;
DROP TABLE public.workflowstepdata_stepparameters;
DROP SEQUENCE public.workflowstepdata_id_seq;
DROP TABLE public.workflowstepdata;
DROP SEQUENCE public.workflowcomment_id_seq;
DROP TABLE public.workflowcomment;
DROP SEQUENCE public.workflow_id_seq;
DROP TABLE public.workflow;
DROP SEQUENCE public.variablerangeitem_id_seq;
DROP TABLE public.variablerangeitem;
DROP SEQUENCE public.variablerange_id_seq;
DROP TABLE public.variablerange;
DROP SEQUENCE public.variablemetadata_id_seq;
DROP TABLE public.variablemetadata;
DROP SEQUENCE public.variablecategory_id_seq;
DROP TABLE public.variablecategory;
DROP SEQUENCE public.vargroup_id_seq;
DROP TABLE public.vargroup_datavariable;
DROP TABLE public.vargroup;
DROP SEQUENCE public.usernotification_id_seq;
DROP TABLE public.usernotification;
DROP SEQUENCE public.userbannermessage_id_seq;
DROP TABLE public.userbannermessage;
DROP SEQUENCE public.termsofuseandaccess_id_seq;
DROP TABLE public.termsofuseandaccess;
DROP SEQUENCE public.template_id_seq;
DROP TABLE public.template;
DROP SEQUENCE public.summarystatistic_id_seq;
DROP TABLE public.summarystatistic;
DROP SEQUENCE public.storageuse_id_seq;
DROP TABLE public.storageuse;
DROP SEQUENCE public.storagesite_id_seq;
DROP TABLE public.storagesite;
DROP SEQUENCE public.storagequota_id_seq;
DROP TABLE public.storagequota;
DROP SEQUENCE public.shibgroup_id_seq;
DROP TABLE public.shibgroup;
DROP SEQUENCE public.setting_id_seq;
DROP TABLE public.setting;
DROP TABLE public.sequence;
DROP SEQUENCE public.savedsearchfilterquery_id_seq;
DROP TABLE public.savedsearchfilterquery;
DROP SEQUENCE public.savedsearch_id_seq;
DROP TABLE public.savedsearch;
DROP SEQUENCE public.roleassignmenthistory_entry_id_seq;
DROP TABLE public.roleassignmenthistory;
DROP SEQUENCE public.roleassignment_id_seq;
DROP TABLE public.roleassignment;
DROP SEQUENCE public.retention_id_seq;
DROP TABLE public.retention;
DROP TABLE public.persistedglobalgroup;
DROP TABLE public.pendingworkflowinvocation_localdata;
DROP TABLE public.pendingworkflowinvocation;
DROP SEQUENCE public.passwordresetdata_id_seq;
DROP TABLE public.passwordresetdata;
DROP SEQUENCE public.oauth2tokendata_id_seq;
DROP TABLE public.oauth2tokendata;
DROP SEQUENCE public.oaiset_id_seq;
DROP TABLE public.oaiset;
DROP SEQUENCE public.oairecord_id_seq;
DROP TABLE public.oairecord;
DROP SEQUENCE public.metric_id_seq;
DROP TABLE public.metric;
DROP SEQUENCE public.metadatablock_id_seq;
DROP TABLE public.metadatablock;
DROP SEQUENCE public.makedatacountprocessstate_id_seq;
DROP TABLE public.makedatacountprocessstate;
DROP SEQUENCE public.license_id_seq;
DROP TABLE public.license;
DROP TABLE public.ipv6range;
DROP TABLE public.ipv4range;
DROP SEQUENCE public.ingestrequest_id_seq;
DROP TABLE public.ingestrequest;
DROP SEQUENCE public.ingestreport_id_seq;
DROP TABLE public.ingestreport;
DROP TABLE public.harvestingdataverseconfig;
DROP SEQUENCE public.harvestingclient_id_seq;
DROP TABLE public.harvestingclient;
DROP SEQUENCE public.guestbookresponse_id_seq;
DROP TABLE public.guestbookresponse;
DROP SEQUENCE public.guestbook_id_seq;
DROP TABLE public.guestbook;
DROP SEQUENCE public.globustaskinprogress_id_seq;
DROP TABLE public.globustaskinprogress;
DROP SEQUENCE public.foreignmetadataformatmapping_id_seq;
DROP TABLE public.foreignmetadataformatmapping;
DROP SEQUENCE public.foreignmetadatafieldmapping_id_seq;
DROP TABLE public.foreignmetadatafieldmapping;
DROP TABLE public.flyway_schema_history;
DROP SEQUENCE public.filemetadata_id_seq;
DROP TABLE public.filemetadata_datafilecategory;
DROP TABLE public.filemetadata;
DROP SEQUENCE public.fileaccessrequests_id_seq;
DROP TABLE public.fileaccessrequests;
DROP SEQUENCE public.externalvocabularyvalue_id_seq;
DROP TABLE public.externalvocabularyvalue;
DROP SEQUENCE public.externaltooltype_id_seq;
DROP TABLE public.externaltooltype;
DROP SEQUENCE public.externaltool_id_seq;
DROP TABLE public.externaltool;
DROP SEQUENCE public.externalfileuploadinprogress_id_seq;
DROP TABLE public.externalfileuploadinprogress;
DROP SEQUENCE public.explicitgroup_id_seq;
DROP TABLE public.explicitgroup_explicitgroup;
DROP TABLE public.explicitgroup_containedroleassignees;
DROP TABLE public.explicitgroup_authenticateduser;
DROP TABLE public.explicitgroup;
DROP SEQUENCE public.embargo_id_seq;
DROP TABLE public.embargo;
DROP SEQUENCE public.dvobject_id_seq;
DROP TABLE public.dvobject;
DROP SEQUENCE public.defaultvalueset_id_seq;
DROP TABLE public.defaultvalueset;
DROP SEQUENCE public.dataversetheme_id_seq;
DROP TABLE public.dataversetheme;
DROP TABLE public.dataversesubjects;
DROP SEQUENCE public.dataverserole_id_seq;
DROP TABLE public.dataverserole;
DROP SEQUENCE public.dataversemetadatablockfacet_id_seq;
DROP TABLE public.dataversemetadatablockfacet;
DROP SEQUENCE public.dataverselinkingdataverse_id_seq;
DROP TABLE public.dataverselinkingdataverse;
DROP SEQUENCE public.dataversefieldtypeinputlevel_id_seq;
DROP TABLE public.dataversefieldtypeinputlevel;
DROP SEQUENCE public.dataversefeatureditem_id_seq;
DROP TABLE public.dataversefeatureditem;
DROP SEQUENCE public.dataversefeatureddataverse_id_seq;
DROP TABLE public.dataversefeatureddataverse;
DROP SEQUENCE public.dataversefacet_id_seq;
DROP TABLE public.dataversefacet;
DROP SEQUENCE public.dataversecontact_id_seq;
DROP TABLE public.dataversecontact;
DROP TABLE public.dataverse_metadatablock;
DROP TABLE public.dataverse_citationdatasetfieldtypes;
DROP TABLE public.dataverse;
DROP SEQUENCE public.datavariable_id_seq;
DROP TABLE public.datavariable;
DROP SEQUENCE public.datatable_id_seq;
DROP TABLE public.datatable;
DROP SEQUENCE public.datasetversionuser_id_seq;
DROP TABLE public.datasetversionuser;
DROP SEQUENCE public.datasetversion_id_seq;
DROP TABLE public.datasetversion;
DROP TABLE public.datasettype_metadatablock;
DROP TABLE public.datasettype_license;
DROP SEQUENCE public.datasettype_id_seq;
DROP TABLE public.datasettype;
DROP SEQUENCE public.datasetmetrics_id_seq;
DROP TABLE public.datasetmetrics;
DROP SEQUENCE public.datasetlock_id_seq;
DROP TABLE public.datasetlock;
DROP SEQUENCE public.datasetlinkingdataverse_id_seq;
DROP TABLE public.datasetlinkingdataverse;
DROP SEQUENCE public.datasetfieldvalue_id_seq;
DROP TABLE public.datasetfieldvalue;
DROP SEQUENCE public.datasetfieldtype_id_seq;
DROP TABLE public.datasetfieldtype;
DROP SEQUENCE public.datasetfielddefaultvalue_id_seq;
DROP TABLE public.datasetfielddefaultvalue;
DROP SEQUENCE public.datasetfieldcompoundvalue_id_seq;
DROP TABLE public.datasetfieldcompoundvalue;
DROP SEQUENCE public.datasetfield_id_seq;
DROP TABLE public.datasetfield_controlledvocabularyvalue;
DROP TABLE public.datasetfield;
DROP TABLE public.datasetexternalcitations;
DROP TABLE public.dataset;
DROP SEQUENCE public.datafiletag_id_seq;
DROP TABLE public.datafiletag;
DROP SEQUENCE public.datafilecategory_id_seq;
DROP TABLE public.datafilecategory;
DROP TABLE public.datafile;
DROP TABLE public.customzipservicerequest;
DROP SEQUENCE public.customquestionvalue_id_seq;
DROP TABLE public.customquestionvalue;
DROP SEQUENCE public.customquestionresponse_id_seq;
DROP TABLE public.customquestionresponse;
DROP SEQUENCE public.customquestion_id_seq;
DROP TABLE public.customquestion;
DROP SEQUENCE public.customfieldmap_id_seq;
DROP TABLE public.customfieldmap;
DROP SEQUENCE public.curationstatus_id_seq;
DROP TABLE public.curationstatus;
DROP SEQUENCE public.controlledvocabularyvalue_id_seq;
DROP TABLE public.controlledvocabularyvalue;
DROP SEQUENCE public.controlledvocabalternate_id_seq;
DROP TABLE public.controlledvocabalternate;
DROP SEQUENCE public.confirmemaildata_id_seq;
DROP TABLE public.confirmemaildata;
DROP SEQUENCE public.clientharvestrun_id_seq;
DROP TABLE public.clientharvestrun;
DROP SEQUENCE public.categorymetadata_id_seq;
DROP TABLE public.categorymetadata;
DROP SEQUENCE public.builtinuser_id_seq;
DROP TABLE public.builtinuser;
DROP SEQUENCE public.bannermessagetext_id_seq;
DROP TABLE public.bannermessagetext;
DROP SEQUENCE public.bannermessage_id_seq;
DROP TABLE public.bannermessage;
DROP SEQUENCE public.auxiliaryfile_id_seq;
DROP TABLE public.auxiliaryfile;
DROP TABLE public.authenticationproviderrow;
DROP SEQUENCE public.authenticateduserlookup_id_seq;
DROP TABLE public.authenticateduserlookup;
DROP SEQUENCE public.authenticateduser_id_seq;
DROP TABLE public.authenticateduser;
DROP SEQUENCE public.apitoken_id_seq;
DROP TABLE public.apitoken;
DROP SEQUENCE public.alternativepersistentidentifier_id_seq;
DROP TABLE public.alternativepersistentidentifier;
DROP TABLE public.actionlogrecord;
DROP FUNCTION public.truncate_tables();
DROP FUNCTION public.estimateguestbookresponsetablesize();
--
-- Name: estimateguestbookresponsetablesize(); Type: FUNCTION; Schema: public; Owner: dvnuser
--

CREATE FUNCTION public.estimateguestbookresponsetablesize() RETURNS bigint
    LANGUAGE plpgsql IMMUTABLE
    AS $$
DECLARE
  estimatedsize bigint;
BEGIN
  SELECT CASE WHEN relpages<10 THEN 0
              ELSE ((reltuples / relpages)
               * (pg_relation_size('public.guestbookresponse') / current_setting('block_size')::int))::bigint
               * (SELECT CASE WHEN ((select count(*) from pg_stats where tablename='guestbookresponse') = 0 
                   OR (select array_position(most_common_vals::text::text[], 'AccessRequest') 
                       FROM pg_stats WHERE tablename='guestbookresponse' AND attname='eventtype') IS NULL) THEN 1
                   ELSE 1 - (SELECT (most_common_freqs::text::text[])[array_position(most_common_vals::text::text[], 'AccessRequest')]::float
                       FROM pg_stats WHERE tablename='guestbookresponse' and attname='eventtype') END)
         END
     FROM   pg_class
     WHERE  oid = 'public.guestbookresponse'::regclass INTO estimatedsize;

     if estimatedsize = 0 then
     SELECT COUNT(id) FROM guestbookresponse WHERE eventtype!= 'AccessRequest' INTO estimatedsize;
     END if;   

  RETURN estimatedsize;
END;
$$;


ALTER FUNCTION public.estimateguestbookresponsetablesize() OWNER TO dvnuser;

--
-- Name: truncate_tables(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.truncate_tables() RETURNS void
    LANGUAGE sql
    AS $_$
DO $$ DECLARE
table_name text;
BEGIN
FOR table_name IN (SELECT tablename FROM pg_tables WHERE schemaname='public') LOOP
        EXECUTE 'TRUNCATE TABLE public."' || table_name || '" CASCADE;';
END LOOP;
END $$;
$_$;


ALTER FUNCTION public.truncate_tables() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: actionlogrecord; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.actionlogrecord (
    id character varying(36) NOT NULL,
    actionresult character varying(255),
    actionsubtype character varying(255),
    actiontype character varying(255),
    endtime timestamp without time zone,
    info text,
    starttime timestamp without time zone,
    useridentifier character varying(255)
);


ALTER TABLE public.actionlogrecord OWNER TO dvnuser;

--
-- Name: alternativepersistentidentifier; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.alternativepersistentidentifier (
    id integer NOT NULL,
    authority character varying(255),
    globalidcreatetime timestamp without time zone,
    identifier character varying(255),
    identifierregistered boolean,
    protocol character varying(255),
    storagelocationdesignator boolean,
    dvobject_id bigint NOT NULL
);


ALTER TABLE public.alternativepersistentidentifier OWNER TO dvnuser;

--
-- Name: alternativepersistentidentifier_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.alternativepersistentidentifier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alternativepersistentidentifier_id_seq OWNER TO dvnuser;

--
-- Name: alternativepersistentidentifier_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.alternativepersistentidentifier_id_seq OWNED BY public.alternativepersistentidentifier.id;


--
-- Name: apitoken; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.apitoken (
    id integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    disabled boolean NOT NULL,
    expiretime timestamp without time zone NOT NULL,
    tokenstring character varying(255) NOT NULL,
    authenticateduser_id bigint NOT NULL
);


ALTER TABLE public.apitoken OWNER TO dvnuser;

--
-- Name: apitoken_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.apitoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.apitoken_id_seq OWNER TO dvnuser;

--
-- Name: apitoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.apitoken_id_seq OWNED BY public.apitoken.id;


--
-- Name: authenticateduser; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.authenticateduser (
    id integer NOT NULL,
    affiliation character varying(255),
    authenticatedorcid character varying(45),
    createdtime timestamp without time zone NOT NULL,
    deactivated boolean NOT NULL,
    deactivatedtime timestamp without time zone,
    email character varying(255) NOT NULL,
    emailconfirmed timestamp without time zone,
    firstname character varying(255),
    lastapiusetime timestamp without time zone,
    lastlogintime timestamp without time zone,
    lastname character varying(255),
    mutedemails text,
    mutednotifications text,
    "position" character varying(255),
    ratelimittier integer NOT NULL,
    superuser boolean,
    useridentifier character varying(255) NOT NULL
);


ALTER TABLE public.authenticateduser OWNER TO dvnuser;

--
-- Name: authenticateduser_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.authenticateduser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.authenticateduser_id_seq OWNER TO dvnuser;

--
-- Name: authenticateduser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.authenticateduser_id_seq OWNED BY public.authenticateduser.id;


--
-- Name: authenticateduserlookup; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.authenticateduserlookup (
    id integer NOT NULL,
    authenticationproviderid character varying(255),
    persistentuserid character varying(255),
    authenticateduser_id bigint NOT NULL
);


ALTER TABLE public.authenticateduserlookup OWNER TO dvnuser;

--
-- Name: authenticateduserlookup_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.authenticateduserlookup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.authenticateduserlookup_id_seq OWNER TO dvnuser;

--
-- Name: authenticateduserlookup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.authenticateduserlookup_id_seq OWNED BY public.authenticateduserlookup.id;


--
-- Name: authenticationproviderrow; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.authenticationproviderrow (
    id character varying(255) NOT NULL,
    enabled boolean,
    factoryalias character varying(255),
    factorydata text,
    subtitle character varying(255),
    title character varying(255)
);


ALTER TABLE public.authenticationproviderrow OWNER TO dvnuser;

--
-- Name: auxiliaryfile; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.auxiliaryfile (
    id integer NOT NULL,
    checksum character varying(255),
    contenttype character varying(255),
    filesize bigint,
    formattag character varying(255),
    formatversion character varying(255),
    ispublic boolean,
    origin character varying(255),
    type character varying(255),
    datafile_id bigint NOT NULL
);


ALTER TABLE public.auxiliaryfile OWNER TO dvnuser;

--
-- Name: auxiliaryfile_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.auxiliaryfile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auxiliaryfile_id_seq OWNER TO dvnuser;

--
-- Name: auxiliaryfile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.auxiliaryfile_id_seq OWNED BY public.auxiliaryfile.id;


--
-- Name: bannermessage; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.bannermessage (
    id integer NOT NULL,
    active boolean,
    dismissiblebyuser boolean
);


ALTER TABLE public.bannermessage OWNER TO dvnuser;

--
-- Name: bannermessage_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.bannermessage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bannermessage_id_seq OWNER TO dvnuser;

--
-- Name: bannermessage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.bannermessage_id_seq OWNED BY public.bannermessage.id;


--
-- Name: bannermessagetext; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.bannermessagetext (
    id integer NOT NULL,
    lang text,
    message text,
    bannermessage_id bigint NOT NULL
);


ALTER TABLE public.bannermessagetext OWNER TO dvnuser;

--
-- Name: bannermessagetext_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.bannermessagetext_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bannermessagetext_id_seq OWNER TO dvnuser;

--
-- Name: bannermessagetext_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.bannermessagetext_id_seq OWNED BY public.bannermessagetext.id;


--
-- Name: builtinuser; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.builtinuser (
    id integer NOT NULL,
    encryptedpassword character varying(255),
    passwordencryptionversion integer,
    username character varying(255) NOT NULL
);


ALTER TABLE public.builtinuser OWNER TO dvnuser;

--
-- Name: builtinuser_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.builtinuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.builtinuser_id_seq OWNER TO dvnuser;

--
-- Name: builtinuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.builtinuser_id_seq OWNED BY public.builtinuser.id;


--
-- Name: categorymetadata; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.categorymetadata (
    id integer NOT NULL,
    wfreq double precision,
    category_id bigint NOT NULL,
    variablemetadata_id bigint NOT NULL
);


ALTER TABLE public.categorymetadata OWNER TO dvnuser;

--
-- Name: categorymetadata_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.categorymetadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categorymetadata_id_seq OWNER TO dvnuser;

--
-- Name: categorymetadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.categorymetadata_id_seq OWNED BY public.categorymetadata.id;


--
-- Name: clientharvestrun; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.clientharvestrun (
    id integer NOT NULL,
    deleteddatasetcount bigint,
    faileddatasetcount bigint,
    finishtime timestamp without time zone,
    harvestresult integer,
    harvesteddatasetcount bigint,
    starttime timestamp without time zone,
    harvestingclient_id bigint NOT NULL
);


ALTER TABLE public.clientharvestrun OWNER TO dvnuser;

--
-- Name: clientharvestrun_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.clientharvestrun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clientharvestrun_id_seq OWNER TO dvnuser;

--
-- Name: clientharvestrun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.clientharvestrun_id_seq OWNED BY public.clientharvestrun.id;


--
-- Name: confirmemaildata; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.confirmemaildata (
    id integer NOT NULL,
    created timestamp without time zone NOT NULL,
    expires timestamp without time zone NOT NULL,
    token character varying(255),
    authenticateduser_id bigint NOT NULL
);


ALTER TABLE public.confirmemaildata OWNER TO dvnuser;

--
-- Name: confirmemaildata_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.confirmemaildata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.confirmemaildata_id_seq OWNER TO dvnuser;

--
-- Name: confirmemaildata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.confirmemaildata_id_seq OWNED BY public.confirmemaildata.id;


--
-- Name: controlledvocabalternate; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.controlledvocabalternate (
    id integer NOT NULL,
    strvalue text,
    controlledvocabularyvalue_id bigint NOT NULL,
    datasetfieldtype_id bigint NOT NULL
);


ALTER TABLE public.controlledvocabalternate OWNER TO dvnuser;

--
-- Name: controlledvocabalternate_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.controlledvocabalternate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.controlledvocabalternate_id_seq OWNER TO dvnuser;

--
-- Name: controlledvocabalternate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.controlledvocabalternate_id_seq OWNED BY public.controlledvocabalternate.id;


--
-- Name: controlledvocabularyvalue; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.controlledvocabularyvalue (
    id integer NOT NULL,
    displayorder integer,
    identifier character varying(255),
    strvalue text,
    datasetfieldtype_id bigint
);


ALTER TABLE public.controlledvocabularyvalue OWNER TO dvnuser;

--
-- Name: controlledvocabularyvalue_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.controlledvocabularyvalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.controlledvocabularyvalue_id_seq OWNER TO dvnuser;

--
-- Name: controlledvocabularyvalue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.controlledvocabularyvalue_id_seq OWNED BY public.controlledvocabularyvalue.id;


--
-- Name: curationstatus; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.curationstatus (
    id integer NOT NULL,
    createtime timestamp without time zone,
    label character varying(255),
    authenticateduser_id bigint,
    datasetversion_id bigint NOT NULL
);


ALTER TABLE public.curationstatus OWNER TO dvnuser;

--
-- Name: curationstatus_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.curationstatus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.curationstatus_id_seq OWNER TO dvnuser;

--
-- Name: curationstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.curationstatus_id_seq OWNED BY public.curationstatus.id;


--
-- Name: customfieldmap; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.customfieldmap (
    id integer NOT NULL,
    sourcedatasetfield character varying(255),
    sourcetemplate character varying(255),
    targetdatasetfield character varying(255)
);


ALTER TABLE public.customfieldmap OWNER TO dvnuser;

--
-- Name: customfieldmap_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.customfieldmap_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customfieldmap_id_seq OWNER TO dvnuser;

--
-- Name: customfieldmap_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.customfieldmap_id_seq OWNED BY public.customfieldmap.id;


--
-- Name: customquestion; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.customquestion (
    id integer NOT NULL,
    displayorder integer,
    hidden boolean,
    questionstring text,
    questiontype character varying(255) NOT NULL,
    required boolean,
    guestbook_id bigint NOT NULL
);


ALTER TABLE public.customquestion OWNER TO dvnuser;

--
-- Name: customquestion_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.customquestion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customquestion_id_seq OWNER TO dvnuser;

--
-- Name: customquestion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.customquestion_id_seq OWNED BY public.customquestion.id;


--
-- Name: customquestionresponse; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.customquestionresponse (
    id integer NOT NULL,
    response text,
    customquestion_id bigint NOT NULL,
    guestbookresponse_id bigint NOT NULL
);


ALTER TABLE public.customquestionresponse OWNER TO dvnuser;

--
-- Name: customquestionresponse_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.customquestionresponse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customquestionresponse_id_seq OWNER TO dvnuser;

--
-- Name: customquestionresponse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.customquestionresponse_id_seq OWNED BY public.customquestionresponse.id;


--
-- Name: customquestionvalue; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.customquestionvalue (
    id integer NOT NULL,
    displayorder integer,
    valuestring character varying(255) NOT NULL,
    customquestion_id bigint NOT NULL
);


ALTER TABLE public.customquestionvalue OWNER TO dvnuser;

--
-- Name: customquestionvalue_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.customquestionvalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customquestionvalue_id_seq OWNER TO dvnuser;

--
-- Name: customquestionvalue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.customquestionvalue_id_seq OWNED BY public.customquestionvalue.id;


--
-- Name: customzipservicerequest; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.customzipservicerequest (
    key character varying(63),
    storagelocation character varying(255),
    filename character varying(255),
    issuetime timestamp without time zone
);


ALTER TABLE public.customzipservicerequest OWNER TO dvnuser;

--
-- Name: datafile; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datafile (
    id bigint NOT NULL,
    checksumtype character varying(255) NOT NULL,
    checksumvalue character varying(255) NOT NULL,
    contenttype character varying(255) NOT NULL,
    filesize bigint,
    ingeststatus character(1),
    previousdatafileid bigint,
    prov_entityname text,
    restricted boolean,
    rootdatafileid bigint NOT NULL,
    embargo_id bigint,
    retention_id bigint
);


ALTER TABLE public.datafile OWNER TO dvnuser;

--
-- Name: datafilecategory; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datafilecategory (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    dataset_id bigint NOT NULL
);


ALTER TABLE public.datafilecategory OWNER TO dvnuser;

--
-- Name: datafilecategory_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.datafilecategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.datafilecategory_id_seq OWNER TO dvnuser;

--
-- Name: datafilecategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.datafilecategory_id_seq OWNED BY public.datafilecategory.id;


--
-- Name: datafiletag; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datafiletag (
    id integer NOT NULL,
    type integer NOT NULL,
    datafile_id bigint NOT NULL
);


ALTER TABLE public.datafiletag OWNER TO dvnuser;

--
-- Name: datafiletag_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.datafiletag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.datafiletag_id_seq OWNER TO dvnuser;

--
-- Name: datafiletag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.datafiletag_id_seq OWNED BY public.datafiletag.id;


--
-- Name: dataset; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.dataset (
    id bigint NOT NULL,
    datasetfilecountlimit integer,
    embargocitationdate timestamp without time zone,
    externallabelsetname character varying(255),
    fileaccessrequest boolean,
    guestbookatrequest boolean,
    harvestidentifier character varying(255),
    lastexporttime timestamp without time zone,
    metadatalanguage character varying(255),
    pidgeneratorspecs character varying(255),
    storagedriver character varying(255),
    usegenericthumbnail boolean,
    citationdatedatasetfieldtype_id bigint,
    datasettype_id bigint NOT NULL,
    harvestingclient_id bigint,
    template_id bigint,
    guestbook_id bigint,
    thumbnailfile_id bigint
);


ALTER TABLE public.dataset OWNER TO dvnuser;

--
-- Name: datasetexternalcitations; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datasetexternalcitations (
    id bigint NOT NULL,
    citedbyurl character varying(255) NOT NULL,
    dataset_id bigint NOT NULL
);


ALTER TABLE public.datasetexternalcitations OWNER TO dvnuser;

--
-- Name: datasetfield; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datasetfield (
    id integer NOT NULL,
    datasetfieldtype_id bigint NOT NULL,
    datasetversion_id bigint,
    parentdatasetfieldcompoundvalue_id bigint,
    template_id bigint
);


ALTER TABLE public.datasetfield OWNER TO dvnuser;

--
-- Name: datasetfield_controlledvocabularyvalue; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datasetfield_controlledvocabularyvalue (
    datasetfield_id bigint NOT NULL,
    controlledvocabularyvalues_id bigint NOT NULL
);


ALTER TABLE public.datasetfield_controlledvocabularyvalue OWNER TO dvnuser;

--
-- Name: datasetfield_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.datasetfield_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.datasetfield_id_seq OWNER TO dvnuser;

--
-- Name: datasetfield_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.datasetfield_id_seq OWNED BY public.datasetfield.id;


--
-- Name: datasetfieldcompoundvalue; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datasetfieldcompoundvalue (
    id integer NOT NULL,
    displayorder integer,
    parentdatasetfield_id bigint
);


ALTER TABLE public.datasetfieldcompoundvalue OWNER TO dvnuser;

--
-- Name: datasetfieldcompoundvalue_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.datasetfieldcompoundvalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.datasetfieldcompoundvalue_id_seq OWNER TO dvnuser;

--
-- Name: datasetfieldcompoundvalue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.datasetfieldcompoundvalue_id_seq OWNED BY public.datasetfieldcompoundvalue.id;


--
-- Name: datasetfielddefaultvalue; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datasetfielddefaultvalue (
    id integer NOT NULL,
    displayorder integer,
    strvalue text,
    datasetfield_id bigint NOT NULL,
    defaultvalueset_id bigint NOT NULL,
    parentdatasetfielddefaultvalue_id bigint
);


ALTER TABLE public.datasetfielddefaultvalue OWNER TO dvnuser;

--
-- Name: datasetfielddefaultvalue_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.datasetfielddefaultvalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.datasetfielddefaultvalue_id_seq OWNER TO dvnuser;

--
-- Name: datasetfielddefaultvalue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.datasetfielddefaultvalue_id_seq OWNED BY public.datasetfielddefaultvalue.id;


--
-- Name: datasetfieldtype; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datasetfieldtype (
    id integer NOT NULL,
    advancedsearchfieldtype boolean,
    allowcontrolledvocabulary boolean,
    allowmultiples boolean,
    description text,
    displayformat character varying(255),
    displayoncreate boolean,
    displayorder integer,
    facetable boolean,
    fieldtype character varying(255) NOT NULL,
    name text,
    required boolean,
    title text,
    uri text,
    validationformat character varying(255),
    watermark character varying(255),
    metadatablock_id bigint,
    parentdatasetfieldtype_id bigint
);


ALTER TABLE public.datasetfieldtype OWNER TO dvnuser;

--
-- Name: datasetfieldtype_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.datasetfieldtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.datasetfieldtype_id_seq OWNER TO dvnuser;

--
-- Name: datasetfieldtype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.datasetfieldtype_id_seq OWNED BY public.datasetfieldtype.id;


--
-- Name: datasetfieldvalue; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datasetfieldvalue (
    id integer NOT NULL,
    displayorder integer,
    value text,
    datasetfield_id bigint NOT NULL
);


ALTER TABLE public.datasetfieldvalue OWNER TO dvnuser;

--
-- Name: datasetfieldvalue_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.datasetfieldvalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.datasetfieldvalue_id_seq OWNER TO dvnuser;

--
-- Name: datasetfieldvalue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.datasetfieldvalue_id_seq OWNED BY public.datasetfieldvalue.id;


--
-- Name: datasetlinkingdataverse; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datasetlinkingdataverse (
    id integer NOT NULL,
    linkcreatetime timestamp without time zone NOT NULL,
    dataset_id bigint NOT NULL,
    linkingdataverse_id bigint NOT NULL
);


ALTER TABLE public.datasetlinkingdataverse OWNER TO dvnuser;

--
-- Name: datasetlinkingdataverse_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.datasetlinkingdataverse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.datasetlinkingdataverse_id_seq OWNER TO dvnuser;

--
-- Name: datasetlinkingdataverse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.datasetlinkingdataverse_id_seq OWNED BY public.datasetlinkingdataverse.id;


--
-- Name: datasetlock; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datasetlock (
    id integer NOT NULL,
    info character varying(255),
    reason character varying(255) NOT NULL,
    starttime timestamp without time zone,
    dataset_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.datasetlock OWNER TO dvnuser;

--
-- Name: datasetlock_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.datasetlock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.datasetlock_id_seq OWNER TO dvnuser;

--
-- Name: datasetlock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.datasetlock_id_seq OWNED BY public.datasetlock.id;


--
-- Name: datasetmetrics; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datasetmetrics (
    id integer NOT NULL,
    countrycode character varying(255),
    downloadstotalmachine bigint,
    downloadstotalregular bigint,
    downloadsuniquemachine bigint,
    downloadsuniqueregular bigint,
    monthyear character varying(255),
    viewstotalmachine bigint,
    viewstotalregular bigint,
    viewsuniquemachine bigint,
    viewsuniqueregular bigint,
    dataset_id bigint NOT NULL
);


ALTER TABLE public.datasetmetrics OWNER TO dvnuser;

--
-- Name: datasetmetrics_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.datasetmetrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.datasetmetrics_id_seq OWNER TO dvnuser;

--
-- Name: datasetmetrics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.datasetmetrics_id_seq OWNED BY public.datasetmetrics.id;


--
-- Name: datasettype; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datasettype (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.datasettype OWNER TO dvnuser;

--
-- Name: datasettype_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.datasettype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.datasettype_id_seq OWNER TO dvnuser;

--
-- Name: datasettype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.datasettype_id_seq OWNED BY public.datasettype.id;


--
-- Name: datasettype_license; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datasettype_license (
    datasettype_id bigint NOT NULL,
    licenses_id bigint NOT NULL
);


ALTER TABLE public.datasettype_license OWNER TO dvnuser;

--
-- Name: datasettype_metadatablock; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datasettype_metadatablock (
    datasettype_id bigint NOT NULL,
    metadatablocks_id bigint NOT NULL
);


ALTER TABLE public.datasettype_metadatablock OWNER TO dvnuser;

--
-- Name: datasetversion; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datasetversion (
    id integer NOT NULL,
    unf character varying(255),
    archivalcopylocation text,
    archivetime timestamp without time zone,
    createtime timestamp without time zone NOT NULL,
    deaccessionlink character varying(1260),
    deaccessionnote character varying(1000),
    lastupdatetime timestamp without time zone NOT NULL,
    minorversionnumber bigint,
    releasetime timestamp without time zone,
    version bigint,
    versionnote character varying(1000),
    versionnumber bigint,
    versionstate character varying(255) NOT NULL,
    dataset_id bigint,
    termsofuseandaccess_id bigint
);


ALTER TABLE public.datasetversion OWNER TO dvnuser;

--
-- Name: datasetversion_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.datasetversion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.datasetversion_id_seq OWNER TO dvnuser;

--
-- Name: datasetversion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.datasetversion_id_seq OWNED BY public.datasetversion.id;


--
-- Name: datasetversionuser; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datasetversionuser (
    id integer NOT NULL,
    lastupdatedate timestamp without time zone NOT NULL,
    authenticateduser_id bigint,
    datasetversion_id bigint
);


ALTER TABLE public.datasetversionuser OWNER TO dvnuser;

--
-- Name: datasetversionuser_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.datasetversionuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.datasetversionuser_id_seq OWNER TO dvnuser;

--
-- Name: datasetversionuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.datasetversionuser_id_seq OWNED BY public.datasetversionuser.id;


--
-- Name: datatable; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datatable (
    id integer NOT NULL,
    casequantity bigint,
    originalfileformat character varying(255),
    originalfilename character varying(255),
    originalfilesize bigint,
    originalformatversion character varying(255),
    recordspercase bigint,
    storedwithvariableheader boolean NOT NULL,
    unf character varying(255) NOT NULL,
    varquantity bigint,
    datafile_id bigint NOT NULL
);


ALTER TABLE public.datatable OWNER TO dvnuser;

--
-- Name: datatable_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.datatable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.datatable_id_seq OWNER TO dvnuser;

--
-- Name: datatable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.datatable_id_seq OWNED BY public.datatable.id;


--
-- Name: datavariable; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.datavariable (
    id integer NOT NULL,
    factor boolean,
    fileendposition bigint,
    fileorder integer,
    filestartposition bigint,
    format character varying(255),
    formatcategory character varying(255),
    "interval" integer,
    label text,
    name character varying(255),
    numberofdecimalpoints bigint,
    orderedfactor boolean,
    recordsegmentnumber bigint,
    type integer,
    unf character varying(255),
    weighted boolean,
    datatable_id bigint NOT NULL
);


ALTER TABLE public.datavariable OWNER TO dvnuser;

--
-- Name: datavariable_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.datavariable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.datavariable_id_seq OWNER TO dvnuser;

--
-- Name: datavariable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.datavariable_id_seq OWNED BY public.datavariable.id;


--
-- Name: dataverse; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.dataverse (
    id bigint NOT NULL,
    affiliation character varying(255),
    alias character varying(255) NOT NULL,
    datasetfilecountlimit integer,
    dataversetype character varying(255) NOT NULL,
    description text,
    externallabelsetname character varying(255),
    facetroot boolean,
    filepidsenabled boolean,
    guestbookatrequest boolean,
    guestbookroot boolean,
    metadatablockfacetroot boolean,
    metadatablockroot boolean,
    metadatalanguage character varying(255),
    name character varying(255) NOT NULL,
    permissionroot boolean,
    pidgeneratorspecs character varying(255),
    requirefilestopublishdataset boolean,
    storagedriver character varying(255),
    templateroot boolean,
    themeroot boolean,
    defaultcontributorrole_id bigint,
    defaulttemplate_id bigint
);


ALTER TABLE public.dataverse OWNER TO dvnuser;

--
-- Name: dataverse_citationdatasetfieldtypes; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.dataverse_citationdatasetfieldtypes (
    dataverse_id bigint NOT NULL,
    citationdatasetfieldtype_id bigint NOT NULL
);


ALTER TABLE public.dataverse_citationdatasetfieldtypes OWNER TO dvnuser;

--
-- Name: dataverse_metadatablock; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.dataverse_metadatablock (
    dataverse_id bigint NOT NULL,
    metadatablocks_id bigint NOT NULL
);


ALTER TABLE public.dataverse_metadatablock OWNER TO dvnuser;

--
-- Name: dataversecontact; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.dataversecontact (
    id integer NOT NULL,
    contactemail character varying(255) NOT NULL,
    displayorder integer,
    dataverse_id bigint
);


ALTER TABLE public.dataversecontact OWNER TO dvnuser;

--
-- Name: dataversecontact_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.dataversecontact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dataversecontact_id_seq OWNER TO dvnuser;

--
-- Name: dataversecontact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.dataversecontact_id_seq OWNED BY public.dataversecontact.id;


--
-- Name: dataversefacet; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.dataversefacet (
    id integer NOT NULL,
    displayorder integer,
    datasetfieldtype_id bigint,
    dataverse_id bigint
);


ALTER TABLE public.dataversefacet OWNER TO dvnuser;

--
-- Name: dataversefacet_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.dataversefacet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dataversefacet_id_seq OWNER TO dvnuser;

--
-- Name: dataversefacet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.dataversefacet_id_seq OWNED BY public.dataversefacet.id;


--
-- Name: dataversefeatureddataverse; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.dataversefeatureddataverse (
    id integer NOT NULL,
    displayorder integer,
    dataverse_id bigint,
    featureddataverse_id bigint
);


ALTER TABLE public.dataversefeatureddataverse OWNER TO dvnuser;

--
-- Name: dataversefeatureddataverse_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.dataversefeatureddataverse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dataversefeatureddataverse_id_seq OWNER TO dvnuser;

--
-- Name: dataversefeatureddataverse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.dataversefeatureddataverse_id_seq OWNED BY public.dataversefeatureddataverse.id;


--
-- Name: dataversefeatureditem; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.dataversefeatureditem (
    id integer NOT NULL,
    content text,
    displayorder integer NOT NULL,
    imagefilename character varying(255),
    type text,
    dataverse_id bigint NOT NULL,
    dvobject_id bigint
);


ALTER TABLE public.dataversefeatureditem OWNER TO dvnuser;

--
-- Name: dataversefeatureditem_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.dataversefeatureditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dataversefeatureditem_id_seq OWNER TO dvnuser;

--
-- Name: dataversefeatureditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.dataversefeatureditem_id_seq OWNED BY public.dataversefeatureditem.id;


--
-- Name: dataversefieldtypeinputlevel; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.dataversefieldtypeinputlevel (
    id integer NOT NULL,
    displayoncreate boolean,
    include boolean,
    required boolean,
    datasetfieldtype_id bigint,
    dataverse_id bigint
);


ALTER TABLE public.dataversefieldtypeinputlevel OWNER TO dvnuser;

--
-- Name: dataversefieldtypeinputlevel_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.dataversefieldtypeinputlevel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dataversefieldtypeinputlevel_id_seq OWNER TO dvnuser;

--
-- Name: dataversefieldtypeinputlevel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.dataversefieldtypeinputlevel_id_seq OWNED BY public.dataversefieldtypeinputlevel.id;


--
-- Name: dataverselinkingdataverse; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.dataverselinkingdataverse (
    id integer NOT NULL,
    linkcreatetime timestamp without time zone,
    dataverse_id bigint NOT NULL,
    linkingdataverse_id bigint NOT NULL
);


ALTER TABLE public.dataverselinkingdataverse OWNER TO dvnuser;

--
-- Name: dataverselinkingdataverse_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.dataverselinkingdataverse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dataverselinkingdataverse_id_seq OWNER TO dvnuser;

--
-- Name: dataverselinkingdataverse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.dataverselinkingdataverse_id_seq OWNED BY public.dataverselinkingdataverse.id;


--
-- Name: dataversemetadatablockfacet; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.dataversemetadatablockfacet (
    id integer NOT NULL,
    dataverse_id bigint,
    metadatablock_id bigint
);


ALTER TABLE public.dataversemetadatablockfacet OWNER TO dvnuser;

--
-- Name: dataversemetadatablockfacet_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.dataversemetadatablockfacet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dataversemetadatablockfacet_id_seq OWNER TO dvnuser;

--
-- Name: dataversemetadatablockfacet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.dataversemetadatablockfacet_id_seq OWNED BY public.dataversemetadatablockfacet.id;


--
-- Name: dataverserole; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.dataverserole (
    id integer NOT NULL,
    alias character varying(255) NOT NULL,
    description character varying(255),
    name character varying(255) NOT NULL,
    permissionbits bigint,
    owner_id bigint
);


ALTER TABLE public.dataverserole OWNER TO dvnuser;

--
-- Name: dataverserole_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.dataverserole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dataverserole_id_seq OWNER TO dvnuser;

--
-- Name: dataverserole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.dataverserole_id_seq OWNED BY public.dataverserole.id;


--
-- Name: dataversesubjects; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.dataversesubjects (
    dataverse_id bigint NOT NULL,
    controlledvocabularyvalue_id bigint NOT NULL
);


ALTER TABLE public.dataversesubjects OWNER TO dvnuser;

--
-- Name: dataversetheme; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.dataversetheme (
    id integer NOT NULL,
    backgroundcolor character varying(255),
    linkcolor character varying(255),
    linkurl character varying(255),
    logo character varying(255),
    logoalignment character varying(255),
    logobackgroundcolor character varying(255),
    logofooter character varying(255),
    logofooteralignment integer,
    logofooterbackgroundcolor character varying(255),
    logoformat character varying(255),
    logothumbnail character varying(255),
    tagline character varying(255),
    textcolor character varying(255),
    dataverse_id bigint
);


ALTER TABLE public.dataversetheme OWNER TO dvnuser;

--
-- Name: dataversetheme_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.dataversetheme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dataversetheme_id_seq OWNER TO dvnuser;

--
-- Name: dataversetheme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.dataversetheme_id_seq OWNED BY public.dataversetheme.id;


--
-- Name: defaultvalueset; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.defaultvalueset (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.defaultvalueset OWNER TO dvnuser;

--
-- Name: defaultvalueset_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.defaultvalueset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.defaultvalueset_id_seq OWNER TO dvnuser;

--
-- Name: defaultvalueset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.defaultvalueset_id_seq OWNED BY public.defaultvalueset.id;


--
-- Name: dvobject; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.dvobject (
    id integer NOT NULL,
    dtype character varying(31),
    authority character varying(255),
    createdate timestamp without time zone NOT NULL,
    globalidcreatetime timestamp without time zone,
    identifier character varying(255),
    identifierregistered boolean,
    indextime timestamp without time zone,
    modificationtime timestamp without time zone NOT NULL,
    permissionindextime timestamp without time zone,
    permissionmodificationtime timestamp without time zone,
    previewimageavailable boolean,
    previewimagefail boolean,
    protocol character varying(255),
    publicationdate timestamp without time zone,
    separator character varying(255),
    storageidentifier character varying(255),
    creator_id bigint,
    owner_id bigint,
    releaseuser_id bigint,
    CONSTRAINT chk_dvobject_storageidentifier CHECK ((strpos((storageidentifier)::text, '..'::text) = 0))
);


ALTER TABLE public.dvobject OWNER TO dvnuser;

--
-- Name: dvobject_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.dvobject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dvobject_id_seq OWNER TO dvnuser;

--
-- Name: dvobject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.dvobject_id_seq OWNED BY public.dvobject.id;


--
-- Name: embargo; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.embargo (
    id integer NOT NULL,
    dateavailable date NOT NULL,
    reason text
);


ALTER TABLE public.embargo OWNER TO dvnuser;

--
-- Name: embargo_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.embargo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.embargo_id_seq OWNER TO dvnuser;

--
-- Name: embargo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.embargo_id_seq OWNED BY public.embargo.id;


--
-- Name: explicitgroup; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.explicitgroup (
    id integer NOT NULL,
    description character varying(1024),
    displayname character varying(255),
    groupalias character varying(255),
    groupaliasinowner character varying(255),
    owner_id bigint
);


ALTER TABLE public.explicitgroup OWNER TO dvnuser;

--
-- Name: explicitgroup_authenticateduser; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.explicitgroup_authenticateduser (
    explicitgroup_id bigint NOT NULL,
    containedauthenticatedusers_id bigint NOT NULL
);


ALTER TABLE public.explicitgroup_authenticateduser OWNER TO dvnuser;

--
-- Name: explicitgroup_containedroleassignees; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.explicitgroup_containedroleassignees (
    explicitgroup_id bigint,
    containedroleassignees character varying(255)
);


ALTER TABLE public.explicitgroup_containedroleassignees OWNER TO dvnuser;

--
-- Name: explicitgroup_explicitgroup; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.explicitgroup_explicitgroup (
    explicitgroup_id bigint NOT NULL,
    containedexplicitgroups_id bigint NOT NULL
);


ALTER TABLE public.explicitgroup_explicitgroup OWNER TO dvnuser;

--
-- Name: explicitgroup_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.explicitgroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.explicitgroup_id_seq OWNER TO dvnuser;

--
-- Name: explicitgroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.explicitgroup_id_seq OWNED BY public.explicitgroup.id;


--
-- Name: externalfileuploadinprogress; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.externalfileuploadinprogress (
    id integer NOT NULL,
    fileinfo text,
    taskid character varying(255) NOT NULL
);


ALTER TABLE public.externalfileuploadinprogress OWNER TO dvnuser;

--
-- Name: externalfileuploadinprogress_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.externalfileuploadinprogress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.externalfileuploadinprogress_id_seq OWNER TO dvnuser;

--
-- Name: externalfileuploadinprogress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.externalfileuploadinprogress_id_seq OWNED BY public.externalfileuploadinprogress.id;


--
-- Name: externaltool; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.externaltool (
    id integer NOT NULL,
    allowedapicalls text,
    contenttype text,
    description text,
    displayname character varying(255) NOT NULL,
    requirements text,
    scope character varying(255) NOT NULL,
    toolname character varying(255),
    toolparameters character varying(255) NOT NULL,
    toolurl character varying(255) NOT NULL
);


ALTER TABLE public.externaltool OWNER TO dvnuser;

--
-- Name: externaltool_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.externaltool_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.externaltool_id_seq OWNER TO dvnuser;

--
-- Name: externaltool_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.externaltool_id_seq OWNED BY public.externaltool.id;


--
-- Name: externaltooltype; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.externaltooltype (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    externaltool_id bigint NOT NULL
);


ALTER TABLE public.externaltooltype OWNER TO dvnuser;

--
-- Name: externaltooltype_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.externaltooltype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.externaltooltype_id_seq OWNER TO dvnuser;

--
-- Name: externaltooltype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.externaltooltype_id_seq OWNED BY public.externaltooltype.id;


--
-- Name: externalvocabularyvalue; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.externalvocabularyvalue (
    id integer NOT NULL,
    lastupdatedate timestamp without time zone,
    uri text,
    value text
);


ALTER TABLE public.externalvocabularyvalue OWNER TO dvnuser;

--
-- Name: externalvocabularyvalue_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.externalvocabularyvalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.externalvocabularyvalue_id_seq OWNER TO dvnuser;

--
-- Name: externalvocabularyvalue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.externalvocabularyvalue_id_seq OWNED BY public.externalvocabularyvalue.id;


--
-- Name: fileaccessrequests; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.fileaccessrequests (
    datafile_id bigint NOT NULL,
    authenticated_user_id integer NOT NULL,
    creation_time timestamp without time zone DEFAULT now(),
    request_state character varying(64),
    id integer NOT NULL,
    guestbookresponse_id integer
);


ALTER TABLE public.fileaccessrequests OWNER TO dvnuser;

--
-- Name: fileaccessrequests_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.fileaccessrequests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fileaccessrequests_id_seq OWNER TO dvnuser;

--
-- Name: fileaccessrequests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.fileaccessrequests_id_seq OWNED BY public.fileaccessrequests.id;


--
-- Name: filemetadata; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.filemetadata (
    id integer NOT NULL,
    description text,
    directorylabel character varying(255),
    label character varying(255) NOT NULL,
    prov_freeform text,
    restricted boolean,
    version bigint,
    datafile_id bigint NOT NULL,
    datasetversion_id bigint NOT NULL
);


ALTER TABLE public.filemetadata OWNER TO dvnuser;

--
-- Name: filemetadata_datafilecategory; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.filemetadata_datafilecategory (
    filecategories_id bigint NOT NULL,
    filemetadatas_id bigint NOT NULL
);


ALTER TABLE public.filemetadata_datafilecategory OWNER TO dvnuser;

--
-- Name: filemetadata_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.filemetadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.filemetadata_id_seq OWNER TO dvnuser;

--
-- Name: filemetadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.filemetadata_id_seq OWNED BY public.filemetadata.id;


--
-- Name: flyway_schema_history; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.flyway_schema_history (
    installed_rank integer NOT NULL,
    version character varying(50),
    description character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    script character varying(1000) NOT NULL,
    checksum integer,
    installed_by character varying(100) NOT NULL,
    installed_on timestamp without time zone DEFAULT now() NOT NULL,
    execution_time integer NOT NULL,
    success boolean NOT NULL
);


ALTER TABLE public.flyway_schema_history OWNER TO dvnuser;

--
-- Name: foreignmetadatafieldmapping; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.foreignmetadatafieldmapping (
    id integer NOT NULL,
    datasetfieldname text,
    foreignfieldxpath text,
    isattribute boolean,
    foreignmetadataformatmapping_id bigint,
    parentfieldmapping_id bigint
);


ALTER TABLE public.foreignmetadatafieldmapping OWNER TO dvnuser;

--
-- Name: foreignmetadatafieldmapping_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.foreignmetadatafieldmapping_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.foreignmetadatafieldmapping_id_seq OWNER TO dvnuser;

--
-- Name: foreignmetadatafieldmapping_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.foreignmetadatafieldmapping_id_seq OWNED BY public.foreignmetadatafieldmapping.id;


--
-- Name: foreignmetadataformatmapping; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.foreignmetadataformatmapping (
    id integer NOT NULL,
    displayname character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    schemalocation character varying(255),
    startelement character varying(255)
);


ALTER TABLE public.foreignmetadataformatmapping OWNER TO dvnuser;

--
-- Name: foreignmetadataformatmapping_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.foreignmetadataformatmapping_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.foreignmetadataformatmapping_id_seq OWNER TO dvnuser;

--
-- Name: foreignmetadataformatmapping_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.foreignmetadataformatmapping_id_seq OWNED BY public.foreignmetadataformatmapping.id;


--
-- Name: globustaskinprogress; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.globustaskinprogress (
    id integer NOT NULL,
    globustoken character varying(255) NOT NULL,
    ruleid character varying(255),
    starttime timestamp without time zone,
    taskid character varying(255) NOT NULL,
    tasktype character varying(255) NOT NULL,
    dataset_id bigint NOT NULL,
    user_id bigint
);


ALTER TABLE public.globustaskinprogress OWNER TO dvnuser;

--
-- Name: globustaskinprogress_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.globustaskinprogress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.globustaskinprogress_id_seq OWNER TO dvnuser;

--
-- Name: globustaskinprogress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.globustaskinprogress_id_seq OWNED BY public.globustaskinprogress.id;


--
-- Name: guestbook; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.guestbook (
    id integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    emailrequired boolean,
    enabled boolean,
    institutionrequired boolean,
    name character varying(255),
    namerequired boolean,
    positionrequired boolean,
    dataverse_id bigint
);


ALTER TABLE public.guestbook OWNER TO dvnuser;

--
-- Name: guestbook_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.guestbook_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.guestbook_id_seq OWNER TO dvnuser;

--
-- Name: guestbook_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.guestbook_id_seq OWNED BY public.guestbook.id;


--
-- Name: guestbookresponse; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.guestbookresponse (
    id integer NOT NULL,
    email character varying(255),
    eventtype character varying(255),
    institution character varying(255),
    name character varying(255),
    "position" character varying(255),
    responsetime timestamp without time zone,
    sessionid character varying(255),
    authenticateduser_id bigint,
    datafile_id bigint NOT NULL,
    dataset_id bigint NOT NULL,
    datasetversion_id bigint,
    guestbook_id bigint NOT NULL
)
WITH (autovacuum_analyze_scale_factor='0.01');


ALTER TABLE public.guestbookresponse OWNER TO dvnuser;

--
-- Name: guestbookresponse_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.guestbookresponse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.guestbookresponse_id_seq OWNER TO dvnuser;

--
-- Name: guestbookresponse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.guestbookresponse_id_seq OWNED BY public.guestbookresponse.id;


--
-- Name: harvestingclient; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.harvestingclient (
    id integer NOT NULL,
    allowharvestingmissingcvv boolean,
    archivedescription text,
    archiveurl character varying(255),
    customhttpheaders character varying(255),
    deleted boolean,
    harveststyle character varying(255),
    harvesttype character varying(255),
    harvestingnow boolean,
    harvestingset text,
    harvestingurl character varying(255),
    metadataprefix character varying(255),
    name character varying(255) NOT NULL,
    scheduledayofweek integer,
    schedulehourofday integer,
    scheduleperiod character varying(255),
    scheduled boolean,
    sourcename character varying(255),
    uselistrecords boolean,
    useoaiidaspid boolean,
    dataverse_id bigint
);


ALTER TABLE public.harvestingclient OWNER TO dvnuser;

--
-- Name: harvestingclient_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.harvestingclient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.harvestingclient_id_seq OWNER TO dvnuser;

--
-- Name: harvestingclient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.harvestingclient_id_seq OWNED BY public.harvestingclient.id;


--
-- Name: harvestingdataverseconfig; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.harvestingdataverseconfig (
    id bigint NOT NULL,
    archivedescription text,
    archiveurl character varying(255),
    harveststyle character varying(255),
    harvesttype character varying(255),
    harvestingset character varying(255),
    harvestingurl character varying(255),
    dataverse_id bigint
);


ALTER TABLE public.harvestingdataverseconfig OWNER TO dvnuser;

--
-- Name: ingestreport; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.ingestreport (
    id integer NOT NULL,
    endtime timestamp without time zone,
    report text,
    starttime timestamp without time zone,
    status integer,
    type integer,
    datafile_id bigint NOT NULL
);


ALTER TABLE public.ingestreport OWNER TO dvnuser;

--
-- Name: ingestreport_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.ingestreport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ingestreport_id_seq OWNER TO dvnuser;

--
-- Name: ingestreport_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.ingestreport_id_seq OWNED BY public.ingestreport.id;


--
-- Name: ingestrequest; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.ingestrequest (
    id integer NOT NULL,
    controlcard character varying(255),
    forcetypecheck boolean,
    labelsfile character varying(255),
    textencoding character varying(255),
    datafile_id bigint
);


ALTER TABLE public.ingestrequest OWNER TO dvnuser;

--
-- Name: ingestrequest_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.ingestrequest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ingestrequest_id_seq OWNER TO dvnuser;

--
-- Name: ingestrequest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.ingestrequest_id_seq OWNED BY public.ingestrequest.id;


--
-- Name: ipv4range; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.ipv4range (
    id bigint NOT NULL,
    bottomaslong bigint,
    topaslong bigint,
    owner_id bigint
);


ALTER TABLE public.ipv4range OWNER TO dvnuser;

--
-- Name: ipv6range; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.ipv6range (
    id bigint NOT NULL,
    bottoma bigint,
    bottomb bigint,
    bottomc bigint,
    bottomd bigint,
    topa bigint,
    topb bigint,
    topc bigint,
    topd bigint,
    owner_id bigint
);


ALTER TABLE public.ipv6range OWNER TO dvnuser;

--
-- Name: license; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.license (
    id integer NOT NULL,
    active boolean NOT NULL,
    iconurl text,
    isdefault boolean NOT NULL,
    language_code character varying(255),
    name text,
    rights_identifier character varying(255),
    rights_identifier_scheme character varying(255),
    scheme_uri character varying(255),
    shortdescription text,
    sortorder bigint DEFAULT 0 NOT NULL,
    uri text
);


ALTER TABLE public.license OWNER TO dvnuser;

--
-- Name: license_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.license_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.license_id_seq OWNER TO dvnuser;

--
-- Name: license_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.license_id_seq OWNED BY public.license.id;


--
-- Name: makedatacountprocessstate; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.makedatacountprocessstate (
    id integer NOT NULL,
    server character varying(255),
    state integer NOT NULL,
    statechangetimestamp timestamp without time zone,
    yearmonth character varying(255) NOT NULL
);


ALTER TABLE public.makedatacountprocessstate OWNER TO dvnuser;

--
-- Name: makedatacountprocessstate_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.makedatacountprocessstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.makedatacountprocessstate_id_seq OWNER TO dvnuser;

--
-- Name: makedatacountprocessstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.makedatacountprocessstate_id_seq OWNED BY public.makedatacountprocessstate.id;


--
-- Name: metadatablock; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.metadatablock (
    id integer NOT NULL,
    displayname character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    namespaceuri text,
    owner_id bigint
);


ALTER TABLE public.metadatablock OWNER TO dvnuser;

--
-- Name: metadatablock_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.metadatablock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.metadatablock_id_seq OWNER TO dvnuser;

--
-- Name: metadatablock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.metadatablock_id_seq OWNED BY public.metadatablock.id;


--
-- Name: metric; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.metric (
    id integer NOT NULL,
    datalocation text,
    daystring text,
    lastcalleddate timestamp without time zone NOT NULL,
    name character varying(255) NOT NULL,
    valuejson text,
    dataverse_id bigint
);


ALTER TABLE public.metric OWNER TO dvnuser;

--
-- Name: metric_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.metric_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.metric_id_seq OWNER TO dvnuser;

--
-- Name: metric_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.metric_id_seq OWNED BY public.metric.id;


--
-- Name: oairecord; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.oairecord (
    id integer NOT NULL,
    globalid character varying(255),
    lastupdatetime timestamp without time zone,
    removed boolean,
    setname character varying(255)
);


ALTER TABLE public.oairecord OWNER TO dvnuser;

--
-- Name: oairecord_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.oairecord_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.oairecord_id_seq OWNER TO dvnuser;

--
-- Name: oairecord_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.oairecord_id_seq OWNED BY public.oairecord.id;


--
-- Name: oaiset; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.oaiset (
    id integer NOT NULL,
    definition text,
    deleted boolean,
    description text,
    name text,
    spec text,
    updateinprogress boolean,
    version bigint
);


ALTER TABLE public.oaiset OWNER TO dvnuser;

--
-- Name: oaiset_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.oaiset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.oaiset_id_seq OWNER TO dvnuser;

--
-- Name: oaiset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.oaiset_id_seq OWNED BY public.oaiset.id;


--
-- Name: oauth2tokendata; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.oauth2tokendata (
    id integer NOT NULL,
    accesstoken text,
    expirydate timestamp without time zone,
    oauthproviderid character varying(255),
    rawresponse text,
    refreshtoken character varying(64),
    tokentype character varying(32),
    user_id bigint
);


ALTER TABLE public.oauth2tokendata OWNER TO dvnuser;

--
-- Name: oauth2tokendata_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.oauth2tokendata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.oauth2tokendata_id_seq OWNER TO dvnuser;

--
-- Name: oauth2tokendata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.oauth2tokendata_id_seq OWNED BY public.oauth2tokendata.id;


--
-- Name: passwordresetdata; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.passwordresetdata (
    id integer NOT NULL,
    created timestamp without time zone NOT NULL,
    expires timestamp without time zone NOT NULL,
    reason character varying(255),
    token character varying(255),
    builtinuser_id bigint NOT NULL
);


ALTER TABLE public.passwordresetdata OWNER TO dvnuser;

--
-- Name: passwordresetdata_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.passwordresetdata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.passwordresetdata_id_seq OWNER TO dvnuser;

--
-- Name: passwordresetdata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.passwordresetdata_id_seq OWNED BY public.passwordresetdata.id;


--
-- Name: pendingworkflowinvocation; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.pendingworkflowinvocation (
    invocationid character varying(255) NOT NULL,
    datasetexternallyreleased boolean,
    ipaddress character varying(255),
    lockid bigint,
    nextminorversionnumber bigint,
    nextversionnumber bigint,
    pendingstepidx integer,
    typeordinal integer,
    userid character varying(255),
    workflow_id bigint,
    dataset_id bigint
);


ALTER TABLE public.pendingworkflowinvocation OWNER TO dvnuser;

--
-- Name: pendingworkflowinvocation_localdata; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.pendingworkflowinvocation_localdata (
    pendingworkflowinvocation_invocationid character varying(255),
    localdata character varying(255),
    localdata_key character varying(255)
);


ALTER TABLE public.pendingworkflowinvocation_localdata OWNER TO dvnuser;

--
-- Name: persistedglobalgroup; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.persistedglobalgroup (
    id bigint NOT NULL,
    dtype character varying(31),
    description character varying(255),
    displayname character varying(255),
    persistedgroupalias character varying(255),
    emaildomains character varying(255),
    isregex boolean
);


ALTER TABLE public.persistedglobalgroup OWNER TO dvnuser;

--
-- Name: retention; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.retention (
    id integer NOT NULL,
    dateunavailable date NOT NULL,
    reason text
);


ALTER TABLE public.retention OWNER TO dvnuser;

--
-- Name: retention_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.retention_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.retention_id_seq OWNER TO dvnuser;

--
-- Name: retention_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.retention_id_seq OWNED BY public.retention.id;


--
-- Name: roleassignment; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.roleassignment (
    id integer NOT NULL,
    assigneeidentifier character varying(255) NOT NULL,
    privateurlanonymizedaccess boolean,
    privateurltoken character varying(255),
    definitionpoint_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.roleassignment OWNER TO dvnuser;

--
-- Name: roleassignment_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.roleassignment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roleassignment_id_seq OWNER TO dvnuser;

--
-- Name: roleassignment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.roleassignment_id_seq OWNED BY public.roleassignment.id;


--
-- Name: roleassignmenthistory; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.roleassignmenthistory (
    entry_id integer NOT NULL,
    action_by_identifier character varying(255) NOT NULL,
    action_timestamp timestamp without time zone NOT NULL,
    action_type character varying(255) NOT NULL,
    assignee_identifier character varying(255) NOT NULL,
    definition_point_id bigint NOT NULL,
    definition_point_identifier character varying(255),
    role_alias character varying(255) NOT NULL,
    role_assignment_id bigint,
    role_id bigint NOT NULL
);


ALTER TABLE public.roleassignmenthistory OWNER TO dvnuser;

--
-- Name: roleassignmenthistory_entry_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.roleassignmenthistory_entry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roleassignmenthistory_entry_id_seq OWNER TO dvnuser;

--
-- Name: roleassignmenthistory_entry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.roleassignmenthistory_entry_id_seq OWNED BY public.roleassignmenthistory.entry_id;


--
-- Name: savedsearch; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.savedsearch (
    id integer NOT NULL,
    query text,
    creator_id bigint NOT NULL,
    definitionpoint_id bigint NOT NULL
);


ALTER TABLE public.savedsearch OWNER TO dvnuser;

--
-- Name: savedsearch_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.savedsearch_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.savedsearch_id_seq OWNER TO dvnuser;

--
-- Name: savedsearch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.savedsearch_id_seq OWNED BY public.savedsearch.id;


--
-- Name: savedsearchfilterquery; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.savedsearchfilterquery (
    id integer NOT NULL,
    filterquery text,
    savedsearch_id bigint NOT NULL
);


ALTER TABLE public.savedsearchfilterquery OWNER TO dvnuser;

--
-- Name: savedsearchfilterquery_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.savedsearchfilterquery_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.savedsearchfilterquery_id_seq OWNER TO dvnuser;

--
-- Name: savedsearchfilterquery_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.savedsearchfilterquery_id_seq OWNED BY public.savedsearchfilterquery.id;


--
-- Name: sequence; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.sequence (
    seq_name character varying(50) NOT NULL,
    seq_count numeric(38,0)
);


ALTER TABLE public.sequence OWNER TO dvnuser;

--
-- Name: setting; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.setting (
    id integer NOT NULL,
    content text,
    lang character varying(10) NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.setting OWNER TO dvnuser;

--
-- Name: setting_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.setting_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.setting_id_seq OWNER TO dvnuser;

--
-- Name: setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.setting_id_seq OWNED BY public.setting.id;


--
-- Name: shibgroup; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.shibgroup (
    id integer NOT NULL,
    attribute character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    pattern character varying(255) NOT NULL
);


ALTER TABLE public.shibgroup OWNER TO dvnuser;

--
-- Name: shibgroup_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.shibgroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.shibgroup_id_seq OWNER TO dvnuser;

--
-- Name: shibgroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.shibgroup_id_seq OWNED BY public.shibgroup.id;


--
-- Name: storagequota; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.storagequota (
    id integer NOT NULL,
    allocation bigint,
    definitionpoint_id bigint
);


ALTER TABLE public.storagequota OWNER TO dvnuser;

--
-- Name: storagequota_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.storagequota_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.storagequota_id_seq OWNER TO dvnuser;

--
-- Name: storagequota_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.storagequota_id_seq OWNED BY public.storagequota.id;


--
-- Name: storagesite; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.storagesite (
    id integer NOT NULL,
    hostname text,
    name text,
    primarystorage boolean NOT NULL,
    transferprotocols text
);


ALTER TABLE public.storagesite OWNER TO dvnuser;

--
-- Name: storagesite_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.storagesite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.storagesite_id_seq OWNER TO dvnuser;

--
-- Name: storagesite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.storagesite_id_seq OWNED BY public.storagesite.id;


--
-- Name: storageuse; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.storageuse (
    id integer NOT NULL,
    sizeinbytes bigint,
    dvobjectcontainer_id bigint NOT NULL
);


ALTER TABLE public.storageuse OWNER TO dvnuser;

--
-- Name: storageuse_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.storageuse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.storageuse_id_seq OWNER TO dvnuser;

--
-- Name: storageuse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.storageuse_id_seq OWNED BY public.storageuse.id;


--
-- Name: summarystatistic; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.summarystatistic (
    id integer NOT NULL,
    type integer,
    value character varying(255),
    datavariable_id bigint NOT NULL
);


ALTER TABLE public.summarystatistic OWNER TO dvnuser;

--
-- Name: summarystatistic_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.summarystatistic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.summarystatistic_id_seq OWNER TO dvnuser;

--
-- Name: summarystatistic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.summarystatistic_id_seq OWNED BY public.summarystatistic.id;


--
-- Name: template; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.template (
    id integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    instructions text,
    name character varying(255) NOT NULL,
    usagecount bigint,
    dataverse_id bigint,
    termsofuseandaccess_id bigint
);


ALTER TABLE public.template OWNER TO dvnuser;

--
-- Name: template_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.template_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.template_id_seq OWNER TO dvnuser;

--
-- Name: template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.template_id_seq OWNED BY public.template.id;


--
-- Name: termsofuseandaccess; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.termsofuseandaccess (
    id integer NOT NULL,
    availabilitystatus text,
    citationrequirements text,
    conditions text,
    confidentialitydeclaration text,
    contactforaccess text,
    dataaccessplace text,
    depositorrequirements text,
    disclaimer text,
    fileaccessrequest boolean,
    originalarchive text,
    restrictions text,
    sizeofcollection text,
    specialpermissions text,
    studycompletion text,
    termsofaccess text,
    termsofuse text,
    license_id bigint
);


ALTER TABLE public.termsofuseandaccess OWNER TO dvnuser;

--
-- Name: termsofuseandaccess_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.termsofuseandaccess_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.termsofuseandaccess_id_seq OWNER TO dvnuser;

--
-- Name: termsofuseandaccess_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.termsofuseandaccess_id_seq OWNED BY public.termsofuseandaccess.id;


--
-- Name: userbannermessage; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.userbannermessage (
    id integer NOT NULL,
    bannerdismissaltime timestamp without time zone NOT NULL,
    bannermessage_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.userbannermessage OWNER TO dvnuser;

--
-- Name: userbannermessage_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.userbannermessage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.userbannermessage_id_seq OWNER TO dvnuser;

--
-- Name: userbannermessage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.userbannermessage_id_seq OWNED BY public.userbannermessage.id;


--
-- Name: usernotification; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.usernotification (
    id integer NOT NULL,
    additionalinfo character varying(255),
    emailed boolean,
    objectid bigint,
    readnotification boolean,
    senddate timestamp without time zone,
    type integer NOT NULL,
    requestor_id bigint,
    user_id bigint NOT NULL
);


ALTER TABLE public.usernotification OWNER TO dvnuser;

--
-- Name: usernotification_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.usernotification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usernotification_id_seq OWNER TO dvnuser;

--
-- Name: usernotification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.usernotification_id_seq OWNED BY public.usernotification.id;


--
-- Name: vargroup; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.vargroup (
    id integer NOT NULL,
    label text,
    filemetadata_id bigint NOT NULL
);


ALTER TABLE public.vargroup OWNER TO dvnuser;

--
-- Name: vargroup_datavariable; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.vargroup_datavariable (
    vargroup_id bigint NOT NULL,
    varsingroup_id bigint NOT NULL
);


ALTER TABLE public.vargroup_datavariable OWNER TO dvnuser;

--
-- Name: vargroup_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.vargroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vargroup_id_seq OWNER TO dvnuser;

--
-- Name: vargroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.vargroup_id_seq OWNED BY public.vargroup.id;


--
-- Name: variablecategory; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.variablecategory (
    id integer NOT NULL,
    catorder integer,
    frequency double precision,
    label character varying(255),
    missing boolean,
    value character varying(255),
    datavariable_id bigint NOT NULL
);


ALTER TABLE public.variablecategory OWNER TO dvnuser;

--
-- Name: variablecategory_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.variablecategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.variablecategory_id_seq OWNER TO dvnuser;

--
-- Name: variablecategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.variablecategory_id_seq OWNED BY public.variablecategory.id;


--
-- Name: variablemetadata; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.variablemetadata (
    id integer NOT NULL,
    interviewinstruction text,
    isweightvar boolean,
    label text,
    literalquestion text,
    notes text,
    postquestion text,
    universe text,
    weighted boolean,
    datavariable_id bigint NOT NULL,
    filemetadata_id bigint NOT NULL,
    weightvariable_id bigint
);


ALTER TABLE public.variablemetadata OWNER TO dvnuser;

--
-- Name: variablemetadata_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.variablemetadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.variablemetadata_id_seq OWNER TO dvnuser;

--
-- Name: variablemetadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.variablemetadata_id_seq OWNED BY public.variablemetadata.id;


--
-- Name: variablerange; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.variablerange (
    id integer NOT NULL,
    beginvalue character varying(255),
    beginvaluetype integer,
    endvalue character varying(255),
    endvaluetype integer,
    datavariable_id bigint NOT NULL
);


ALTER TABLE public.variablerange OWNER TO dvnuser;

--
-- Name: variablerange_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.variablerange_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.variablerange_id_seq OWNER TO dvnuser;

--
-- Name: variablerange_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.variablerange_id_seq OWNED BY public.variablerange.id;


--
-- Name: variablerangeitem; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.variablerangeitem (
    id integer NOT NULL,
    value numeric(38,0),
    datavariable_id bigint NOT NULL
);


ALTER TABLE public.variablerangeitem OWNER TO dvnuser;

--
-- Name: variablerangeitem_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.variablerangeitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.variablerangeitem_id_seq OWNER TO dvnuser;

--
-- Name: variablerangeitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.variablerangeitem_id_seq OWNED BY public.variablerangeitem.id;


--
-- Name: workflow; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.workflow (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.workflow OWNER TO dvnuser;

--
-- Name: workflow_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.workflow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.workflow_id_seq OWNER TO dvnuser;

--
-- Name: workflow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.workflow_id_seq OWNED BY public.workflow.id;


--
-- Name: workflowcomment; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.workflowcomment (
    id integer NOT NULL,
    created timestamp without time zone NOT NULL,
    message text,
    tobeshown boolean,
    type character varying(255) NOT NULL,
    authenticateduser_id bigint,
    datasetversion_id bigint NOT NULL
);


ALTER TABLE public.workflowcomment OWNER TO dvnuser;

--
-- Name: workflowcomment_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.workflowcomment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.workflowcomment_id_seq OWNER TO dvnuser;

--
-- Name: workflowcomment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.workflowcomment_id_seq OWNED BY public.workflowcomment.id;


--
-- Name: workflowstepdata; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.workflowstepdata (
    id integer NOT NULL,
    providerid character varying(255),
    steptype character varying(255),
    parent_id bigint,
    index integer
);


ALTER TABLE public.workflowstepdata OWNER TO dvnuser;

--
-- Name: workflowstepdata_id_seq; Type: SEQUENCE; Schema: public; Owner: dvnuser
--

CREATE SEQUENCE public.workflowstepdata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.workflowstepdata_id_seq OWNER TO dvnuser;

--
-- Name: workflowstepdata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dvnuser
--

ALTER SEQUENCE public.workflowstepdata_id_seq OWNED BY public.workflowstepdata.id;


--
-- Name: workflowstepdata_stepparameters; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.workflowstepdata_stepparameters (
    workflowstepdata_id bigint,
    stepparameters character varying(2048),
    stepparameters_key character varying(255)
);


ALTER TABLE public.workflowstepdata_stepparameters OWNER TO dvnuser;

--
-- Name: workflowstepdata_stepsettings; Type: TABLE; Schema: public; Owner: dvnuser
--

CREATE TABLE public.workflowstepdata_stepsettings (
    workflowstepdata_id bigint,
    stepsettings character varying(2048),
    stepsettings_key character varying(255)
);


ALTER TABLE public.workflowstepdata_stepsettings OWNER TO dvnuser;

--
-- Name: alternativepersistentidentifier id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.alternativepersistentidentifier ALTER COLUMN id SET DEFAULT nextval('public.alternativepersistentidentifier_id_seq'::regclass);


--
-- Name: apitoken id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.apitoken ALTER COLUMN id SET DEFAULT nextval('public.apitoken_id_seq'::regclass);


--
-- Name: authenticateduser id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.authenticateduser ALTER COLUMN id SET DEFAULT nextval('public.authenticateduser_id_seq'::regclass);


--
-- Name: authenticateduserlookup id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.authenticateduserlookup ALTER COLUMN id SET DEFAULT nextval('public.authenticateduserlookup_id_seq'::regclass);


--
-- Name: auxiliaryfile id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.auxiliaryfile ALTER COLUMN id SET DEFAULT nextval('public.auxiliaryfile_id_seq'::regclass);


--
-- Name: bannermessage id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.bannermessage ALTER COLUMN id SET DEFAULT nextval('public.bannermessage_id_seq'::regclass);


--
-- Name: bannermessagetext id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.bannermessagetext ALTER COLUMN id SET DEFAULT nextval('public.bannermessagetext_id_seq'::regclass);


--
-- Name: builtinuser id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.builtinuser ALTER COLUMN id SET DEFAULT nextval('public.builtinuser_id_seq'::regclass);


--
-- Name: categorymetadata id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.categorymetadata ALTER COLUMN id SET DEFAULT nextval('public.categorymetadata_id_seq'::regclass);


--
-- Name: clientharvestrun id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.clientharvestrun ALTER COLUMN id SET DEFAULT nextval('public.clientharvestrun_id_seq'::regclass);


--
-- Name: confirmemaildata id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.confirmemaildata ALTER COLUMN id SET DEFAULT nextval('public.confirmemaildata_id_seq'::regclass);


--
-- Name: controlledvocabalternate id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.controlledvocabalternate ALTER COLUMN id SET DEFAULT nextval('public.controlledvocabalternate_id_seq'::regclass);


--
-- Name: controlledvocabularyvalue id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.controlledvocabularyvalue ALTER COLUMN id SET DEFAULT nextval('public.controlledvocabularyvalue_id_seq'::regclass);


--
-- Name: curationstatus id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.curationstatus ALTER COLUMN id SET DEFAULT nextval('public.curationstatus_id_seq'::regclass);


--
-- Name: customfieldmap id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.customfieldmap ALTER COLUMN id SET DEFAULT nextval('public.customfieldmap_id_seq'::regclass);


--
-- Name: customquestion id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.customquestion ALTER COLUMN id SET DEFAULT nextval('public.customquestion_id_seq'::regclass);


--
-- Name: customquestionresponse id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.customquestionresponse ALTER COLUMN id SET DEFAULT nextval('public.customquestionresponse_id_seq'::regclass);


--
-- Name: customquestionvalue id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.customquestionvalue ALTER COLUMN id SET DEFAULT nextval('public.customquestionvalue_id_seq'::regclass);


--
-- Name: datafilecategory id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datafilecategory ALTER COLUMN id SET DEFAULT nextval('public.datafilecategory_id_seq'::regclass);


--
-- Name: datafiletag id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datafiletag ALTER COLUMN id SET DEFAULT nextval('public.datafiletag_id_seq'::regclass);


--
-- Name: datasetfield id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfield ALTER COLUMN id SET DEFAULT nextval('public.datasetfield_id_seq'::regclass);


--
-- Name: datasetfieldcompoundvalue id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfieldcompoundvalue ALTER COLUMN id SET DEFAULT nextval('public.datasetfieldcompoundvalue_id_seq'::regclass);


--
-- Name: datasetfielddefaultvalue id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfielddefaultvalue ALTER COLUMN id SET DEFAULT nextval('public.datasetfielddefaultvalue_id_seq'::regclass);


--
-- Name: datasetfieldtype id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfieldtype ALTER COLUMN id SET DEFAULT nextval('public.datasetfieldtype_id_seq'::regclass);


--
-- Name: datasetfieldvalue id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfieldvalue ALTER COLUMN id SET DEFAULT nextval('public.datasetfieldvalue_id_seq'::regclass);


--
-- Name: datasetlinkingdataverse id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetlinkingdataverse ALTER COLUMN id SET DEFAULT nextval('public.datasetlinkingdataverse_id_seq'::regclass);


--
-- Name: datasetlock id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetlock ALTER COLUMN id SET DEFAULT nextval('public.datasetlock_id_seq'::regclass);


--
-- Name: datasetmetrics id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetmetrics ALTER COLUMN id SET DEFAULT nextval('public.datasetmetrics_id_seq'::regclass);


--
-- Name: datasettype id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasettype ALTER COLUMN id SET DEFAULT nextval('public.datasettype_id_seq'::regclass);


--
-- Name: datasetversion id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetversion ALTER COLUMN id SET DEFAULT nextval('public.datasetversion_id_seq'::regclass);


--
-- Name: datasetversionuser id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetversionuser ALTER COLUMN id SET DEFAULT nextval('public.datasetversionuser_id_seq'::regclass);


--
-- Name: datatable id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datatable ALTER COLUMN id SET DEFAULT nextval('public.datatable_id_seq'::regclass);


--
-- Name: datavariable id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datavariable ALTER COLUMN id SET DEFAULT nextval('public.datavariable_id_seq'::regclass);


--
-- Name: dataversecontact id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversecontact ALTER COLUMN id SET DEFAULT nextval('public.dataversecontact_id_seq'::regclass);


--
-- Name: dataversefacet id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefacet ALTER COLUMN id SET DEFAULT nextval('public.dataversefacet_id_seq'::regclass);


--
-- Name: dataversefeatureddataverse id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefeatureddataverse ALTER COLUMN id SET DEFAULT nextval('public.dataversefeatureddataverse_id_seq'::regclass);


--
-- Name: dataversefeatureditem id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefeatureditem ALTER COLUMN id SET DEFAULT nextval('public.dataversefeatureditem_id_seq'::regclass);


--
-- Name: dataversefieldtypeinputlevel id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefieldtypeinputlevel ALTER COLUMN id SET DEFAULT nextval('public.dataversefieldtypeinputlevel_id_seq'::regclass);


--
-- Name: dataverselinkingdataverse id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverselinkingdataverse ALTER COLUMN id SET DEFAULT nextval('public.dataverselinkingdataverse_id_seq'::regclass);


--
-- Name: dataversemetadatablockfacet id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversemetadatablockfacet ALTER COLUMN id SET DEFAULT nextval('public.dataversemetadatablockfacet_id_seq'::regclass);


--
-- Name: dataverserole id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverserole ALTER COLUMN id SET DEFAULT nextval('public.dataverserole_id_seq'::regclass);


--
-- Name: dataversetheme id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversetheme ALTER COLUMN id SET DEFAULT nextval('public.dataversetheme_id_seq'::regclass);


--
-- Name: defaultvalueset id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.defaultvalueset ALTER COLUMN id SET DEFAULT nextval('public.defaultvalueset_id_seq'::regclass);


--
-- Name: dvobject id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dvobject ALTER COLUMN id SET DEFAULT nextval('public.dvobject_id_seq'::regclass);


--
-- Name: embargo id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.embargo ALTER COLUMN id SET DEFAULT nextval('public.embargo_id_seq'::regclass);


--
-- Name: explicitgroup id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.explicitgroup ALTER COLUMN id SET DEFAULT nextval('public.explicitgroup_id_seq'::regclass);


--
-- Name: externalfileuploadinprogress id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.externalfileuploadinprogress ALTER COLUMN id SET DEFAULT nextval('public.externalfileuploadinprogress_id_seq'::regclass);


--
-- Name: externaltool id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.externaltool ALTER COLUMN id SET DEFAULT nextval('public.externaltool_id_seq'::regclass);


--
-- Name: externaltooltype id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.externaltooltype ALTER COLUMN id SET DEFAULT nextval('public.externaltooltype_id_seq'::regclass);


--
-- Name: externalvocabularyvalue id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.externalvocabularyvalue ALTER COLUMN id SET DEFAULT nextval('public.externalvocabularyvalue_id_seq'::regclass);


--
-- Name: fileaccessrequests id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.fileaccessrequests ALTER COLUMN id SET DEFAULT nextval('public.fileaccessrequests_id_seq'::regclass);


--
-- Name: filemetadata id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.filemetadata ALTER COLUMN id SET DEFAULT nextval('public.filemetadata_id_seq'::regclass);


--
-- Name: foreignmetadatafieldmapping id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.foreignmetadatafieldmapping ALTER COLUMN id SET DEFAULT nextval('public.foreignmetadatafieldmapping_id_seq'::regclass);


--
-- Name: foreignmetadataformatmapping id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.foreignmetadataformatmapping ALTER COLUMN id SET DEFAULT nextval('public.foreignmetadataformatmapping_id_seq'::regclass);


--
-- Name: globustaskinprogress id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.globustaskinprogress ALTER COLUMN id SET DEFAULT nextval('public.globustaskinprogress_id_seq'::regclass);


--
-- Name: guestbook id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.guestbook ALTER COLUMN id SET DEFAULT nextval('public.guestbook_id_seq'::regclass);


--
-- Name: guestbookresponse id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.guestbookresponse ALTER COLUMN id SET DEFAULT nextval('public.guestbookresponse_id_seq'::regclass);


--
-- Name: harvestingclient id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.harvestingclient ALTER COLUMN id SET DEFAULT nextval('public.harvestingclient_id_seq'::regclass);


--
-- Name: ingestreport id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.ingestreport ALTER COLUMN id SET DEFAULT nextval('public.ingestreport_id_seq'::regclass);


--
-- Name: ingestrequest id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.ingestrequest ALTER COLUMN id SET DEFAULT nextval('public.ingestrequest_id_seq'::regclass);


--
-- Name: license id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.license ALTER COLUMN id SET DEFAULT nextval('public.license_id_seq'::regclass);


--
-- Name: makedatacountprocessstate id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.makedatacountprocessstate ALTER COLUMN id SET DEFAULT nextval('public.makedatacountprocessstate_id_seq'::regclass);


--
-- Name: metadatablock id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.metadatablock ALTER COLUMN id SET DEFAULT nextval('public.metadatablock_id_seq'::regclass);


--
-- Name: metric id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.metric ALTER COLUMN id SET DEFAULT nextval('public.metric_id_seq'::regclass);


--
-- Name: oairecord id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.oairecord ALTER COLUMN id SET DEFAULT nextval('public.oairecord_id_seq'::regclass);


--
-- Name: oaiset id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.oaiset ALTER COLUMN id SET DEFAULT nextval('public.oaiset_id_seq'::regclass);


--
-- Name: oauth2tokendata id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.oauth2tokendata ALTER COLUMN id SET DEFAULT nextval('public.oauth2tokendata_id_seq'::regclass);


--
-- Name: passwordresetdata id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.passwordresetdata ALTER COLUMN id SET DEFAULT nextval('public.passwordresetdata_id_seq'::regclass);


--
-- Name: retention id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.retention ALTER COLUMN id SET DEFAULT nextval('public.retention_id_seq'::regclass);


--
-- Name: roleassignment id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.roleassignment ALTER COLUMN id SET DEFAULT nextval('public.roleassignment_id_seq'::regclass);


--
-- Name: roleassignmenthistory entry_id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.roleassignmenthistory ALTER COLUMN entry_id SET DEFAULT nextval('public.roleassignmenthistory_entry_id_seq'::regclass);


--
-- Name: savedsearch id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.savedsearch ALTER COLUMN id SET DEFAULT nextval('public.savedsearch_id_seq'::regclass);


--
-- Name: savedsearchfilterquery id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.savedsearchfilterquery ALTER COLUMN id SET DEFAULT nextval('public.savedsearchfilterquery_id_seq'::regclass);


--
-- Name: setting id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.setting ALTER COLUMN id SET DEFAULT nextval('public.setting_id_seq'::regclass);


--
-- Name: shibgroup id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.shibgroup ALTER COLUMN id SET DEFAULT nextval('public.shibgroup_id_seq'::regclass);


--
-- Name: storagequota id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.storagequota ALTER COLUMN id SET DEFAULT nextval('public.storagequota_id_seq'::regclass);


--
-- Name: storagesite id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.storagesite ALTER COLUMN id SET DEFAULT nextval('public.storagesite_id_seq'::regclass);


--
-- Name: storageuse id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.storageuse ALTER COLUMN id SET DEFAULT nextval('public.storageuse_id_seq'::regclass);


--
-- Name: summarystatistic id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.summarystatistic ALTER COLUMN id SET DEFAULT nextval('public.summarystatistic_id_seq'::regclass);


--
-- Name: template id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.template ALTER COLUMN id SET DEFAULT nextval('public.template_id_seq'::regclass);


--
-- Name: termsofuseandaccess id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.termsofuseandaccess ALTER COLUMN id SET DEFAULT nextval('public.termsofuseandaccess_id_seq'::regclass);


--
-- Name: userbannermessage id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.userbannermessage ALTER COLUMN id SET DEFAULT nextval('public.userbannermessage_id_seq'::regclass);


--
-- Name: usernotification id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.usernotification ALTER COLUMN id SET DEFAULT nextval('public.usernotification_id_seq'::regclass);


--
-- Name: vargroup id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.vargroup ALTER COLUMN id SET DEFAULT nextval('public.vargroup_id_seq'::regclass);


--
-- Name: variablecategory id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.variablecategory ALTER COLUMN id SET DEFAULT nextval('public.variablecategory_id_seq'::regclass);


--
-- Name: variablemetadata id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.variablemetadata ALTER COLUMN id SET DEFAULT nextval('public.variablemetadata_id_seq'::regclass);


--
-- Name: variablerange id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.variablerange ALTER COLUMN id SET DEFAULT nextval('public.variablerange_id_seq'::regclass);


--
-- Name: variablerangeitem id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.variablerangeitem ALTER COLUMN id SET DEFAULT nextval('public.variablerangeitem_id_seq'::regclass);


--
-- Name: workflow id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.workflow ALTER COLUMN id SET DEFAULT nextval('public.workflow_id_seq'::regclass);


--
-- Name: workflowcomment id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.workflowcomment ALTER COLUMN id SET DEFAULT nextval('public.workflowcomment_id_seq'::regclass);


--
-- Name: workflowstepdata id; Type: DEFAULT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.workflowstepdata ALTER COLUMN id SET DEFAULT nextval('public.workflowstepdata_id_seq'::regclass);


--
-- Data for Name: actionlogrecord; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.actionlogrecord (id, actionresult, actionsubtype, actiontype, endtime, info, starttime, useridentifier) FROM stdin;
321be467-8702-4902-a0fd-51e5a49b19d4	OK	loadDatasetFields	Admin	2026-03-05 02:56:17.676	rep3412034494352175611tmp	2026-03-05 02:55:56.335	\N
0daad8d9-bb48-4390-a03b-41146be59276	OK	loadDatasetFields	Admin	2026-03-05 02:56:19.257	rep16333693651141038236tmp	2026-03-05 02:56:18.568	\N
6a79f615-d670-498d-a210-da711e0151e6	OK	loadDatasetFields	Admin	2026-03-05 02:56:19.313	rep14301738359551714089tmp	2026-03-05 02:56:19.274	\N
c6626d2f-1be8-4d52-a807-486ec3f8d6f6	OK	loadDatasetFields	Admin	2026-03-05 02:56:19.465	rep10018273638166625498tmp	2026-03-05 02:56:19.327	\N
5278a346-eb9a-4635-8ee0-b77b87b874ae	OK	loadDatasetFields	Admin	2026-03-05 02:56:20.166	rep3207226603514640115tmp	2026-03-05 02:56:19.48	\N
8d182aaa-6597-4109-8ade-a5aefd055b88	OK	loadDatasetFields	Admin	2026-03-05 02:56:20.259	rep10887965982940197254tmp	2026-03-05 02:56:20.181	\N
357f0584-ed72-4e0a-9b4e-8fe23731522d	OK	loadDatasetFields	Admin	2026-03-05 02:56:20.35	rep575690834043017638tmp	2026-03-05 02:56:20.271	\N
39579b1d-f551-4576-8bba-2fce982a0139	OK	createBuiltInRole	Admin	2026-03-05 02:56:20.433	admin:A person who has all permissions for dataverses, datasets, and files.	2026-03-05 02:56:20.422	\N
62363137-19a4-494e-a39c-96890a724fbe	OK	createBuiltInRole	Admin	2026-03-05 02:56:20.448	fileDownloader:A person who can download a published file.	2026-03-05 02:56:20.446	\N
9a13e8b1-1585-4ee9-83ba-1b7fee84a0f6	OK	createBuiltInRole	Admin	2026-03-05 02:56:20.462	fullContributor:A person who can add subdataverses and datasets within a dataverse.	2026-03-05 02:56:20.459	\N
483ed0d7-df29-4527-88b6-7eca5b49b505	OK	createBuiltInRole	Admin	2026-03-05 02:56:20.489	dvContributor:A person who can add subdataverses within a dataverse.	2026-03-05 02:56:20.472	\N
3f6e7feb-a196-4f04-b3fa-48b0f3ec0cdf	OK	createBuiltInRole	Admin	2026-03-05 02:56:20.502	dsContributor:A person who can add datasets within a dataverse.	2026-03-05 02:56:20.5	\N
6daa4e2c-9438-4339-ae16-700451452eb3	OK	createBuiltInRole	Admin	2026-03-05 02:56:20.515	contributor:For datasets, a person who can edit License + Terms, and then submit them for review.	2026-03-05 02:56:20.513	\N
6e151a52-69b2-4676-9936-f9c9fdc23f9e	OK	createBuiltInRole	Admin	2026-03-05 02:56:20.529	curator:For datasets, a person who can edit License + Terms, edit Permissions, and publish and link datasets.	2026-03-05 02:56:20.527	\N
3c9ff0f9-94aa-4163-bef4-4e3403b1bd21	OK	createBuiltInRole	Admin	2026-03-05 02:56:20.544	member:A person who can view both unpublished dataverses and datasets.	2026-03-05 02:56:20.541	\N
03881460-e99e-42b0-afc4-97c76035f4e9	OK	registerProvider	Auth	2026-03-05 02:56:20.575	builtin:Username/Email	2026-03-05 02:56:20.574	\N
95cf3fe4-f2f4-4647-a71b-175734fa78c8	OK	set	Setting	2026-03-05 02:56:20.588	:AllowSignUp: yes	2026-03-05 02:56:20.588	\N
4da56a58-8044-4857-9133-7ec51db5fb15	OK	set	Setting	2026-03-05 02:56:20.601	:SignUpUrl: /dataverseuser.xhtml?editMode=CREATE	2026-03-05 02:56:20.601	\N
2ccac8b7-7bf5-40b6-932a-eac572196dfb	OK	set	Setting	2026-03-05 02:56:20.615	:BuiltinUsersKey: burrito	2026-03-05 02:56:20.615	\N
a80537a1-1820-43b4-aa27-ad8e3c754999	OK	set	Setting	2026-03-05 02:56:20.629	:BlockedApiPolicy: localhost-only	2026-03-05 02:56:20.629	\N
399532c6-7b36-4a56-b795-92067c13cae6	OK	set	Setting	2026-03-05 02:56:20.642	:UploadMethods: native/http	2026-03-05 02:56:20.642	\N
490f306c-f41e-4eea-8330-ff2b962792e9	OK	createUser	Auth	2026-03-05 02:56:20.801	@dataverseAdmin	2026-03-05 02:56:20.801	\N
2baba46d-0e9d-4561-943c-454744d08749	OK	generateApiToken	Auth	2026-03-05 02:56:20.808	user:@dataverseAdmin token:71115409-330a-4351-8099-3511a2bcaab0	2026-03-05 02:56:20.807	\N
f83a2daf-3c65-466e-aa38-6e8be296c0e9	OK	create	BuiltinUser	2026-03-05 02:56:20.815	builtinUser:dataverseAdmin authenticatedUser:@dataverseAdmin	2026-03-05 02:56:20.665	\N
77b18a4f-cf29-4b37-9e5c-ee20c6ae16ba	OK	setSuperuserStatus	Admin	2026-03-05 02:56:20.836	dataverseAdmin:true	2026-03-05 02:56:20.83	\N
f39a28c6-2b24-4e79-a5d4-81e41aa6d364	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateDataverseCommand	Command	2026-03-05 02:56:21.114	:<null> 	2026-03-05 02:56:20.872	@dataverseAdmin
a7ec1ca0-6774-4901-8e44-02fc6fcf48cc	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDataverseMetadataBlocksCommand.SetRoot	Command	2026-03-05 02:56:21.159	:[1 Root] 	2026-03-05 02:56:21.159	@dataverseAdmin
762faa92-cb21-47dd-9c75-759edd03cc76	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDataverseMetadataBlocksCommand.SetBlocks	Command	2026-03-05 02:56:21.16	:[1 Root] 	2026-03-05 02:56:21.157	@dataverseAdmin
69f5aace-1fe3-420f-8d9f-a84f7876eb27	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDataverseCommand	Command	2026-03-05 02:56:21.195	:[1 Root] 	2026-03-05 02:56:21.186	@dataverseAdmin
cd07aba7-1763-4e31-95f5-fe90fbe9d460	OK	licenseAdded	Admin	2026-03-05 02:56:21.314	License CC BY 4.0(http://creativecommons.org/licenses/by/4.0) as id: 2.	2026-03-05 02:56:21.314	@dataverseAdmin
82e4e69a-80eb-4192-ae83-cf76d568d39f	OK	delete	Setting	2026-03-05 02:56:21.326	:BuiltinUsersKey	2026-03-05 02:56:21.326	\N
64acdee8-cbdf-45bc-81db-4b77ee5545c7	OK	set	Setting	2026-03-05 02:56:21.341	:BlockedApiEndpoints: admin,builtin-users	2026-03-05 02:56:21.341	\N
a3298def-3449-497b-bb27-febebbbd77a1	OK	loadDatasetFields	Admin	2026-03-05 02:58:40.074	rep8883184420743341483tmp	2026-03-05 02:58:39.997	\N
4f549c62-8f5a-4241-95e6-dd6f2d320627	OK	loadDatasetFields	Admin	2026-03-05 02:58:40.591	rep18098083675947312313tmp	2026-03-05 02:58:40.414	\N
ff0bb8ad-40ca-4ed0-98a5-278bc1c49734	OK	loadDatasetFields	Admin	2026-03-05 02:58:46.126	rep17486506995261880249tmp	2026-03-05 02:58:40.911	\N
85577d9d-82ab-43e6-b6bc-7e006b9b013c	OK	set	Setting	2026-03-05 02:58:53.662	:FooterCopyright: &#160;DANS	2026-03-05 02:58:53.662	\N
33f5627c-0c9f-40f0-b874-bb6429bc4ff2	OK	set	Setting	2026-03-05 02:58:53.853	:Protocol: doi	2026-03-05 02:58:53.853	\N
edc722a5-1d7d-4b5d-ae23-adc95c1906f5	OK	set	Setting	2026-03-05 02:58:54.05	:DoiProvider: FAKE	2026-03-05 02:58:54.05	\N
a04ec29c-5cf9-4c20-83cc-9f1d725c2aa1	OK	set	Setting	2026-03-05 02:58:54.241	:Authority: 10.5072	2026-03-05 02:58:54.241	\N
44847849-613a-4187-8b4c-2d1910b2f904	OK	set	Setting	2026-03-05 02:58:54.447	:Shoulder: DVNL/	2026-03-05 02:58:54.447	\N
1a945ad9-1f60-492a-ad08-b3d8f725cf7c	OK	set	Setting	2026-03-05 02:58:54.83	:AllowSignUp: True	2026-03-05 02:58:54.83	\N
2632d9f5-352b-4f5d-bd20-6dda8bd3d7d5	OK	set	Setting	2026-03-05 02:58:55.03	:BlockedApiEndpoints: admin,builtin-users	2026-03-05 02:58:55.03	\N
ba8c28f2-7e64-46e1-9a09-bc15f381b38b	OK	set	Setting	2026-03-05 02:58:55.217	:BlockedApiPolicy: localhost-only	2026-03-05 02:58:55.217	\N
3a5b9296-47f2-4bea-9cb3-de1823fc9357	OK	set	Setting	2026-03-05 02:58:55.407	:FileFixityChecksumAlgorithm: SHA-1	2026-03-05 02:58:55.407	\N
788a209a-3b65-4568-924c-486ed4812818	OK	set	Setting	2026-03-05 02:58:55.636	:FilePIDsEnabled: False	2026-03-05 02:58:55.636	\N
0855c8ab-4c12-430b-aa8c-4fad431e5dc6	OK	set	Setting	2026-03-05 02:58:55.829	:MaxFileUploadSizeInBytes: 10000000000	2026-03-05 02:58:55.829	\N
25db839f-cd85-4fd8-94b1-52a4a81a9b65	OK	set	Setting	2026-03-05 03:01:08.258	:ExcludeEmailFromExport: true	2026-03-05 03:01:08.257	\N
31e66e99-01b7-484d-802d-490bebe2e007	OK	set	Setting	2026-03-05 03:01:08.591	:ShowMuteOptions: true	2026-03-05 03:01:08.591	\N
c43d5ba5-5812-4a4a-b10d-fe349658ea2d	OK	set	Setting	2026-03-05 03:01:08.93	:NeverMuted: CONFIRMEMAIL,CREATEACC,GRANTFILEACCESS,REJECTFILEACCESS,REQUESTFILEACCESS,RETURNEDDS,SUBMITTEDDS	2026-03-05 03:01:08.93	\N
5fcb878f-b51d-4dc0-85a7-3d8244464be1	OK	set	Setting	2026-03-05 03:01:09.263	:ApplicationTermsOfUse: <!DOCTYPE html>\n<html>\n<body>\n\n<h1>DataverseNL General Terms of Use</h1>\n<p>Version: October 7, 2019</p>\n\n<h2>Content</h2>\n<ol>\n    <li>Acceptance of Terms of Use </li>\n    <li>Modification of Terms of Use</li>\n    <li>Definitions</li>\n    <li>Registration</li>\n    <li>User Submissions</li>\n    <li>Rules and Conduct</li>\n    <li>Privacy</li>\n    <li>Termination</li>\n    <li>No Warranties</li>\n    <li>Limitation of Liability</li>\n    <li>Indemnification</li>\n    <li>Dispute Resolution</li>\n    <li>Integration and Severability</li>\n    <li>Miscellaneous</li>\n    <li>Copyright and Trademark Notices </li>\n</ol>\n\n<h2>1. Acceptance of Terms of Use </h2>\n<p>The following terms and conditions govern all use of the DataverseNL website (<a href="https://dataverse.nl/">https://dataverse.nl/</a>) (the Site), the DataverseNL demonstration website (<a href="https://demo.dataverse.nl">https://demo.dataverse.nl</a>) and the services available on or at the Site (taken together, the Service). The Service is operated by Data Archiving and Networked Services (DANS). The Service is offered subject to acceptance without modification of all of the terms and conditions contained herein (Terms of Use) and all other operating rules, policies and procedures that may be published from time to time on this Site by DANS. </p>\n<p>You represent and warrant that you are not under any obligation or restriction created by law, contract or otherwise that would prevent you from entering into and fully performing these Terms of Use. </p>\n<p>By clicking “I accept” and/or by your use of the Service, you agree and accept all terms in this General Terms of Use , hereafter “Agreement”.</p>\n\n<h2>2. Modification of Terms of Use </h2>\n<p>DataverseNL reserves the right to modify or replace any of the Terms of Use at any time. It is your responsibility to check the Agreement periodically for changes. Your continued use of the Service following the posting of any changes to the Agreement constitutes acceptance of those changes. </p>\n\n<h2>3. Definitions</h2>\n<p>Account– A User-controlled means of access to DataverseNL. This can be an institutional account via the Federated login facility of SURFconext, or a local account that is protected by a User-created login username and password, with which Users can obtain access to DataverseNL Dataverse’s uploading and downloading functionalities.</p>\n<p>Administrator– The User who created, controls and is the main organizer, curator, and manager of a particular dataverse.</p>\n<p>Agreement– The General Terms of Use in its entirety.</p>\n<p>Author– The person(s) from whom the data within the dataset originated; the person(s) who conducted the research that led to the creation of the dataset. This person can but need not be the same as the Depositor.</p>\n<p>Content– Any information, data, text, software, scripts, graphics, and interactive features found on the DANS DataverseNL application.</p>\n<p>Curator - a person who can edit License + Terms, edit Permissions, and publish datasets.</p>\n<p>Data Use Agreement– This is the restricted data usage license agreement option that DataverseNL offers. If applied to a User Submission, the Data Use Agreement will be a legally-binding license contract between the Depositor and any Downloader of that User Submission.</p>\n<p>Data Usage License Agreement– The license agreement between a Depositor and a Downloader governing the limits and restrictions (or lack thereof) of how the downloaded User Submissions can be used.</p>\n<p>Dataset– A study, experiment, set of observations, or publication that is uploaded by a User. A dataset can comprise a single file or multiple files.</p>\n<p>Dataverse– A virtual container with which to store research data studies (including datasets and other dataverses) that can be customized and managed by its owner.</p>\n<p>Depositor– The User who uploads a collection of data files as a dataset to a dataverse on the application.</p>\n<p>DANS DataverseNL – The repository application server as a whole, including all Services, Content, and related features.</p>\n<p>Metadata– Accompanying information, either in a separate file or otherwise included in the dataset, about a particular dataset or dataverse, including but not limited to Author’s name, publishing date, title of data contents, description of contents, and other such related information.</p>\n<p>Publish– A function available for User Submissions by which Users can make their dataverse and/or their dataset containing data files publicly available and publicly searchable on DataverseNL search engine and third-party search engines (e.g., NARCIS, Google Search or Bing Search).</p>\n<p>Registration Information– Information required to register for an Account, including but not limited to name, email, institution and position. </p>\n<p>Restricted User Submissions – Any User Submissions that are published with either Data Use Agreement or with a customized Data Usage License Agreement that the Depositor drafts and/or designates for the Submission.</p>\n<p>Service– the DANS DataverseNL application and all of the available services, functions, and capabilities afforded on the application.</p>\n<p>Site– the DANS DataverseNL application and server.</p>\n<p>Spamming– Any unauthorized or unsolicited advertising, junk or bulk e-mail, messages, comments, or other communications directly or indirectly stemming from use of DataverseNL, including but not limited to comments posted to Author’s dataset pages and messages or other communications sent to User’s email addresses, accounts, or other means of contact.</p>\n<p>Unrestricted User Submissions– Any User Submissions that are published with a default CC0 default public domain dedication waiver agreement.</p>\n<p>Use of the Service– Any access to, use of, or other action involving the DANS DataverseNL application’s functions, services, resources, and repository of datasets, including but not limited to any uploading, posting, submitting, storing, searching for, downloading, distributing, facilitating distributions, and otherwise utilizing any Content found on the Harvard Dataverse application.</p>\n<p>User– Any individual or entity who owns and/or controls a registered account on DANS DataverseNL.</p>\n<p>User Submissions– Uploaded dataverses and datasets.</p>\n\n<h2>4. Registration</h2>\n<p>\n    As a condition to using the Service, you may be required to register with DataverseNL. If you are affiliated to a participating institution, you should use the login facility provided by your institution and DataverseNL (Federated Login Facility) and authenticate with your institution. Your institution may authorise your use of DataverseNL and allow you to create a DataverseNL Account. \n    If you are not affiliated with one of the participating institutions, you can create a local Account within DataverseNL. By registering for a local Account with the Service, you must enter your real name and a valid email address. You may in addition register your affiliation, and type of employment with your Account. You shall provide DataverseNL with accurate, complete, and updated registration information. Failure to do so shall constitute a breach of this Agreement, which may result in immediate termination of your DataverseNL Account. You shall not (i) select or use as a DataverseNL Login Name a name of another person with the intent to impersonate that person; (ii) use as a DataverseNL Login Name a name subject to any rights of a person other than you without appropriate authorization; or (iii) use as a DataverseNL Screen Name a name that is otherwise offensive, vulgar or obscene. DANS reserves the right to refuse registration of, or cancel a DataverseNL User Account in its sole discretion. You are solely responsible for activity that occurs on your Account and shall be responsible for maintaining the confidentiality of your DataverseNL and/or institution password. You shall never use another user's Account without such other user's express permission. You will immediately notify DANS in writing to <a href="mailto:info@dataverse.nl">info@dataverse.nl</a> of any unauthorized use of your Account, or other Account related security breach of which you are aware. \n</p>\n\n<h2>5. User Submissions</h2>\n<p>\n    Depending on the policies of your institute the Service provides you with the ability to upload, submit, disclose, distribute or otherwise post (hereafter, posting) Content to the Service (User Submissions) and to allow other users to do so. The Service provides you with the ability to display, organize, and accept Content through creating a Dataverse. For purposes of this Agreement, "Content" includes, without limitation, any information, data, text, software, scripts, graphics, and interactive features generated, provided, or otherwise made accessible on or through the Service.\n    An important part of the mission of DANS is to acquire and preserve research data and provide access to it. DANS archives the Content at multiple locations. DANS will use good archival practices to retain Content deposited into the Site.\n</p>\n<p>\n    You will be held legally and financially responsible for damages to any of the participants in DataverseNL if Content you contribute violates this Agreement.\n    The Service gives the Depositor the ability to restrict access to User Submissions to specified Accounts (Restricted User Submissions). All other User Submissions shall be deemed Unrestricted User Submissions.<br>\n    You give permission and any required licenses to DANS to make the Content available for archiving, preservation and access. You represent and warrant you are lawfully entitled and have full authority to license DANS to archive, preserve and give access to the User Submissions in the ways described in this Agreement.\n    You are solely responsible for the User Submissions you post on or through the Service. DANS does not review or endorse User Submissions and has no control over any User Submission. \n</p>\n<p>DANS has no obligation to monitor the Site, Service, Content, or User Submissions. DANS may remove any User Submission at any time if it does not comply with this Agreement for posting User Content. </p>\n\n<h2>6. Rules and Conduct</h2>\n<p>By posting User Submissions on or at the Site, or otherwise through the Service, to your Dataverse or other Dataverses, or by allowing others to do so, you make the following representations and warranties to DataverseNL: </p>\n<ol>\n    <li>You shall use the Service in agreement with the relevant VSNU and university codes of conduct for scientific integrity and for the use of personal data in research. </li>\n    <li>You shall ensure that Content meets this Agreement and the terms of your institute.</li>\n    <li>You shall, in the event of processing personal data as referred to in the General Data Protection Regulation (GDPR), only include personal data within a data file in a dataset that is subjected to Data Usage License Agreement with appropriate usage requirements. This means that any Content (i.e. Metadata, file names) that becomes public shall not contain personal data, except for personal data necessary for the accountability of the dataset (i.e. the author(s)).</li>\n    <li>You shall not use the Service for any purpose that is prohibited by this Agreement. </li>\n</ol>\n<p>You shall not (or permit others to) either (a) take any action or (b) upload, download, post, submit or otherwise distribute or facilitate distribution of any Content that: </p>\n<ol>\n    <li>Infringes the copyrights or other intellectual property rights, including, but not limited to any patent (applications), know how, trademark, trade secret, right of publicity or other right of any other person or entity; or </li>\n    <li>Is unlawful, threatening, abusive, harassing, defamatory, libellous, deceptive, fraudulent, invasive of another's privacy, tortious, obscene, offensive, or profane; or </li>\n    <li>Constitutes unauthorized or unsolicited advertising, junk or bulk e-mail ("spamming"); or </li>\n    <li>Contains software viruses or any other computer codes, files, or programs that are designed or intended to disrupt, damage, limit or interfere with the proper function of any software, hardware, or telecommunications equipment or to damage or obtain unauthorized access to any system, data or other information of DANS or any third party. </li>\n    <li>Imposes or may impose (as determined by DANS in its sole discretion) an unreasonable or disproportionately large load on DANS's (or its third party providers') infrastructure; (ii) interfere or attempt to interfere with the proper working of the Service or any activities conducted on the Service; or (iii) bypass any measures DataverseNL may use to prevent or restrict access to the Service (or other accounts, computer systems or networks connected to the Service). </li>\n</ol>\n<p>You will promptly notify DataverseNL of any confidentiality, privacy or data protection, licensing, or intellectual property issues regarding the User Submissions. <br>You acknowledge that DataverseNL will not be liable for any loss of or damage to the User Submissions, either in whole or in part. </p>\n\n<h2>7. Privacy</h2>\n<p>\n    If you are an Author or Depositor of a Dataset, your name will be part of the metadata of the Dataset. \n    By submitting an access request for a restricted dataset, your name and email address as included in your Account are shared with the Depositor, Curator or Administrator of the dataset.\n    When you want to download files, with or without an account, you may be asked to complete a Guestbook first. Your data will be shown to the depositor, curator or administrator of the relevant dataset. \n    The information in your Account may be used to contact you with regard to DataverseNL. DataverseNL will not actively distribute or in other ways provide access to your Account information to third parties.\n</p>\n\n<h2>8. Termination</h2>\n<p>\n    If you wish to terminate your Account, you may notify your institution. For contact information see: <a href="https://dans.knaw.nl/en/about/services/DataverseNL/support">https://dans.knaw.nl/en/about/services/DataverseNL/support</a>.\n    When You do not comply with the Rules and Conduct of this Agreement, or when your participating institution files a request to do so, DataverseNL may terminate your account and/or your access to all or any part of the Service at any time, with or without notice.\n    All provisions of this Agreement which by their nature should survive termination shall survive termination, including, without limitation, warranty disclaimers, indemnity and limitations of liability. \n</p>\n\n<h2>9. No Warranties</h2>\n<p>The Service (including, without limitation, the Content and the User Submissions) is provided 'as is' and 'as available' and is without warranty of any kind, express or implied, including but not limited to, the implied warranties of title, non-infringement, merchantability and fitness for a particular purpose. DANS makes no warranties, express or implied, by operation of law or otherwise, regarding or relating to the Service or Content provided. More specific, DANS does NOT warrant that: </p>\n<ol>\n    <li>The Content or User Submissions are timely, accurate, complete, reliable or correct;</li>\n    <li>The Service will be secure or available at any particular time or location; </li>\n    <li>Any defects or errors will be corrected; the Content or User Submissions are free of viruses or other harmful components ; or </li>\n    <li>The results of using the Service will meet your requirements. </li>\n</ol>\n<p>Your use of the Service is solely at your own risk. </p>\n\n<h2>10. Limitation of Liability</h2>\n<p>In no event shall DANS be liable with respect to the Service or any Content or User Submissions (i) for any lost profits or damages of any kind, (ii) for any bugs, software viruses or any other computer codes, files or programs designated or intended to disrupt, damage, limit or interfere with the proper function of the Service, or (iii) for any errors or omissions in any Content or User Submissions or for any loss or damage of any kind incurred as a result of your use of any Content or User Submission posted, email, transmitted or otherwise made available on or through the Service. </p>\n\n<h2>11. Indemnification</h2>\n<p>You will indemnify and hold DANS harmless from and against any and all loss, cost, expense, liability, or damage, including, without limitation, all reasonable attorneys' fees and court costs, arising from the i) use or misuse of the Service; (ii) your access to the Site, use of the Services, violation of this Agreement by you; or (iii) the infringement by you, or any third party using your Account, of any intellectual property or other right of any person or entity. Such losses, costs, expenses, damages, or liabilities shall include, without limitation, all actual, general, special, and consequential damages. </p>\n\n<h2>12. Dispute Resolution</h2>\n<p>This Agreement shall be governed by and interpreted in accordance with the laws of the Netherlands. Any dispute arising under or in connection with these Terms of Use and which cannot be settled amicably between you and DANS shall be finally settled by the competent courts of Amsterdam. </p>\n\n<h2>13. Integration and Severability</h2>\n<p>The Terms of Use are the entire agreement between you and DANS with respect to the Service and use of this Site, and supersede all prior or contemporaneous communications and proposals (whether oral, written or electronic) between you and DANS with respect to this Service (but excluding the use of any software which may be subject to a separate end-user license agreement). </p>\n\n<h2>14. Miscellaneous</h2>\n<p>The Terms of Use are personal to you, and are not assignable, transferable or sublicensable by you except with DANS's prior written consent. DANS may assign, transfer or delegate any of its rights and obligations hereunder without consent. No agency, partnership, joint venture, or employment relationship is created as a result of this Agreement of Use and neither party has any authority of any kind to bind the other in any respect. All notices under this Agreement will be in writing. </p>\n\n<h2>15. Copyright and Trademark Notices</h2>\n<p>You acknowledge that the copyright in any additional data added by DANS to the user materials, and any search software, user guides, documentation and any other intellectual property that is prepared by DANS to assist users in using the User Submissions will belong to DANS or the users creating the Content (respectively). </p>\n<p>You may not use the name "DANS" or “DataverseNL” (as an abbreviation or in full, alone or as part of another name) in advertising or promotional materials without DANS's prior written approval. DataverseNL and Dataverse logo are neither trademarks nor registered trademarks of DANS. </p>\n\n</body>\n</html>	2026-03-05 03:01:09.263	\N
7ab33811-4344-42b4-93a9-569dbab5c67d	OK	set	Setting	2026-03-05 03:01:09.589	:SolrFullTextIndexing: true	2026-03-05 03:01:09.588	\N
26564213-2888-4140-b42a-0fb27c84744d	OK	set	Setting	2026-03-05 03:01:09.92	:SolrMaxFileSizeForFullTextIndexing: 3000000	2026-03-05 03:01:09.92	\N
61269872-9e0a-4fdd-95dd-ebada385c1e6	OK	set	Setting	2026-03-05 03:01:10.24	:SystemEmail: noreply@datastations.nl	2026-03-05 03:01:10.24	\N
6ec5c013-88f2-48c3-bcd6-ac8f4c857b84	OK	set	Setting	2026-03-05 03:01:10.569	:ZipUploadFilesLimit: 2000	2026-03-05 03:01:10.569	\N
6bb96e5d-8670-44ee-8453-81c05789e375	OK	set	Setting	2026-03-05 03:01:10.911	:ZipDownloadLimit: 10000000000	2026-03-05 03:01:10.911	\N
849ba24a-e808-4394-9717-000c9e57c2cf	OK	set	Setting	2026-03-05 03:01:11.241	:ShibIdpSelectEnabled: false	2026-03-05 03:01:11.241	\N
099abd53-dfd1-43ca-a315-aac2e87ec545	OK	set	Setting	2026-03-05 03:01:11.567	:AnonymizedFieldTypeNames: author, datasetContact, contributor, depositor, grantNumber, publication, distributor, producer	2026-03-05 03:01:11.567	\N
1be3bd9d-f236-4e46-8baa-6ff89987635f	OK	registerProvider	Auth	2026-03-05 03:01:23.726	builtin:Username/Email	2026-03-05 03:01:23.726	\N
fd794bba-fbd7-44c9-94f3-8e57651f8474	OK	registerProvider	Auth	2026-03-05 03:01:23.74	shib:Your Institution	2026-03-05 03:01:23.74	\N
e3c1e9a3-6dfb-40a6-ad28-3b10178d1ed5	OK	set	Setting	2026-03-05 03:03:12.178	:MaxFileUploadSizeInBytes: 10000000000	2026-03-05 03:03:12.177	\N
bc1631f9-f572-459a-b129-a08839e4dd91	OK	set	Setting	2026-03-05 03:03:12.479	:ZipDownloadLimit: 10000000000	2026-03-05 03:03:12.479	\N
1e695ff6-e8b7-4a99-b53a-ec1d72b4a14e	OK	set	Setting	2026-03-05 03:03:12.772	:ZipUploadFilesLimit: 2000	2026-03-05 03:03:12.772	\N
a87cabe5-cf11-411e-8263-5546bcc2892a	OK	set	Setting	2026-03-05 03:03:13.076	:TabularIngestSizeLimit: 0	2026-03-05 03:03:13.076	\N
2a1db969-0fc8-4d30-a8e2-67a18914b9fe	OK	set	Setting	2026-03-05 03:03:13.449	:SolrFullTextIndexing: true	2026-03-05 03:03:13.448	\N
4bd5b7d0-f29c-45c7-a030-39bba6dbf5e9	OK	set	Setting	2026-03-05 03:03:13.842	:SolrMaxFileSizeForFullTextIndexing: 3000000	2026-03-05 03:03:13.842	\N
257e8080-8ad9-4188-838e-fa1d0ca43bf0	OK	set	Setting	2026-03-05 03:03:14.231	:AllowRemoteAuthSignUp: {"default": "true", "orcid-sandbox": "false"}	2026-03-05 03:03:14.231	\N
2d900409-03b8-49de-bdd8-83f8dee17285	OK	set	Setting	2026-03-05 03:03:14.61	:BagItLocalPath: /var/opt/dans.knaw.nl/tmp/dve-outbox	2026-03-05 03:03:14.61	\N
be9fb8a1-9e2f-4126-8dd5-d6cdd75613b9	OK	set	Setting	2026-03-05 03:03:14.984	:ArchiverClassName: edu.harvard.iq.dataverse.engine.command.impl.LocalSubmitToArchiveCommand	2026-03-05 03:03:14.984	\N
27c06875-aa24-46e4-80a3-1d05dd67edf6	OK	set	Setting	2026-03-05 03:03:15.381	:ArchiverSettings: :BagItLocalPath,:BagGeneratorThreads	2026-03-05 03:03:15.381	\N
ea80da4f-c83f-40d0-bb00-ce73edc31f8c	OK	delete	Setting	2026-03-05 03:03:21.952	:DoiProvider	2026-03-05 03:03:21.952	\N
9f9507cd-f3f6-4c41-bcb8-80de7b77de87	OK	delete	Setting	2026-03-05 03:03:22.352	:Protocol	2026-03-05 03:03:22.352	\N
b69fe125-842c-4921-b8d0-ca8bc2629e3c	OK	delete	Setting	2026-03-05 03:03:22.729	:Authority	2026-03-05 03:03:22.728	\N
7d462128-9136-40d8-8121-8454ac72d01e	OK	delete	Setting	2026-03-05 03:03:23.036	:Shoulder	2026-03-05 03:03:23.036	\N
9e366ef2-0b99-428d-b584-3f8815480666	OK	edu.harvard.iq.dataverse.engine.command.impl.ListMetadataBlocksCommand	Command	2026-03-05 03:04:46.904	:[1 Root] 	2026-03-05 03:04:46.896	@dataverseAdmin
b714e373-bbb8-4317-bbeb-ab60b5120d40	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDataverseMetadataBlocksCommand.SetRoot	Command	2026-03-05 03:04:47.343	:[1 Root] 	2026-03-05 03:04:47.341	@dataverseAdmin
6397e8ba-1a0b-4147-a807-59faf804cd5c	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDataverseMetadataBlocksCommand.SetBlocks	Command	2026-03-05 03:04:47.345	:[1 Root] 	2026-03-05 03:04:47.341	@dataverseAdmin
926b567a-d75c-44c6-9791-298a7889c06d	OK	set	Setting	2026-03-05 03:05:41.97	:FooterCustomizationFile: /etc/opt/dans.knaw.nl/dataverse-branding/custom-footer.html	2026-03-05 03:05:41.969	\N
a2fab0c3-7d0c-4f1f-ad25-7869211b775c	OK	set	Setting	2026-03-05 03:05:42.345	:StyleCustomizationFile: /etc/opt/dans.knaw.nl/dataverse-branding/custom-stylesheet.css	2026-03-05 03:05:42.345	\N
17469ba5-ac98-41b9-8d4a-2cf21dbfb794	OK	set	Setting	2026-03-05 03:05:46.513	:LogoCustomizationFile: /logos/branding/DataverseNL-logo-small.png	2026-03-05 03:05:46.513	\N
d6a81cc2-6dcc-457f-ac01-144f93840c02	OK	set	Setting	2026-03-05 03:05:48.915	:NavbarAboutUrl: https://dans.knaw.nl/en/data-services/dataversenl/	2026-03-05 03:05:48.915	\N
ee979398-4ea4-4f77-b80a-fcc2b7583f6e	OK	set	Setting	2026-03-05 03:05:49.393	:NavbarSupportUrl: https://dans.knaw.nl/en/data-services/dataversenl/institutions	2026-03-05 03:05:49.393	\N
6ceb2766-c545-416e-80fd-c10478c14020	OK	set	Setting	2026-03-05 03:05:49.916	:NavbarGuidesUrl: https://dans.knaw.nl/en/data-services/dataversenl/user-guide/	2026-03-05 03:05:49.916	\N
54f08be1-a2f3-4b23-ad81-bd10b9df7924	OK	registerProvider	Auth	2026-03-05 03:05:51.33	builtin:Username/Email	2026-03-05 03:05:51.329	\N
a37c6356-fa64-4501-afcb-d3cda89d7e79	OK	registerProvider	Auth	2026-03-05 03:05:51.341	shib:Your Institution	2026-03-05 03:05:51.341	\N
22a7c6a2-805b-4dfd-bf31-2aa849ed31fe	OK	deregisterProvider	Auth	2026-03-05 03:05:51.345	builtin	2026-03-05 03:05:51.345	\N
bb6bd6ba-fac7-46b5-9096-3ce815d3911d	OK	deregisterProvider	Auth	2026-03-05 03:05:51.719	shib	2026-03-05 03:05:51.719	\N
1fd864b7-5fa8-4e12-a3f8-9ecb6e33db87	OK	registerProvider	Auth	2026-03-05 03:05:52.075	shib:Your Institution	2026-03-05 03:05:52.075	\N
b1735476-bf31-470c-99a7-2c0df0bc92b3	OK	registerProvider	Auth	2026-03-05 03:05:52.39	builtin:Username/Email	2026-03-05 03:05:52.39	\N
69a3499d-4668-42bd-97e9-9a0782521478	OK	set	Setting	2026-03-05 03:05:52.803	:DefaultAuthProvider: shib	2026-03-05 03:05:52.803	\N
d2cb41b0-21e2-4e41-919e-6610359e2b01	OK	set	Setting	2026-03-05 03:05:53.924	:MaxEmbargoDurationInMonths: 24	2026-03-05 03:05:53.924	\N
38a8f4c1-4310-4c90-b106-a205e59b1fad	OK	set	Setting	2026-03-05 03:05:54.67	:MinRetentionDurationInMonths: 12	2026-03-05 03:05:54.669	\N
8ee6215b-fc27-478e-8bdf-ab330a9e13d1	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDataverseCommand	Command	2026-03-05 03:05:55.902	:[1 Root] 	2026-03-05 03:05:55.865	@dataverseAdmin
a272aa08-d84f-4a69-8e0c-6baa4604cf9b	OK	licenseAdded	Admin	2026-03-05 03:05:57.163	License CC-BY-SA-4.0(http://creativecommons.org/licenses/by-sa/4.0) as id: 3.	2026-03-05 03:05:57.162	@dataverseAdmin
ab77dc7d-8721-497c-867c-ae63dc0690b9	OK	licenseAdded	Admin	2026-03-05 03:05:57.468	License CC-BY-NC-4.0(http://creativecommons.org/licenses/by-nc/4.0) as id: 4.	2026-03-05 03:05:57.468	@dataverseAdmin
f767d5d9-effc-4b77-94b4-7cff86769483	OK	licenseAdded	Admin	2026-03-05 03:05:57.854	License CC-BY-ND-4.0(http://creativecommons.org/licenses/by-nd/4.0) as id: 5.	2026-03-05 03:05:57.854	@dataverseAdmin
71540712-0799-4fc5-9b01-712d8ed9f839	OK	licenseAdded	Admin	2026-03-05 03:05:58.227	License CC-BY-NC-ND-4.0(http://creativecommons.org/licenses/by-nc-nd/4.0) as id: 6.	2026-03-05 03:05:58.227	@dataverseAdmin
6c5e501f-6826-498e-a6a3-991149e27831	OK	licenseAdded	Admin	2026-03-05 03:05:58.609	License CC-BY-NC-SA-4.0(http://creativecommons.org/licenses/by-nc-sa/4.0) as id: 7.	2026-03-05 03:05:58.609	@dataverseAdmin
a3566bea-5949-44e7-a240-d75b65f51405	OK	set	Setting	2026-03-05 03:05:59.484	:CVocConf: [{"field-name": "authorAffiliation", "term-uri-field": "authorAffiliation", "js-url": ["/custom/ror.js", "/custom/cvocutils.js"], "protocol": "ror", "retrieval-uri": "https://api.ror.org/v2/organizations/{0}", "allow-free-text": true, "prefix": "https://ror.org/", "managed-fields": {}, "languages": "", "vocabs": {"rors": {"uriSpace": "https://ror.org/"}}, "retrieval-filtering": {"@context": {"termName": "https://schema.org/name", "scheme": "http://www.w3.org/2004/02/skos/core#inScheme", "lang": "@language", "content": "@value"}, "scheme": {"pattern": "http://www.grid.ac/ontology/"}, "termName": {"pattern": "{0}", "params": ["/names/types=ror_display/value"]}, "@type": {"pattern": "https://schema.org/Organization"}}}]	2026-03-05 03:05:59.484	\N
d39204fc-bdc5-419f-a6f5-a481d94bcf25	OK	edu.harvard.iq.dataverse.engine.command.impl.ListRolesCommand	Command	2026-03-05 03:06:02.51	:[1 Root] 	2026-03-05 03:06:02.506	@dataverseAdmin
69abb93c-9574-4e11-9f88-59a84356c44f	OK	set	Setting	2026-03-05 03:10:09.754	:ShibAffiliationAttribute: schacHomeOrganization	2026-03-05 03:10:09.754	\N
9fd8c7e0-6f9d-402b-a4a2-65317ac7a633	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateRoleCommand	Command	2026-03-05 03:06:02.964	:[1 Root] 	2026-03-05 03:06:02.953	@dataverseAdmin
525ba193-d1b2-4521-aa47-c2d96db05070	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateRoleCommand	Command	2026-03-05 03:06:03.285	:[1 Root] 	2026-03-05 03:06:03.277	@dataverseAdmin
c26d818a-6fbe-43f6-b83c-99b665ed7bbe	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateRoleCommand	Command	2026-03-05 03:06:03.661	:[1 Root] 	2026-03-05 03:06:03.658	@dataverseAdmin
a1255981-1d4a-4c75-8699-da25c75d8e83	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateRoleCommand	Command	2026-03-05 03:06:04.038	:[1 Root] 	2026-03-05 03:06:04.034	@dataverseAdmin
419e69e9-d3de-4f6a-86cc-f42bf76dffd7	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateRoleCommand	Command	2026-03-05 03:06:04.38	:[1 Root] 	2026-03-05 03:06:04.375	@dataverseAdmin
48b0fdd5-bc02-4d6f-9c89-35fc5ee8af7a	OK	edu.harvard.iq.dataverse.engine.command.impl.AssignRoleCommand	Command	2026-03-05 03:06:05.568	[AuthenticatedUsers :authenticated-users] has been given DataverseRole{id=5, alias=dsContributor} on [1 Root]	2026-03-05 03:06:05.559	@dataverseAdmin
c9633179-b7ee-4481-8be5-1b7191e44447	OK	createUser	Auth	2026-03-05 03:06:21.455	@user001	2026-03-05 03:06:21.455	\N
62c45e8f-b380-4bf5-aad3-0190ee0323ea	OK	createUser	Auth	2026-03-05 03:06:21.845	@user002	2026-03-05 03:06:21.844	\N
1673ead6-8101-4441-bd8e-c68ee0416df5	OK	createUser	Auth	2026-03-05 03:06:21.972	@user003	2026-03-05 03:06:21.972	\N
827b1cd0-cefd-45b0-96b4-cbb3ad94050c	OK	createUser	Auth	2026-03-05 03:06:22.086	@depositor001	2026-03-05 03:06:22.086	\N
4e6a2504-9094-4196-9e27-130833a03a1f	OK	createUser	Auth	2026-03-05 03:06:22.199	@downloader001	2026-03-05 03:06:22.199	\N
11f8afa1-7578-4a68-bb9a-5e94e9d014be	OK	createUser	Auth	2026-03-05 03:06:22.301	@datamanager001	2026-03-05 03:06:22.301	\N
497bb5f2-9579-438f-9b25-c2369a5d3f2c	OK	edu.harvard.iq.dataverse.engine.command.impl.AssignRoleCommand	Command	2026-03-05 03:06:25.212	[AuthenticatedUser identifier:@user001] has been given DataverseRole{id=12, alias=swordpublisher} on [1 Root]	2026-03-05 03:06:25.21	@dataverseAdmin
67a89aa9-0b63-427a-b351-0909441977de	OK	edu.harvard.iq.dataverse.engine.command.impl.AssignRoleCommand	Command	2026-03-05 03:06:25.819	[AuthenticatedUser identifier:@user002] has been given DataverseRole{id=9, alias=datamanager} on [1 Root]	2026-03-05 03:06:25.816	@dataverseAdmin
8d30d0b8-c64d-42bc-af70-919a8da32b39	OK	edu.harvard.iq.dataverse.engine.command.impl.AssignRoleCommand	Command	2026-03-05 03:06:26.33	[AuthenticatedUser identifier:@datamanager001] has been given DataverseRole{id=9, alias=datamanager} on [1 Root]	2026-03-05 03:06:26.327	@dataverseAdmin
daa0044b-26d0-4817-ac8c-f7fe2d08639a	OK	edu.harvard.iq.dataverse.engine.command.impl.PublishDataverseCommand	Command	2026-03-05 03:06:29.608	:[1 DataverseNL (dev)] 	2026-03-05 03:06:29.581	@dataverseAdmin
c3caf01e-5f94-4e0b-abdf-8c420840e1a2	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDataverseDefaultContributorRoleCommand	Command	2026-03-05 03:06:04.779	:[1 Root] 	2026-03-05 03:06:04.778	@dataverseAdmin
028ed131-f292-4a5c-a66c-64f3c195dadd	OK	edu.harvard.iq.dataverse.engine.command.impl.ListRoleAssignments	Command	2026-03-05 03:06:05.17	:[1 Root] 	2026-03-05 03:06:05.168	@dataverseAdmin
39d0fbd4-a182-445b-8542-002f95d2395f	OK	set	Setting	2026-03-05 03:06:19.632	:BuiltinUsersKey: b1aa4ecd-ba15-4e10-9e09-76827e6e1d3e	2026-03-05 03:06:19.632	\N
a0ebb6bd-a5ca-4aa5-be79-85596396f84d	OK	generateApiToken	Auth	2026-03-05 03:06:21.723	user:@user001 token:76bc55fb-24fb-43e6-960b-10dddc3a5797	2026-03-05 03:06:21.723	\N
42fc8c63-5926-4503-84f4-37133940c2b4	OK	create	BuiltinUser	2026-03-05 03:06:21.73	builtinUser:user001 authenticatedUser:@user001	2026-03-05 03:06:21.34	\N
02d2e237-05ff-4e4b-8f19-2c4398a3876f	OK	generateApiToken	Auth	2026-03-05 03:06:21.875	user:@user002 token:33dc1ecd-c1a2-485f-bdf8-75f980f750df	2026-03-05 03:06:21.875	\N
4cffe7f4-5d1a-4660-9038-d2343f4b27d3	OK	create	BuiltinUser	2026-03-05 03:06:21.882	builtinUser:user002 authenticatedUser:@user002	2026-03-05 03:06:21.759	\N
b1ff1a26-5aa7-4e49-abca-e091cfc8273a	OK	generateApiToken	Auth	2026-03-05 03:06:22	user:@user003 token:893b2440-f096-48ed-bea6-f2f8fc1b748b	2026-03-05 03:06:22	\N
7435d4b9-977f-4727-968e-8a4af33ef553	OK	create	BuiltinUser	2026-03-05 03:06:22.005	builtinUser:user003 authenticatedUser:@user003	2026-03-05 03:06:21.892	\N
648e973b-57af-4cf3-afdf-1374b1a843db	OK	generateApiToken	Auth	2026-03-05 03:06:22.106	user:@depositor001 token:d56989c5-be8b-4e36-a6bd-406dade0c7b9	2026-03-05 03:06:22.105	\N
fdb4f1f9-9be1-419e-a23a-9c63c42c4c52	OK	create	BuiltinUser	2026-03-05 03:06:22.112	builtinUser:depositor001 authenticatedUser:@depositor001	2026-03-05 03:06:22.014	\N
3f762920-b836-4758-8a7a-102e1a8a8267	OK	generateApiToken	Auth	2026-03-05 03:06:22.213	user:@downloader001 token:4a5bc822-433a-42c8-ac84-caff2de25770	2026-03-05 03:06:22.213	\N
63bbba65-b621-442f-a372-05cf08307279	OK	create	BuiltinUser	2026-03-05 03:06:22.218	builtinUser:downloader001 authenticatedUser:@downloader001	2026-03-05 03:06:22.126	\N
ef9c2ef8-a660-4f5f-a38b-ecc17018877e	OK	generateApiToken	Auth	2026-03-05 03:06:22.316	user:@datamanager001 token:2b7d13e1-0364-41a3-87b3-4c27e64cda3a	2026-03-05 03:06:22.316	\N
5f2c5668-8689-4730-b1d3-8784712c6a27	OK	create	BuiltinUser	2026-03-05 03:06:22.322	builtinUser:datamanager001 authenticatedUser:@datamanager001	2026-03-05 03:06:22.227	\N
f1ea66d2-f300-43ca-99e3-5dee54ccab3a	OK	delete	Setting	2026-03-05 03:06:22.872	:BuiltinUsersKey	2026-03-05 03:06:22.872	\N
7cb391cf-4cec-4fed-b38a-4ec0037aacc9	OK	edu.harvard.iq.dataverse.engine.command.impl.ListRoleAssignments	Command	2026-03-05 03:06:24.472	:[1 Root] 	2026-03-05 03:06:24.47	@dataverseAdmin
c1b77b93-d0f4-485c-9cc3-c91e5e05b212	OK	toggleSuperuser	Admin	2026-03-05 03:06:26.815	user001	2026-03-05 03:06:26.814	\N
77df8423-54cb-4a27-b846-ff9b40ed58a5	OK	set	Setting	2026-03-05 03:06:28.942	:AllowedCurationLabels: {"Datastations default Labels": ["Curator Assigned", "Curation Started", "Author Contacted", "Awaiting Article Publication", "Publication on Hold"], "DataverseNL default Labels": ["Curator Assigned", "Curation Started", "Author Contacted", "Waiting for Reply", "Second Review", "Awaiting Final Approval", "Awaiting Article Publication", "Publication on Hold", "Author Contacted for Information", "Author Contacted for Adjustments"]}	2026-03-05 03:06:28.942	\N
287ac362-34ab-4cfb-98c4-4708914c9ac9	OK	set	Setting	2026-03-05 03:06:30.165	:OAIServerEnabled: true	2026-03-05 03:06:30.164	\N
4cae360e-1482-4213-966e-ee9f8c112f5f	OK	set	Setting	2026-03-05 03:07:17.136	:WebAnalyticsCode: /etc/opt/dans.knaw.nl/dataverse-branding/analytics-code.html	2026-03-05 03:07:17.135	\N
7f44e49b-f6cb-488c-9888-928d980e1733	OK	addExternalTool	ExternalTool	2026-03-05 03:07:23.008	External tool added with id 1.	2026-03-05 03:07:23.008	\N
27c36072-08a1-4a40-bfc2-07a6ce3bfc4a	OK	addExternalTool	ExternalTool	2026-03-05 03:07:23.404	External tool added with id 2.	2026-03-05 03:07:23.404	\N
ad747883-ecb5-41ba-9a26-05522ab4d36d	OK	addExternalTool	ExternalTool	2026-03-05 03:07:23.887	External tool added with id 3.	2026-03-05 03:07:23.887	\N
a5ce7493-5f35-4710-9160-2d7b0a9f2c7d	OK	addExternalTool	ExternalTool	2026-03-05 03:07:24.409	External tool added with id 4.	2026-03-05 03:07:24.408	\N
c7054058-32a9-4edb-9398-72ae451c582f	OK	addExternalTool	ExternalTool	2026-03-05 03:07:24.885	External tool added with id 5.	2026-03-05 03:07:24.885	\N
795dd81c-1ac8-4157-86b6-6943b7cb700f	OK	addExternalTool	ExternalTool	2026-03-05 03:07:25.371	External tool added with id 6.	2026-03-05 03:07:25.371	\N
f8005bff-b40b-49c1-8df0-1b2b36d868ed	OK	addExternalTool	ExternalTool	2026-03-05 03:07:26.059	External tool added with id 7.	2026-03-05 03:07:26.059	\N
b7d86408-bc08-4d0a-874b-2d2a06e033ff	OK	addExternalTool	ExternalTool	2026-03-05 03:07:26.689	External tool added with id 8.	2026-03-05 03:07:26.689	\N
44f0c2a1-f6ed-44cd-aeb1-30e4e7440654	OK	addExternalTool	ExternalTool	2026-03-05 03:07:27.159	External tool added with id 9.	2026-03-05 03:07:27.159	\N
1f0c8648-ce3e-4c97-823d-42518e330636	OK	addExternalTool	ExternalTool	2026-03-05 03:07:27.673	External tool added with id 10.	2026-03-05 03:07:27.673	\N
86fdb2cb-cfe2-4b68-b09e-3e32645404ec	OK	addExternalTool	ExternalTool	2026-03-05 03:07:28.27	External tool added with id 11.	2026-03-05 03:07:28.27	\N
d129a350-c487-4293-9999-7d25d665926a	OK	addExternalTool	ExternalTool	2026-03-05 03:07:28.963	External tool added with id 12.	2026-03-05 03:07:28.963	\N
2870035c-c637-4971-b484-2c07f136a91b	OK	addExternalTool	ExternalTool	2026-03-05 03:07:29.698	External tool added with id 13.	2026-03-05 03:07:29.698	\N
152e2a89-6f79-4c59-befa-8e55d917a85b	OK	addExternalTool	ExternalTool	2026-03-05 03:07:30.316	External tool added with id 14.	2026-03-05 03:07:30.316	\N
1dce2d39-57f1-42cf-a292-0082e74219d1	OK	addExternalTool	ExternalTool	2026-03-05 03:07:30.799	External tool added with id 15.	2026-03-05 03:07:30.798	\N
1905476a-a41f-408a-a717-26291f76ff04	OK	addExternalTool	ExternalTool	2026-03-05 03:07:31.284	External tool added with id 16.	2026-03-05 03:07:31.284	\N
03b79ae2-e135-4066-918a-3380868447c8	OK	addExternalTool	ExternalTool	2026-03-05 03:07:31.935	External tool added with id 17.	2026-03-05 03:07:31.935	\N
db173aaa-4bac-4499-8f9f-7202c9c69119	OK	addExternalTool	ExternalTool	2026-03-05 03:07:32.41	External tool added with id 18.	2026-03-05 03:07:32.41	\N
6cd0c24b-9011-435d-ab7c-23f3462ad80f	OK	addExternalTool	ExternalTool	2026-03-05 03:07:32.956	External tool added with id 19.	2026-03-05 03:07:32.956	\N
12b83b23-8da9-4bc4-9c85-2d4025ff420c	OK	addExternalTool	ExternalTool	2026-03-05 03:07:33.464	External tool added with id 20.	2026-03-05 03:07:33.464	\N
0fa360da-62e4-4d32-913b-d1331328b999	OK	addExternalTool	ExternalTool	2026-03-05 03:07:33.967	External tool added with id 21.	2026-03-05 03:07:33.967	\N
5e75ff42-0cf7-4800-82c1-aa1d46492320	OK	addExternalTool	ExternalTool	2026-03-05 03:07:34.451	External tool added with id 22.	2026-03-05 03:07:34.45	\N
04f75b95-d04e-40f9-a64c-8e016db82992	OK	addExternalTool	ExternalTool	2026-03-05 03:07:35.065	External tool added with id 23.	2026-03-05 03:07:35.065	\N
934f71eb-b651-4e18-ba19-b2690d8e06de	OK	addExternalTool	ExternalTool	2026-03-05 03:07:35.55	External tool added with id 24.	2026-03-05 03:07:35.55	\N
a14c6ae6-80f6-43b4-87b9-7234bf7ac712	OK	delete	Setting	2026-03-05 03:08:47.425	:PrePublishDatasetWorkflowId	2026-03-05 03:08:47.425	\N
d72242a7-4c95-4c57-9df7-f5587c8ac659	OK	set	Setting	2026-03-05 03:08:49.911	:PrePublishDatasetWorkflowId: 1	2026-03-05 03:08:49.911	\N
aa4ba116-0934-4491-ab7d-26859fd5d251	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-03-05 03:09:47.925	:[1 DataverseNL (dev)] 	2026-03-05 03:09:47.918	@dataverseAdmin
28c362cb-77ee-46fd-81ad-84078b5d3b0e	OK	set	Setting	2026-03-05 03:10:04.953	:MetricsUrl: /dataverse-metrics	2026-03-05 03:10:04.953	\N
b9ba92ef-6c44-4bf4-8054-6f4aa8db4f53	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateDataverseCommand	Command	2026-03-05 03:10:13.145	:[1 DataverseNL (dev)] 	2026-03-05 03:10:12.519	@dataverseAdmin
a4224d31-799d-4962-868b-b8786f2909aa	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateDataverseCommand	Command	2026-03-05 03:10:14.042	:[1 DataverseNL (dev)] 	2026-03-05 03:10:14.007	@dataverseAdmin
68dda58d-ee87-4ee7-90af-db30fc9c2b97	OK	edu.harvard.iq.dataverse.engine.command.impl.PublishDataverseCommand	Command	2026-03-05 03:10:14.628	:[2 DANS] 	2026-03-05 03:10:14.532	@dataverseAdmin
00dd631b-9076-49cc-ba45-43a186a83317	OK	edu.harvard.iq.dataverse.engine.command.impl.PublishDataverseCommand	Command	2026-03-05 03:10:15.051	:[3 General Test dataverse] 	2026-03-05 03:10:15.031	@dataverseAdmin
acbe71ce-c37d-45f4-b24b-318caa12f86a	OK	set	Setting	2026-03-05 03:10:29.208	:HomePageCustomizationFile: /etc/opt/dans.knaw.nl/dataverse-branding/custom-home.html	2026-03-05 03:10:29.208	\N
3cb05861-f467-47d7-b5a2-21543e423618	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-03-05 03:12:48.71	:[1 DataverseNL (dev)] 	2026-03-05 03:12:48.701	@dataverseAdmin
92cf4722-7519-40c1-b0ca-0004c29d21d3	OK	registerProvider	Auth	2026-03-05 03:13:32.582	shib:Your Institution	2026-03-05 03:13:32.582	\N
a169b362-c9d1-4ea3-9e8a-4f27d8be5b5b	OK	registerProvider	Auth	2026-03-05 03:13:32.585	builtin:Username/Email	2026-03-05 03:13:32.585	\N
d90092df-986f-4c7a-9032-60bcd54b7b2b	OK	login	SessionManagement	2026-03-05 03:13:38.352	\N	2026-03-05 03:13:38.352	@user001
07cb7c6c-07c8-4304-ba44-66b33099647c	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-03-05 03:13:46.709	:[null ] 	2026-03-05 03:13:46.708	@user001
3e0ed401-e61e-42a3-ae1e-80d8ae2e9497	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-03-05 03:13:48.773	:[1 DataverseNL (dev)] 	2026-03-05 03:13:48.772	@dataverseAdmin
95849bc0-6587-4bb9-9ebe-1423a935e103	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-03-05 03:14:48.82	:[1 DataverseNL (dev)] 	2026-03-05 03:14:48.82	@dataverseAdmin
d45481f7-765a-41e8-bfba-cc7a75b250db	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-03-05 03:15:48.889	:[1 DataverseNL (dev)] 	2026-03-05 03:15:48.888	@dataverseAdmin
aa3b7f2b-097e-4b3e-973f-6dcc602a03f7	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateNewDataFilesCommand	Command	2026-03-05 03:16:03.614	:[1 DataverseNL (dev)] 	2026-03-05 03:16:03.323	@user001
b673063c-c49a-40a8-bf90-b50e97a2682b	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateNewDatasetCommand	Command	2026-03-05 03:16:11.585	:[null Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7] 	2026-03-05 03:16:11.071	@user001
39350c40-51ad-41c2-9994-8f22ec707ae2	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-03-05 03:16:12.17	:[4 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7] 	2026-03-05 03:16:11.999	@user001
cc1cdc24-d6fb-4721-bcc3-a2af0338454f	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-03-05 03:16:12.406	:[4 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7] 	2026-03-05 03:16:12.395	@user001
9b00b3c0-a3b1-4add-98c0-14623fcaaf7f	OK	edu.harvard.iq.dataverse.engine.command.impl.PublishDatasetCommand	Command	2026-03-05 03:16:19.273	:[4 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7] 	2026-03-05 03:16:19.232	@user001
2137f029-0619-47aa-bcd7-42495eb22c7b	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-03-05 03:16:19.38	:[4 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7] 	2026-03-05 03:16:19.37	@user001
ddb63519-11d9-42d6-9987-1fd1d0cd5dea	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDraftDatasetVersionCommand	Command	2026-03-05 03:16:19.731	:[4 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7] 	2026-03-05 03:16:19.726	@dataverseAdmin
702e8472-44c4-43cd-a623-1d31352b0ef5	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDraftDatasetVersionCommand	Command	2026-03-05 03:16:20.377	:[4 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7] 	2026-03-05 03:16:20.373	@user001
51efbef6-6f03-4c43-89c2-29a7211125dd	OK	edu.harvard.iq.dataverse.engine.command.impl.ListVersionsCommand	Command	2026-03-05 03:16:20.489	:[4 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7] 	2026-03-05 03:16:20.475	@user001
14d83a2d-b9a2-4f2a-9767-c4986bba2b15	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-03-05 03:16:20.656	:[4 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7] 	2026-03-05 03:16:20.573	@user001
19b8280f-e108-4d33-9574-e1c989865028	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetFieldsCommand	Command	2026-03-05 03:16:20.661	:[4 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7] 	2026-03-05 03:16:20.558	@user001
860495da-a066-48bd-a387-12187c06c901	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-03-05 03:16:20.831	:[4 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7] 	2026-03-05 03:16:20.829	@user001
fb89a1f9-51b1-4eaf-b9ab-fbc3e6f0872f	OK	edu.harvard.iq.dataverse.engine.command.impl.FinalizeDatasetPublicationCommand	Command	2026-03-05 03:16:21.816	:[4 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7] 	2026-03-05 03:16:20.791	@user001
625bcbff-717a-4793-9388-767763e22c9e	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-03-05 03:16:48.944	:[1 DataverseNL (dev)] 	2026-03-05 03:16:48.944	@dataverseAdmin
e0bfc72a-9c55-4ea8-8c3c-150fc13a8068	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDataverseCommand	Command	2026-03-05 03:16:58.398	:[1 DataverseNL (dev)] 	2026-03-05 03:16:58.384	@user001
d9667bcf-6fd3-4afd-8282-2adc5c9decb7	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-03-05 03:17:29.684	:[null ] 	2026-03-05 03:17:29.684	@user001
d6b12bbd-9de7-4789-9166-6aa3a24bc31b	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-03-05 03:17:48.991	:[1 DataverseNL (dev)] 	2026-03-05 03:17:48.991	@dataverseAdmin
9467a1f3-ce3c-42e2-b1da-4d038c2e2f71	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-03-05 03:18:49.038	:[1 DataverseNL (dev)] 	2026-03-05 03:18:49.038	@dataverseAdmin
b5573bec-2793-4485-a8f2-31ae0ae4a399	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateNewDataFilesCommand	Command	2026-03-05 03:19:02.9	:[2 DANS] 	2026-03-05 03:19:02.892	@user001
253f40e2-6e34-4660-a0e7-db8db1e98857	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateNewDatasetCommand	Command	2026-03-05 03:19:11.103	:[null Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (DANS Collection)] 	2026-03-05 03:19:10.867	@user001
1110251e-2fd3-4db3-8f82-b57097613d2e	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-03-05 03:19:11.243	:[6 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (DANS Collection)] 	2026-03-05 03:19:11.14	@user001
f0505ebf-9f5b-4757-b9ba-b48b1b26c9f9	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-03-05 03:19:11.324	:[6 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (DANS Collection)] 	2026-03-05 03:19:11.32	@user001
557e9917-1c0f-4234-b45d-037cd1372766	OK	edu.harvard.iq.dataverse.engine.command.impl.PublishDatasetCommand	Command	2026-03-05 03:19:16.597	:[6 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (DANS Collection)] 	2026-03-05 03:19:16.574	@user001
305b72df-68eb-4efa-b97c-f7160c18f7f6	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDraftDatasetVersionCommand	Command	2026-03-05 03:19:16.638	:[6 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (DANS Collection)] 	2026-03-05 03:19:16.634	@dataverseAdmin
1d15d8c1-993e-4e4e-b27b-bd19507c70d7	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-03-05 03:19:16.694	:[6 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (DANS Collection)] 	2026-03-05 03:19:16.691	@user001
9dfeec78-a2c2-4ad3-a624-bd05b2e0798e	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDraftDatasetVersionCommand	Command	2026-03-05 03:19:16.809	:[6 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (DANS Collection)] 	2026-03-05 03:19:16.806	@user001
355f1a22-2bb1-476a-a8db-26bbc24192e0	OK	edu.harvard.iq.dataverse.engine.command.impl.ListVersionsCommand	Command	2026-03-05 03:19:16.905	:[6 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (DANS Collection)] 	2026-03-05 03:19:16.887	@user001
ed9e00ae-e788-4fb2-8398-8f0567f95cf9	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetFieldsCommand	Command	2026-03-05 03:19:17.018	:[6 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (DANS Collection)] 	2026-03-05 03:19:16.958	@user001
9fe94ca5-b88c-4793-8831-6ab3bb83382e	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-03-05 03:19:17.094	:[6 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (DANS Collection)] 	2026-03-05 03:19:17.093	@user001
596dbc0e-d61d-4325-9eee-6ad7501323fd	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-03-05 03:19:17.013	:[6 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (DANS Collection)] 	2026-03-05 03:19:16.967	@user001
207dc777-ade2-4d4e-bb53-ddd1f20d8ee7	OK	edu.harvard.iq.dataverse.engine.command.impl.FinalizeDatasetPublicationCommand	Command	2026-03-05 03:19:17.387	:[6 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (DANS Collection)] 	2026-03-05 03:19:17.08	@user001
a9d1c6bb-a6ab-405e-ab48-4ab6b2ae68cf	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-03-05 03:19:49.088	:[1 DataverseNL (dev)] 	2026-03-05 03:19:49.088	@dataverseAdmin
c4dfc83d-7714-48b9-8fd5-cc40ae2913c5	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-03-05 03:19:56.993	:[null ] 	2026-03-05 03:19:56.992	@user001
26b1853d-f1ba-4dce-920c-92f5292b2d3c	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-03-05 03:20:49.134	:[1 DataverseNL (dev)] 	2026-03-05 03:20:49.134	@dataverseAdmin
aaf89734-a8bb-4c7c-a3c8-3a86ccfb5086	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-03-05 03:21:49.184	:[1 DataverseNL (dev)] 	2026-03-05 03:21:49.184	@dataverseAdmin
2809cdbc-987c-4188-a372-5af3177d1e26	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateNewDataFilesCommand	Command	2026-03-05 03:21:59.99	:[3 General Test dataverse] 	2026-03-05 03:21:59.976	@user001
8930fd95-8bed-4145-926e-51fc51e864c2	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateNewDatasetCommand	Command	2026-03-05 03:22:03.538	:[null Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (General Test collection)] 	2026-03-05 03:22:03.267	@user001
544a7890-7c74-4ffe-9fc1-d004b268f1df	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-03-05 03:22:03.647	:[8 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (General Test collection)] 	2026-03-05 03:22:03.579	@user001
8a8bcf81-951d-42c8-934c-e81b2cbad5c0	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-03-05 03:22:03.741	:[8 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (General Test collection)] 	2026-03-05 03:22:03.738	@user001
638235d9-db44-4a35-b9c5-2bcd0d2fe754	OK	edu.harvard.iq.dataverse.engine.command.impl.PublishDatasetCommand	Command	2026-03-05 03:22:13.194	:[8 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (General Test collection)] 	2026-03-05 03:22:13.162	@user001
162a9015-64a2-487d-9266-9efd28fde7e5	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDraftDatasetVersionCommand	Command	2026-03-05 03:22:13.212	:[8 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (General Test collection)] 	2026-03-05 03:22:13.209	@dataverseAdmin
494ecc14-dc2f-4aa6-a5e2-962360994be3	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-03-05 03:22:13.281	:[8 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (General Test collection)] 	2026-03-05 03:22:13.278	@user001
2eac3977-27b7-4fa4-bfb2-34f93942aee1	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDraftDatasetVersionCommand	Command	2026-03-05 03:22:13.48	:[8 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (General Test collection)] 	2026-03-05 03:22:13.476	@user001
1e896b2b-f575-4a61-8b41-1f7798046a93	OK	edu.harvard.iq.dataverse.engine.command.impl.ListVersionsCommand	Command	2026-03-05 03:22:13.545	:[8 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (General Test collection)] 	2026-03-05 03:22:13.533	@user001
20d02c8d-30f7-42ac-acf8-f69fff456b2f	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-03-05 03:22:13.672	:[8 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (General Test collection)] 	2026-03-05 03:22:13.613	@user001
b448cfa7-b678-47bc-b82a-ebc55f8c50fb	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetFieldsCommand	Command	2026-03-05 03:22:13.675	:[8 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (General Test collection)] 	2026-03-05 03:22:13.605	@user001
26bf97a5-714a-49a2-83e7-7abad31311d9	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-03-05 03:22:13.795	:[8 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (General Test collection)] 	2026-03-05 03:22:13.793	@user001
e9090a44-557c-4717-8fa7-6aeef119ca35	OK	edu.harvard.iq.dataverse.engine.command.impl.FinalizeDatasetPublicationCommand	Command	2026-03-05 03:22:14.058	:[8 Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (General Test collection)] 	2026-03-05 03:22:13.767	@user001
b9190dbb-e975-4a0c-8de7-8fba8e7bad4a	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-03-05 03:22:49.23	:[1 DataverseNL (dev)] 	2026-03-05 03:22:49.229	@dataverseAdmin
a1ec604a-f9db-4d67-a827-dfa80c182f5a	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:21:01.269	:[1 DataverseNL (dev)] 	2026-06-10 10:21:01.258	@dataverseAdmin
ce290676-0af9-43f8-b89d-06c4a5cc0d25	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:22:01.439	:[1 DataverseNL (dev)] 	2026-06-10 10:22:01.439	@dataverseAdmin
ae558d90-7be9-4f17-88dd-77a5303366fc	OK	registerProvider	Auth	2026-06-10 10:22:31.779	shib:Your Institution	2026-06-10 10:22:31.779	\N
86f14b66-4229-4ded-9cb2-20a9e6dc1430	OK	registerProvider	Auth	2026-06-10 10:22:31.783	builtin:Username/Email	2026-06-10 10:22:31.783	\N
db8cd56d-4daf-461a-9e10-8ab652d053c7	OK	login	SessionManagement	2026-06-10 10:22:36.004	\N	2026-06-10 10:22:36.004	@dataverseAdmin
b614039c-f926-4103-94d6-9ff0497d244b	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 10:22:41.668	:[null ] 	2026-06-10 10:22:41.667	@dataverseAdmin
29c25a00-5012-48ff-aecc-304a4ce19ce4	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:23:01.489	:[1 DataverseNL (dev)] 	2026-06-10 10:23:01.489	@dataverseAdmin
a8d9ba19-ce7e-4a73-bb91-0ef3d95da389	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateNewDatasetCommand	Command	2026-06-10 10:23:32.615	:[null test terms of use and license fileds] 	2026-06-10 10:23:32.518	@dataverseAdmin
33db3cdf-a849-4b9d-ba5d-7635b172922a	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 10:23:33.409	:[10 test terms of use and license fileds] 	2026-06-10 10:23:33.402	@dataverseAdmin
1c0412fe-177b-4d32-a8ae-f3183d614bf3	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 10:23:59.819	:[null ] 	2026-06-10 10:23:59.818	@dataverseAdmin
3df7019a-3bf9-49ab-864a-9aa7a17da029	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:24:01.529	:[1 DataverseNL (dev)] 	2026-06-10 10:24:01.529	@dataverseAdmin
63016d03-b3ca-485f-b72c-673dae108679	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateNewDataFilesCommand	Command	2026-06-10 10:24:17.806	:[3 General Test dataverse] 	2026-06-10 10:24:17.493	@dataverseAdmin
fb08e1ce-234e-4955-8abf-79c57573d944	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateNewDataFilesCommand	Command	2026-06-10 10:24:18.029	:[3 General Test dataverse] 	2026-06-10 10:24:18.02	@dataverseAdmin
c2f90b2b-c07a-40b2-9542-554488c4855d	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateNewDataFilesCommand	Command	2026-06-10 10:24:18.241	:[3 General Test dataverse] 	2026-06-10 10:24:18.233	@dataverseAdmin
a5a91588-f392-42c4-b358-78fdc0b90246	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateNewDatasetCommand	Command	2026-06-10 10:24:45.925	:[null test terms of use and license fileds] 	2026-06-10 10:24:45.869	@dataverseAdmin
3257bb7b-8d57-49b4-b867-bb508f104bd1	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-06-10 10:24:46.129	:[11 test terms of use and license fileds] 	2026-06-10 10:24:46.022	@dataverseAdmin
9493f7e3-36fa-419a-b54d-7bf1b99f4b6c	\N	retentionCreate	Command	2026-06-10 10:26:53.761	id: 1 date unavailable: 2027-06-11 reason: just for a while	2026-06-10 10:26:53.76	@dataverseAdmin
732218ab-ef38-44c5-a741-a1f1efeff6bd	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-06-10 10:26:53.809	:[11 test terms of use and license fileds] 	2026-06-10 10:26:53.766	@dataverseAdmin
3d87ef57-27fb-4f8b-b1df-83d9363670dd	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:27:01.665	:[1 DataverseNL (dev)] 	2026-06-10 10:27:01.665	@dataverseAdmin
4a929578-14f8-4856-a2ea-19af1e34fb09	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-06-10 10:27:48.648	:[11 test terms of use and license fileds] 	2026-06-10 10:27:48.601	@dataverseAdmin
5dfde578-3d63-4f78-a6e4-477a328c4e07	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 10:28:46.776	:[11 test terms of use and license fileds] 	2026-06-10 10:28:46.773	@dataverseAdmin
ee89be4c-0f29-46b3-9a3e-9d727921f754	OK	edu.harvard.iq.dataverse.engine.command.impl.FinalizeDatasetPublicationCommand	Command	2026-06-10 10:29:11.957	:[11 test terms of use and license fileds] 	2026-06-10 10:29:11.114	@dataverseAdmin
0a9b2a85-f75e-43a7-a244-e431fc6b5ec2	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 10:24:46.271	:[11 test terms of use and license fileds] 	2026-06-10 10:24:46.265	@dataverseAdmin
66ca6cb1-62bc-4d8d-8e28-e3d7ab97c32a	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:25:01.582	:[1 DataverseNL (dev)] 	2026-06-10 10:25:01.582	@dataverseAdmin
b98ab36e-241a-4007-a5f1-a0aa34fc1373	\N	embargoCreate	Command	2026-06-10 10:25:31.003	id: 1 date available: 2026-06-11 reason: secret for a whil	2026-06-10 10:25:31.002	@dataverseAdmin
e97948a7-97e8-48a5-abb7-afbdef8b7da0	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-06-10 10:25:31.054	:[11 test terms of use and license fileds] 	2026-06-10 10:25:31.008	@dataverseAdmin
c9b1526e-0ffc-48b4-ac0d-2c5411b5b96e	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:26:01.621	:[1 DataverseNL (dev)] 	2026-06-10 10:26:01.621	@dataverseAdmin
af972e0b-a7d6-4402-9ffb-c630747ceb1e	OK	edu.harvard.iq.dataverse.engine.command.impl.RestrictFileCommand	Command	2026-06-10 10:26:24.393	:[11 test terms of use and license fileds] 	2026-06-10 10:26:24.377	@dataverseAdmin
9b37e522-e14d-4d4b-8a50-84c971aee243	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-06-10 10:26:24.44	:[11 test terms of use and license fileds] 	2026-06-10 10:26:24.398	@dataverseAdmin
d986a63a-ba80-4b31-91a0-e61fd3f7ed81	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 10:26:24.629	:[11 test terms of use and license fileds] 	2026-06-10 10:26:24.626	@dataverseAdmin
374a1eb4-5b27-482d-b7ad-2852ae378712	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 10:27:48.801	:[11 test terms of use and license fileds] 	2026-06-10 10:27:48.795	@dataverseAdmin
25e76ab7-2a31-42ec-bfb5-39849978ab80	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 10:25:31.309	:[11 test terms of use and license fileds] 	2026-06-10 10:25:31.29	@dataverseAdmin
b12f24d3-b0e7-4c2d-9712-48d4d2d01be4	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 10:26:53.902	:[11 test terms of use and license fileds] 	2026-06-10 10:26:53.9	@dataverseAdmin
1e379151-05c2-4b6d-a963-30bd844bf73f	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:28:01.699	:[1 DataverseNL (dev)] 	2026-06-10 10:28:01.699	@dataverseAdmin
1b615aae-f2b2-4ef2-b9e3-9eb3a12ac167	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-06-10 10:28:46.6	:[11 test terms of use and license fileds] 	2026-06-10 10:28:46.556	@dataverseAdmin
dbbb94ba-e00e-449c-8a4d-a94c471d47e0	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:29:01.734	:[1 DataverseNL (dev)] 	2026-06-10 10:29:01.734	@dataverseAdmin
892b87a8-d996-45c8-8ca6-80b7ad7f18f3	OK	edu.harvard.iq.dataverse.engine.command.impl.PublishDatasetCommand	Command	2026-06-10 10:29:09.8	:[11 test terms of use and license fileds] 	2026-06-10 10:29:09.767	@dataverseAdmin
5040123a-4e64-472a-95d0-6d8434d2a243	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 10:29:09.883	:[11 test terms of use and license fileds] 	2026-06-10 10:29:09.881	@dataverseAdmin
1ebc069c-cd16-40e1-8500-6263180534b7	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDraftDatasetVersionCommand	Command	2026-06-10 10:29:10.205	:[11 test terms of use and license fileds] 	2026-06-10 10:29:10.202	@dataverseAdmin
649d80be-aae8-4112-96a5-b46fb7ca6583	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDraftDatasetVersionCommand	Command	2026-06-10 10:29:10.762	:[11 test terms of use and license fileds] 	2026-06-10 10:29:10.76	@dataverseAdmin
275ff430-0f47-47ac-ae3a-986c6d678e9a	OK	edu.harvard.iq.dataverse.engine.command.impl.ListVersionsCommand	Command	2026-06-10 10:29:10.9	:[11 test terms of use and license fileds] 	2026-06-10 10:29:10.852	@dataverseAdmin
5a824d66-5a1a-435d-be37-dca157b86148	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-06-10 10:29:11.05	:[11 test terms of use and license fileds] 	2026-06-10 10:29:10.993	@dataverseAdmin
865614d6-2d2c-4ee1-a559-9846643f59a0	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetFieldsCommand	Command	2026-06-10 10:29:11.056	:[11 test terms of use and license fileds] 	2026-06-10 10:29:10.981	@dataverseAdmin
66b2b7fe-c589-45d6-b004-c53b6556ae36	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 10:29:11.137	:[11 test terms of use and license fileds] 	2026-06-10 10:29:11.136	@dataverseAdmin
16dd2027-c227-499b-ba1d-1d5757c90f82	InternalError	edu.harvard.iq.dataverse.engine.command.impl.PublishDatasetCommand	Command	2026-06-10 10:29:20.659	:[11 test terms of use and license fileds]  (Exception [EclipseLink-5010] (Eclipse Persistence Services - 4.0.7.payara-p1.v202509010857-ff7dcebd9d4eec4ff0c85f78950a3719609b36cc): org.eclipse.persistence.exceptions.OptimisticLockException\nException Description: The object [[DatasetVersion id:5]] cannot be merged because it has changed or been deleted since it was last read. \nClass> edu.harvard.iq.dataverse.DatasetVersion)	2026-06-10 10:29:20.649	@dataverseAdmin
761b6ba9-dd07-496e-814e-a1e80d41d27f	OK	edu.harvard.iq.dataverse.engine.command.impl.GetLatestPublishedDatasetVersionCommand	Command	2026-06-10 10:29:20.746	:[11 test terms of use and license fileds] 	2026-06-10 10:29:20.745	@dataverseAdmin
b341e0cd-7ab0-47cc-9c3b-ccde9453ca2f	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 10:29:20.77	:[11 test terms of use and license fileds] 	2026-06-10 10:29:20.769	@dataverseAdmin
13a59147-c4ae-4d48-a423-fe73b839258d	OK	edu.harvard.iq.dataverse.engine.command.impl.GetLatestPublishedDatasetVersionCommand	Command	2026-06-10 10:29:29.428	:[11 test terms of use and license fileds] 	2026-06-10 10:29:29.427	@dataverseAdmin
2040b70c-24e4-4b71-b978-df6c19a60d88	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 10:29:29.448	:[11 test terms of use and license fileds] 	2026-06-10 10:29:29.446	@dataverseAdmin
e0b86155-49ba-4d2d-8088-a0a3bf209e68	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:30:01.774	:[1 DataverseNL (dev)] 	2026-06-10 10:30:01.774	@dataverseAdmin
68c209c6-5711-4e54-8639-c19d669acd65	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:31:01.823	:[1 DataverseNL (dev)] 	2026-06-10 10:31:01.823	@dataverseAdmin
6e660b6f-f592-4dcb-8212-81f39d0ec7a2	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:32:01.86	:[1 DataverseNL (dev)] 	2026-06-10 10:32:01.859	@dataverseAdmin
0e7c4779-fd39-43fb-94ee-3f16677c4458	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:33:01.882	:[1 DataverseNL (dev)] 	2026-06-10 10:33:01.881	@dataverseAdmin
21943076-17a6-46dc-8270-882c8cfe5d7b	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:34:01.923	:[1 DataverseNL (dev)] 	2026-06-10 10:34:01.923	@dataverseAdmin
7497ff4c-a075-46aa-8a4f-c57ac77cbb1c	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:35:01.955	:[1 DataverseNL (dev)] 	2026-06-10 10:35:01.955	@dataverseAdmin
8ad40f90-c608-4577-9f1d-c25802065b2f	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:36:01.995	:[1 DataverseNL (dev)] 	2026-06-10 10:36:01.995	@dataverseAdmin
d9815d64-53d9-47b3-b046-3300fc106a46	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:37:02.021	:[1 DataverseNL (dev)] 	2026-06-10 10:37:02.021	@dataverseAdmin
2856e251-6524-4229-b93d-788e74832697	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:38:02.063	:[1 DataverseNL (dev)] 	2026-06-10 10:38:02.063	@dataverseAdmin
04f487ad-7fe7-4141-8f64-fd6470edbbbf	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:39:02.101	:[1 DataverseNL (dev)] 	2026-06-10 10:39:02.101	@dataverseAdmin
34755e87-497a-4839-93e1-0cafa1cdd7fe	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:40:02.141	:[1 DataverseNL (dev)] 	2026-06-10 10:40:02.141	@dataverseAdmin
b621510d-5373-4ed0-b073-836c6442af17	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:41:02.165	:[1 DataverseNL (dev)] 	2026-06-10 10:41:02.165	@dataverseAdmin
ea71ba4d-0b25-4ed9-b644-bbb76e106652	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:42:02.203	:[1 DataverseNL (dev)] 	2026-06-10 10:42:02.203	@dataverseAdmin
262f18a3-8720-4217-a923-62484bc3f0f2	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:43:02.241	:[1 DataverseNL (dev)] 	2026-06-10 10:43:02.241	@dataverseAdmin
1f02a604-e3bb-4ede-8008-414c97dfd595	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:44:02.281	:[1 DataverseNL (dev)] 	2026-06-10 10:44:02.281	@dataverseAdmin
a4c278f0-b49d-4314-a508-769519804a62	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:45:02.308	:[1 DataverseNL (dev)] 	2026-06-10 10:45:02.308	@dataverseAdmin
ea503ce8-5d5f-4d99-92cf-024b31f771ea	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:46:02.341	:[1 DataverseNL (dev)] 	2026-06-10 10:46:02.341	@dataverseAdmin
c41ebe40-f379-4afd-92b4-e233add3e066	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:47:02.375	:[1 DataverseNL (dev)] 	2026-06-10 10:47:02.375	@dataverseAdmin
6e303400-545f-4d26-9a61-8cc4f37236c9	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 10:48:02.415	:[1 DataverseNL (dev)] 	2026-06-10 10:48:02.415	@dataverseAdmin
d0532bfd-5bce-4a4a-b0e4-5dabcbfca739	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:24:22.022	:[1 DataverseNL (dev)] 	2026-06-10 12:24:22.021	@dataverseAdmin
d447b2af-d736-4a30-8e69-c8ddeab97c42	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:25:22.048	:[1 DataverseNL (dev)] 	2026-06-10 12:25:22.048	@dataverseAdmin
6cb741e6-0575-45b9-86bf-33b03db88681	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:26:22.086	:[1 DataverseNL (dev)] 	2026-06-10 12:26:22.086	@dataverseAdmin
becbd6c4-8a25-4f46-870d-7f890dbeef80	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:27:22.117	:[1 DataverseNL (dev)] 	2026-06-10 12:27:22.117	@dataverseAdmin
11c2c969-584f-41f5-853b-3ec81b3f4a53	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:28:22.155	:[1 DataverseNL (dev)] 	2026-06-10 12:28:22.155	@dataverseAdmin
bc9c3623-d89c-4205-9899-74959cf71306	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 12:28:22.676	:[10 test terms of use and license fileds] 	2026-06-10 12:28:22.674	@dataverseAdmin
cd529a32-d6d7-4f93-9dba-e75655ac7876	OK	edu.harvard.iq.dataverse.engine.command.impl.PublishDatasetCommand	Command	2026-06-10 12:28:30.056	:[10 test terms of use and license fileds] 	2026-06-10 12:28:30.035	@dataverseAdmin
3d44ab91-c584-48f4-81de-48cf590e8427	OK	edu.harvard.iq.dataverse.engine.command.impl.ListVersionsCommand	Command	2026-06-10 12:28:30.265	:[10 test terms of use and license fileds] 	2026-06-10 12:28:30.256	@dataverseAdmin
d83447c9-eb4f-49cc-bf62-1dce3d14fb43	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetFieldsCommand	Command	2026-06-10 12:28:30.41	:[10 test terms of use and license fileds] 	2026-06-10 12:28:30.326	@dataverseAdmin
ebe535b7-cfbf-42a4-8785-fb76126fe20e	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDraftDatasetVersionCommand	Command	2026-06-10 12:28:30.091	:[10 test terms of use and license fileds] 	2026-06-10 12:28:30.087	@dataverseAdmin
403e9325-424f-4ecc-b96c-8960b82e31e3	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 12:28:30.144	:[10 test terms of use and license fileds] 	2026-06-10 12:28:30.138	@dataverseAdmin
d5067d05-edb8-4592-a23a-e8097c1ea0bf	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDraftDatasetVersionCommand	Command	2026-06-10 12:28:30.207	:[10 test terms of use and license fileds] 	2026-06-10 12:28:30.205	@dataverseAdmin
0688f4a1-aa5d-4f10-a2f3-d435db7c6eaf	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-06-10 12:28:30.406	:[10 test terms of use and license fileds] 	2026-06-10 12:28:30.338	@dataverseAdmin
727ee151-3e78-4e26-8d6e-b0167de2c787	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:29:22.177	:[1 DataverseNL (dev)] 	2026-06-10 12:29:22.177	@dataverseAdmin
a9f9ecaa-30d5-41d2-8acc-cfa59e6f03a2	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:30:22.224	:[1 DataverseNL (dev)] 	2026-06-10 12:30:22.223	@dataverseAdmin
33c60d93-dafb-4660-b118-2a34815b26df	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 12:28:30.498	:[10 test terms of use and license fileds] 	2026-06-10 12:28:30.497	@dataverseAdmin
7a481d8f-d13a-4875-9b44-d548e05e0623	OK	edu.harvard.iq.dataverse.engine.command.impl.FinalizeDatasetPublicationCommand	Command	2026-06-10 12:28:30.759	:[10 test terms of use and license fileds] 	2026-06-10 12:28:30.478	@dataverseAdmin
e5b149b6-8fd7-4490-b7a2-ac85159d2a6d	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:49:43.713	:[1 DataverseNL (dev)] 	2026-06-10 12:49:43.713	@dataverseAdmin
e982086a-fca4-422e-9cc8-ec2e10ba7014	OK	registerProvider	Auth	2026-06-10 12:49:52.167	shib:Your Institution	2026-06-10 12:49:52.166	\N
e6f4ef23-61ea-44c3-a3b6-2dfe31e710b5	OK	registerProvider	Auth	2026-06-10 12:49:52.17	builtin:Username/Email	2026-06-10 12:49:52.17	\N
3179684a-7a36-46b8-b94f-2888ed2cdeaf	OK	login	SessionManagement	2026-06-10 12:49:56.382	\N	2026-06-10 12:49:56.382	@dataverseAdmin
8fe964fd-1d58-48fc-b962-2274451974a3	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:56:44.001	:[1 DataverseNL (dev)] 	2026-06-10 12:56:44	@dataverseAdmin
717be04f-5777-405c-8e48-faf6af1def15	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:57:44.034	:[1 DataverseNL (dev)] 	2026-06-10 12:57:44.034	@dataverseAdmin
a838379f-5c6e-4ec0-96fa-5f393edc820e	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:58:44.067	:[1 DataverseNL (dev)] 	2026-06-10 12:58:44.067	@dataverseAdmin
47865ebe-fb7e-473d-83af-e95df00a063a	OK	edu.harvard.iq.dataverse.engine.command.impl.GetLatestPublishedDatasetVersionCommand	Command	2026-06-10 12:58:50.053	:[15 v] 	2026-06-10 12:58:50.052	@dataverseAdmin
163df5e7-5b10-4bdc-a0ad-70a681512b69	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 12:58:50.101	:[15 v] 	2026-06-10 12:58:50.097	@dataverseAdmin
112c72f6-6de3-4e97-aca8-4dfaa424bbfb	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 13:01:44.192	:[1 DataverseNL (dev)] 	2026-06-10 13:01:44.192	@dataverseAdmin
a2c13309-f404-4219-8e20-518cea29bdc5	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 13:02:44.222	:[1 DataverseNL (dev)] 	2026-06-10 13:02:44.221	@dataverseAdmin
a4e2d9b3-b5bc-495a-b866-a79a9870ad1e	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 13:03:44.26	:[1 DataverseNL (dev)] 	2026-06-10 13:03:44.26	@dataverseAdmin
b432134c-79dd-4593-a6f9-7220178daa05	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 13:04:44.298	:[1 DataverseNL (dev)] 	2026-06-10 13:04:44.298	@dataverseAdmin
b6196d52-3545-42c8-a77e-1806fda0db86	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 13:05:44.337	:[1 DataverseNL (dev)] 	2026-06-10 13:05:44.337	@dataverseAdmin
5de8d5bb-b5c0-4b99-9c96-40333d7b717a	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 13:06:44.387	:[1 DataverseNL (dev)] 	2026-06-10 13:06:44.386	@dataverseAdmin
5a94ff9a-97b3-4738-bafc-d922e1000bfe	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 13:07:44.426	:[1 DataverseNL (dev)] 	2026-06-10 13:07:44.426	@dataverseAdmin
29fb0b69-ed66-483e-8914-63c0ab87cdcb	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 12:50:11.785	:[null ] 	2026-06-10 12:50:11.784	@dataverseAdmin
bd8be8aa-ba05-4b3a-883c-c6bf1ac87cce	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:50:43.757	:[1 DataverseNL (dev)] 	2026-06-10 12:50:43.757	@dataverseAdmin
5d16484a-d6c1-4865-b4b9-f5337cb9da7b	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 12:52:29.924	:[15 v] 	2026-06-10 12:52:29.915	@dataverseAdmin
693e88c8-7ef7-4543-9a9e-4c649e312008	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:52:43.843	:[1 DataverseNL (dev)] 	2026-06-10 12:52:43.843	@dataverseAdmin
6a5e13bb-7c52-4c94-bb30-71c4776b6374	OK	edu.harvard.iq.dataverse.engine.command.impl.RestrictFileCommand	Command	2026-06-10 12:52:52.74	:[15 v] 	2026-06-10 12:52:52.735	@dataverseAdmin
07c87800-1267-4e71-ae56-1b3b24aa0cd2	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-06-10 12:52:52.793	:[15 v] 	2026-06-10 12:52:52.745	@dataverseAdmin
b567410d-819b-4ea4-9144-3ed81d548764	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:53:43.876	:[1 DataverseNL (dev)] 	2026-06-10 12:53:43.876	@dataverseAdmin
d743350f-3a50-4f6b-afbd-6f10906fefd5	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-06-10 12:53:51.675	:[15 v] 	2026-06-10 12:53:51.616	@dataverseAdmin
a8533afc-2338-4b4e-878c-96c7b7c98b8e	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 12:53:51.776	:[15 v] 	2026-06-10 12:53:51.772	@dataverseAdmin
18a6e705-19e2-4ca2-81ca-4e5c6da20394	InternalError	edu.harvard.iq.dataverse.engine.command.impl.PublishDatasetCommand	Command	2026-06-10 12:54:16.625	:[15 v]  (Exception [EclipseLink-5010] (Eclipse Persistence Services - 4.0.7.payara-p1.v202509010857-ff7dcebd9d4eec4ff0c85f78950a3719609b36cc): org.eclipse.persistence.exceptions.OptimisticLockException\nException Description: The object [[DatasetVersion id:6]] cannot be merged because it has changed or been deleted since it was last read. \nClass> edu.harvard.iq.dataverse.DatasetVersion)	2026-06-10 12:54:16.613	@dataverseAdmin
33255cff-3b2e-4889-8487-ae2a33b31bb7	OK	edu.harvard.iq.dataverse.engine.command.impl.GetLatestPublishedDatasetVersionCommand	Command	2026-06-10 12:54:16.728	:[15 v] 	2026-06-10 12:54:16.727	@dataverseAdmin
f369fe81-79eb-4d9b-bb61-91c0fe06ffc4	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 12:54:16.764	:[15 v] 	2026-06-10 12:54:16.761	@dataverseAdmin
8f98e546-242b-44e4-b59a-aed902b36177	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:54:43.92	:[1 DataverseNL (dev)] 	2026-06-10 12:54:43.92	@dataverseAdmin
b74b19eb-0bd1-491b-8288-3c50981b47e7	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:55:43.962	:[1 DataverseNL (dev)] 	2026-06-10 12:55:43.962	@dataverseAdmin
9f002a18-bce0-4d58-9243-306af8206472	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:59:44.113	:[1 DataverseNL (dev)] 	2026-06-10 12:59:44.113	@dataverseAdmin
43b0e845-ad0e-4cf7-adc2-74314e23096a	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 13:00:44.152	:[1 DataverseNL (dev)] 	2026-06-10 13:00:44.152	@dataverseAdmin
fd6e1b0b-1aa7-4310-a332-c59fd9d29c57	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDataverseCommand	Command	2026-06-10 12:51:43.803	:[1 DataverseNL (dev)] 	2026-06-10 12:51:43.803	@dataverseAdmin
440a1b1e-f6ca-4626-b49b-70b42f822ece	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateNewDataFilesCommand	Command	2026-06-10 12:51:58.257	:[1 DataverseNL (dev)] 	2026-06-10 12:51:57.973	@dataverseAdmin
47a8d9db-892e-4ce3-8224-56f927826a98	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateNewDataFilesCommand	Command	2026-06-10 12:51:58.611	:[1 DataverseNL (dev)] 	2026-06-10 12:51:58.603	@dataverseAdmin
fc11c06a-4132-42e5-ace0-6427c336c825	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateNewDataFilesCommand	Command	2026-06-10 12:51:58.886	:[1 DataverseNL (dev)] 	2026-06-10 12:51:58.874	@dataverseAdmin
c401113c-14d3-44fd-a7c7-d9e38c637aa7	OK	edu.harvard.iq.dataverse.engine.command.impl.CreateNewDatasetCommand	Command	2026-06-10 12:52:28.935	:[null v] 	2026-06-10 12:52:28.829	@dataverseAdmin
92d0ca52-4df9-410e-b5f9-fbe485b0d9c5	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-06-10 12:52:29.69	:[15 v] 	2026-06-10 12:52:29.482	@dataverseAdmin
d8e2c499-6e88-4578-b995-9e4bf1fcd4d6	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 12:52:52.922	:[15 v] 	2026-06-10 12:52:52.914	@dataverseAdmin
f4d8c819-a3c1-474d-ae30-11963e675363	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDraftDatasetVersionCommand	Command	2026-06-10 12:54:10.414	:[15 v] 	2026-06-10 12:54:10.408	@dataverseAdmin
0d676444-e367-40d0-b772-da56bf0e5a39	OK	edu.harvard.iq.dataverse.engine.command.impl.ListVersionsCommand	Command	2026-06-10 12:54:10.524	:[15 v] 	2026-06-10 12:54:10.514	@dataverseAdmin
01f8c796-611f-4a78-a9a2-f09e34aca3f0	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetFieldsCommand	Command	2026-06-10 12:54:10.65	:[15 v] 	2026-06-10 12:54:10.585	@dataverseAdmin
0fdb0d0c-ae83-44b4-ad06-176bacadeb93	OK	edu.harvard.iq.dataverse.engine.command.impl.PublishDatasetCommand	Command	2026-06-10 12:54:09.447	:[15 v] 	2026-06-10 12:54:09.392	@dataverseAdmin
34544521-8084-4035-9a92-3dc95bd55e82	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 12:54:09.533	:[15 v] 	2026-06-10 12:54:09.529	@dataverseAdmin
e4d01d2e-aa35-4852-af88-1093ad8949db	OK	edu.harvard.iq.dataverse.engine.command.impl.GetDraftDatasetVersionCommand	Command	2026-06-10 12:54:09.85	:[15 v] 	2026-06-10 12:54:09.841	@dataverseAdmin
7964ff99-436f-418e-afd7-88e9994bdad0	OK	edu.harvard.iq.dataverse.engine.command.impl.UpdateDatasetVersionCommand	Command	2026-06-10 12:54:10.645	:[15 v] 	2026-06-10 12:54:10.596	@dataverseAdmin
26ca30ab-010e-45b1-9390-859089040e89	OK	edu.harvard.iq.dataverse.engine.command.impl.GetPrivateUrlCommand	Command	2026-06-10 12:54:10.741	:[15 v] 	2026-06-10 12:54:10.741	@dataverseAdmin
6a940dc5-b6bd-47c8-9391-c470f1d61a0c	OK	edu.harvard.iq.dataverse.engine.command.impl.FinalizeDatasetPublicationCommand	Command	2026-06-10 12:54:11.7	:[15 v] 	2026-06-10 12:54:10.714	@dataverseAdmin
\.


--
-- Data for Name: alternativepersistentidentifier; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.alternativepersistentidentifier (id, authority, globalidcreatetime, identifier, identifierregistered, protocol, storagelocationdesignator, dvobject_id) FROM stdin;
\.


--
-- Data for Name: apitoken; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.apitoken (id, createtime, disabled, expiretime, tokenstring, authenticateduser_id) FROM stdin;
1	2026-03-05 02:56:20.807	f	2027-03-05 02:56:20.807	71115409-330a-4351-8099-3511a2bcaab0	1
2	2026-03-05 03:06:21.722	f	2027-03-05 03:06:21.722	76bc55fb-24fb-43e6-960b-10dddc3a5797	2
3	2026-03-05 03:06:21.875	f	2027-03-05 03:06:21.875	33dc1ecd-c1a2-485f-bdf8-75f980f750df	3
4	2026-03-05 03:06:22	f	2027-03-05 03:06:22	893b2440-f096-48ed-bea6-f2f8fc1b748b	4
5	2026-03-05 03:06:22.105	f	2027-03-05 03:06:22.105	d56989c5-be8b-4e36-a6bd-406dade0c7b9	5
6	2026-03-05 03:06:22.212	f	2027-03-05 03:06:22.212	4a5bc822-433a-42c8-ac84-caff2de25770	6
7	2026-03-05 03:06:22.315	f	2027-03-05 03:06:22.315	2b7d13e1-0364-41a3-87b3-4c27e64cda3a	7
\.


--
-- Data for Name: authenticateduser; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.authenticateduser (id, affiliation, authenticatedorcid, createdtime, deactivated, deactivatedtime, email, emailconfirmed, firstname, lastapiusetime, lastlogintime, lastname, mutedemails, mutednotifications, "position", ratelimittier, superuser, useridentifier) FROM stdin;
3	DANS	\N	2026-03-05 03:06:21.842	f	\N	user002@dans.knaw.nl	\N	Test02	\N	2026-03-05 03:06:21.842	User02	\N	\N	Employee	1	f	user002
4	舞蹈	\N	2026-03-05 03:06:21.967	f	\N	user003@dans.knaw.nl	\N	測試	\N	2026-03-05 03:06:21.967	User03	\N	\N	Employé	1	f	user003
5	DANS	\N	2026-03-05 03:06:22.084	f	\N	depositor001@dans.knaw.nl	\N	D	\N	2026-03-05 03:06:22.084	Positor01	\N	\N	Employee	1	f	depositor001
6	DANS	\N	2026-03-05 03:06:22.196	f	\N	downloader001@dans.knaw.nl	\N	D	\N	2026-03-05 03:06:22.196	Ownloader01	\N	\N	Employee	1	f	downloader001
7	DANS	\N	2026-03-05 03:06:22.299	f	\N	datamanager001@dans.knaw.nl	\N	D	\N	2026-03-05 03:06:22.299	Atamanager	\N	\N	Employee	1	f	datamanager001
2	DANS	\N	2026-03-05 03:06:21.449	f	\N	user001@dans.knaw.nl	\N	Test01	\N	2026-03-05 03:13:38.349	User01	\N	\N	Employee	1	t	user001
1	Dataverse.org	\N	2026-03-05 02:56:20.778	f	\N	dataverse@mailinator.com	\N	Dataverse	2026-06-10 13:07:44.405	2026-06-10 12:49:56.38	Admin	\N	\N	Admin	1	t	dataverseAdmin
\.


--
-- Data for Name: authenticateduserlookup; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.authenticateduserlookup (id, authenticationproviderid, persistentuserid, authenticateduser_id) FROM stdin;
1	builtin	dataverseAdmin	1
2	builtin	user001	2
3	builtin	user002	3
4	builtin	user003	4
5	builtin	depositor001	5
6	builtin	downloader001	6
7	builtin	datamanager001	7
\.


--
-- Data for Name: authenticationproviderrow; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.authenticationproviderrow (id, enabled, factoryalias, factorydata, subtitle, title) FROM stdin;
shib	t	shib	\N	\N	\N
builtin	t	BuiltinAuthenticationProvider		Datavers' Internal Authentication provider	Dataverse Local
\.


--
-- Data for Name: auxiliaryfile; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.auxiliaryfile (id, checksum, contenttype, filesize, formattag, formatversion, ispublic, origin, type, datafile_id) FROM stdin;
\.


--
-- Data for Name: bannermessage; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.bannermessage (id, active, dismissiblebyuser) FROM stdin;
\.


--
-- Data for Name: bannermessagetext; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.bannermessagetext (id, lang, message, bannermessage_id) FROM stdin;
\.


--
-- Data for Name: builtinuser; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.builtinuser (id, encryptedpassword, passwordencryptionversion, username) FROM stdin;
1	$2a$10$jaQUqq8AXcYff4Z4.1VApO9S4Zc0.ZoULjXP5lAjHLO.pa4eF10FK	1	dataverseAdmin
2	$2a$10$VTN8eHxxYD5RI2bDNy4xAuWMXc23LZj6NQOplA7t8axoIlulvGpKC	1	user001
3	$2a$10$UzUWw/f7Ef5gcOXZzvIQU.NRm2ei2uqkqB7P/vCg.REA0fH4GC8PS	1	user002
4	$2a$10$3T4NXWHow1tlxZgdWhYB4eMXQHsoQI0ch2aYoeRgPIL9yQcCUd3/S	1	user003
5	$2a$10$eViN5a08tFxvWXN0caPDieDtb2ib905h5Ghautd9DUuebwV/bF9J6	1	depositor001
6	$2a$10$j0I7vMxGgbwcW9Sldisk6eY09SmyG1ngTK8hfOl3n4lFg2qiAt./W	1	downloader001
7	$2a$10$LHBpq//MskhyUvbOxtsxFehp4mkLtFc3HwpSDK6mhVe47vRvgRxS6	1	datamanager001
\.


--
-- Data for Name: categorymetadata; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.categorymetadata (id, wfreq, category_id, variablemetadata_id) FROM stdin;
\.


--
-- Data for Name: clientharvestrun; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.clientharvestrun (id, deleteddatasetcount, faileddatasetcount, finishtime, harvestresult, harvesteddatasetcount, starttime, harvestingclient_id) FROM stdin;
\.


--
-- Data for Name: confirmemaildata; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.confirmemaildata (id, created, expires, token, authenticateduser_id) FROM stdin;
1	2026-03-05 02:56:20.8	2026-03-06 02:56:20.8	2de77fc9-1d5b-46d9-a9c9-be65b3051e9a	1
2	2026-03-05 03:06:21.455	2026-03-06 03:06:21.455	ed9d5990-8a07-4e55-a60b-b5b45bdcce99	2
3	2026-03-05 03:06:21.844	2026-03-06 03:06:21.844	c243468c-06e9-4964-9164-b735f3984f19	3
4	2026-03-05 03:06:21.972	2026-03-06 03:06:21.972	51178a15-5a70-4120-90b8-c23c2c085c25	4
5	2026-03-05 03:06:22.086	2026-03-06 03:06:22.086	8127edfc-4b81-4b34-9c7f-1c1d856472d6	5
6	2026-03-05 03:06:22.199	2026-03-06 03:06:22.199	bf82cb51-5898-4b6d-8413-c8ab204b10f3	6
7	2026-03-05 03:06:22.301	2026-03-06 03:06:22.301	6021cac4-6e3b-4a3d-9e3c-f2f9ea3e56bd	7
\.


--
-- Data for Name: controlledvocabalternate; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.controlledvocabalternate (id, strvalue, controlledvocabularyvalue_id, datasetfieldtype_id) FROM stdin;
1	alu	61	37
2	kud	62	37
3	aou	63	37
4	apq	64	37
5	aiw	65	37
6	aas	66	37
7	kbt	67	37
8	abg	68	37
9	abf	69	37
10	abm	70	37
11	mij	71	37
12	aau	72	37
13	abq	73	37
14	abp	74	37
15	abi	75	37
16	bsa	76	37
17	axb	77	37
18	ash	78	37
19	Abkhaz	79	37
20	Abkhazian	79	37
21	abk	79	37
22	ab	79	37
23	aob	80	37
24	abo	81	37
25	abr	82	37
26	ado	83	37
27	aah	84	37
28	abn	85	37
29	abz	86	37
30	kgr	87	37
31	abu	88	37
32	mgj	89	37
33	aba	90	37
34	tpx	91	37
35	aca	92	37
36	acn	93	37
37	yif guq Aché	94	37
38	acz	95	37
39	acr	96	37
40	ace	97	37
41	act	98	37
42	acu	99	37
43	acv	100	37
44	ach	101	37
45	acs	102	37
46	xad	103	37
47	fub	104	37
48	ads	105	37
49	adn	106	37
50	adq	107	37
51	ada	108	37
52	kad	109	37
53	tiu	110	37
54	ade	111	37
55	adh	112	37
56	adi	113	37
57	wsg	114	37
58	adj	115	37
59	dth	116	37
60	ort	117	37
61	gas	118	37
62	adt	119	37
63	adr	120	37
64	adu	121	37
65	ady	122	37
66	adz	123	37
67	aez	124	37
68	awi	125	37
69	xae	126	37
70	aeq	127	37
71	aal	128	37
72	aa	129	37
73	aar	129	37
74	afg	130	37
75	aft	131	37
76	afh	132	37
77	afr	133	37
78	af	133	37
79	afs	134	37
80	agd	135	37
81	agi	136	37
82	agc	137	37
83	avo	138	37
84	agq	139	37
85	ahh	140	37
86	gtu	141	37
87	agx	142	37
88	xag	143	37
89	aif	144	37
90	kit	145	37
91	ibm	146	37
92	agu	147	37
93	aga	148	37
94	agr	149	37
95	aug	150	37
96	msm	151	37
97	agn	152	37
98	yay	153	37
99	aha	154	37
100	esg	155	37
101	thm	156	37
102	ahr	157	37
103	aho	158	37
104	aht	159	37
105	nfd	160	37
106	aih	161	37
107	aix	162	37
108	tba	163	37
109	mwg	164	37
110	aiq	165	37
111	ail	166	37
112	aim	167	37
113	aic	168	37
114	aib	169	37
115	ain	170	37
116	aki	171	37
117	air	172	37
118	aio	173	37
119	ajg	174	37
120	aja	175	37
121	ajw	176	37
122	aji	177	37
123	muc	178	37
124	cpc	179	37
125	akq	180	37
126	soh	181	37
127	abj	182	37
128	akm	183	37
129	aci	184	37
130	akj	185	37
131	akx	186	37
132	aky	187	37
133	ack	188	37
134	aka	189	37
135	ak	189	37
136	acl	190	37
137	aks	191	37
138	ake	192	37
139	aik	193	37
140	keu	194	37
141	tsr	195	37
142	aeu	196	37
143	ahk	197	37
144	akv	198	37
145	akk	199	37
146	sia	200	37
147	akl	201	37
148	akt	202	37
149	bss	203	37
150	miw	204	37
151	akf	205	37
152	ibe	206	37
153	afi	207	37
154	spm	208	37
155	ayk	209	37
156	aku	210	37
157	aqz	211	37
158	ako	212	37
159	akw	213	37
160	nqy	214	37
161	syy	215	37
162	alw	216	37
163	akz	217	37
164	dul	218	37
165	mim	219	37
166	ala	220	37
167	wbj	221	37
168	alk	222	37
169	amp	223	37
170	alj	224	37
171	xln	225	37
172	apv	226	37
173	alh	227	37
174	sqi	228	37
175	alb	228	37
176	sq	228	37
177	sqk	229	37
178	lsc	230	37
179	xta	231	37
180	alf	232	37
181	gah	233	37
182	ale	234	37
183	arq	235	37
184	ajs	236	37
185	aao	237	37
186	asp	238	37
187	alq	239	37
188	aiy	240	37
189	ald	241	37
190	all	242	37
191	aid	243	37
192	ypo	244	37
193	aol	245	37
194	zaq	246	37
195	aes	247	37
196	xua	248	37
197	aub	249	37
198	aab	250	37
199	alp	251	37
200	yna	252	37
201	alz	253	37
202	alr	254	37
203	avd	255	37
204	aly	256	37
205	amm	257	37
206	nyi	258	37
207	amq	259	37
208	amc	260	37
209	ali	261	37
210	aad	262	37
211	jks	263	37
212	amn	264	37
213	ama	265	37
214	aie	266	37
215	amr	267	37
216	aaz	268	37
217	zpo	269	37
218	utp	270	37
219	rwm	271	37
220	amk	272	37
221	aew	273	37
222	abc	274	37
223	amv	275	37
224	ael	276	37
225	alm	277	37
226	amb	278	37
227	qva	279	37
228	abs	280	37
229	aag	281	37
230	apo	282	37
231	abt	283	37
232	amj	284	37
233	adx	285	37
234	aey	286	37
235	ase	287	37
236	ifa	288	37
237	am	289	37
238	amh	289	37
239	amy	290	37
240	ami	291	37
241	amo	292	37
242	alx	293	37
243	mbz	294	37
244	apg	295	37
245	aqd	296	37
246	ajz	297	37
247	amt	298	37
248	adw	299	37
249	amg	300	37
250	dti	301	37
251	anw	302	37
252	akg	303	37
253	anm	304	37
254	pda	305	37
255	aan	306	37
256	imi	307	37
257	bpo	308	37
258	grc	309	37
259	hbo	310	37
260	xmk	311	37
261	xna	312	37
262	xzp	313	37
263	dgl	314	37
264	afd	315	37
265	ajn	316	37
266	xaa	317	37
267	hca	318	37
268	ana	319	37
269	aod	320	37
270	adg	321	37
271	anr	322	37
272	ani	323	37
273	bzb	324	37
274	anb	325	37
275	ano	326	37
276	anx	327	37
277	aty	328	37
278	anz	329	37
279	aby	330	37
280	myo	331	37
281	agm	332	37
282	aqt	333	37
283	age	334	37
284	aoe	335	37
285	akh	336	37
286	njm	337	37
287	yli	338	37
288	anp	339	37
289	avm	340	37
290	xno	341	37
291	rme	342	37
292	aoa	343	37
293	agg	344	37
294	aog	345	37
295	tnd	346	37
296	awg	347	37
297	ypn	348	37
298	blo	349	37
299	anf	350	37
300	aoi	351	37
301	aqk	352	37
302	boj	353	37
303	aak	354	37
304	amx	355	37
305	nun	356	37
306	anj	357	37
307	ans	358	37
308	and	359	37
309	ant	360	37
310	xmv	361	37
311	aig	362	37
312	anl	363	37
313	anu	364	37
314	cko	365	37
315	aui	366	37
316	auq	367	37
317	aud	368	37
318	any	369	37
319	mtb	370	37
320	njo	371	37
321	pni	372	37
322	aor	373	37
323	kbx	374	37
324	xap	375	37
325	apy	376	37
326	ena	377	37
327	mip	378	37
328	apt	379	37
329	api	380	37
330	apn	381	37
331	app	382	37
332	ahp	383	37
333	apu	384	37
334	apx	385	37
335	xaq	386	37
336	ard	387	37
337	arl	388	37
338	ara	389	37
339	ar	389	37
340	an	390	37
341	arg	390	37
342	akr	391	37
343	rkw	392	37
344	atq	393	37
345	stk	394	37
346	aaf	395	37
347	xrt	396	37
348	jbj	397	37
349	aro	398	37
350	arp	399	37
351	arj	400	37
352	xaj	401	37
353	arw	402	37
354	awt	403	37
355	awm	404	37
356	arv	405	37
357	aae	406	37
358	aqc	407	37
359	pka	408	37
360	mwc	409	37
361	aea	410	37
362	aem	411	37
363	qxu	412	37
364	aed	413	37
365	agj	414	37
366	agf	415	37
367	arh	416	37
368	aqr	417	37
369	aok	418	37
370	aac	419	37
371	laz	420	37
372	ylu	421	37
373	aai	422	37
374	aqg	423	37
375	ark	424	37
376	ari	425	37
377	ait	426	37
378	xrn	427	37
379	luc	428	37
380	xrm	429	37
381	hy	430	37
382	hye	430	37
383	arm	430	37
384	aen	431	37
385	apr	432	37
386	aps	433	37
387	aia	434	37
388	frp	435	37
389	rrt	436	37
390	atz	437	37
391	msy	438	37
392	aur	439	37
393	lsr	440	37
394	atx	441	37
395	aru	442	37
396	arx	443	37
397	aat	444	37
398	asz	445	37
399	mtv	446	37
400	ahs	447	37
401	ask	448	37
402	csh	449	37
403	atn	450	37
404	cni	451	37
405	cjo	452	37
406	prq	453	37
407	asl	454	37
408	eiv	455	37
409	asv	456	37
410	asm	457	37
411	as	457	37
412	sjg	458	37
413	asb	459	37
414	aii	460	37
415	ast	461	37
416	aum	462	37
417	asa	463	37
418	psa	464	37
419	aua	465	37
420	zoo	466	37
421	asr	467	37
422	atm	468	37
423	atd	469	37
424	aqp	470	37
425	amz	471	37
426	mib	472	37
427	adb	473	37
428	tay	474	37
429	ate	475	37
430	aph	476	37
431	atk	477	37
432	atj	478	37
433	aqm	479	37
434	ato	480	37
435	aot	481	37
436	aox	482	37
437	atc	483	37
438	cch	484	37
439	atw	485	37
440	pkr	486	37
441	ati	487	37
442	ocu	488	37
443	avt	489	37
444	aul	490	37
445	aux	491	37
446	auh	492	37
447	avs	493	37
448	asf	494	37
449	aut	495	37
450	asw	496	37
451	asq	497	37
452	smf	498	37
453	auu	499	37
454	auo	500	37
455	av	501	37
456	ava	501	37
457	avn	502	37
458	avb	503	37
459	ave	504	37
460	ae	504	37
461	avi	505	37
462	avu	506	37
463	avv	507	37
464	vwa	508	37
465	awb	509	37
466	kwi	510	37
467	awk	511	37
468	bcu	512	37
469	awa	513	37
470	awo	514	37
471	aya	515	37
472	awx	516	37
473	awh	517	37
474	bob	518	37
475	awr	519	37
476	awe	520	37
477	azo	521	37
478	auy	522	37
479	auj	523	37
480	awn	524	37
481	gwm	525	37
482	kmn	526	37
483	yiu	527	37
484	aww	528	37
485	afu	529	37
486	auw	530	37
487	ahb	531	37
488	yix	532	37
489	ayd	533	37
490	quy	534	37
491	vmy	535	37
492	aye	536	37
493	axe	537	37
494	ayq	538	37
495	nfl	539	37
496	yyz	540	37
497	ayb	541	37
498	ay	542	37
499	aym	542	37
500	zaf	543	37
501	ayo	544	37
502	ayu	545	37
503	miy	546	37
504	aze	547	37
505	az	547	37
506	aza	548	37
507	yiz	549	37
508	tpc	550	37
509	bvj	551	37
510	bqx	552	37
511	bba	553	37
512	bbw	554	37
513	mbf	555	37
514	bbm	556	37
515	bbk	557	37
516	baa	558	37
517	bcr	559	37
518	bzg	560	37
519	bcy	561	37
520	btj	562	37
521	xbc	563	37
522	bhz	564	37
523	bau	565	37
524	bfq	566	37
525	bde	567	37
526	bdz	568	37
527	bia	569	37
528	jbi	570	37
529	bac	571	37
530	pbp	572	37
531	bvd	573	37
532	bvc	574	37
533	btr	575	37
534	bfj	576	37
535	bwt	577	37
536	ksf	578	37
537	bfd	579	37
538	bqf	580	37
539	bgo	581	37
540	bmd	582	37
541	bcg	583	37
542	bsp	584	37
543	bsv	585	37
544	bfy	586	37
545	bmi	587	37
546	fui	588	37
547	bqg	589	37
548	bgq	590	37
549	bpi	591	37
550	bqb	592	37
551	kva	593	37
552	yha	594	37
553	bdw	595	37
554	bah	596	37
555	abv	597	37
556	bhv	598	37
557	bjh	599	37
558	bhj	600	37
559	bdq	601	37
560	bsu	602	37
561	bdj	603	37
562	bbf	604	37
563	bkx	605	37
564	bqh	606	37
565	bmx	607	37
566	bcz	608	37
567	bab	609	37
568	bcb	610	37
569	bsw	611	37
570	fah	612	37
571	bjs	613	37
572	bjm	614	37
573	vjk	615	37
574	bkc	616	37
575	bdh	617	37
576	bkq	618	37
577	bqz	619	37
578	bqi	620	37
579	bki	621	37
580	bkh	622	37
581	kme	623	37
582	bbs	624	37
583	bkr	625	37
584	bjw	626	37
585	bls	627	37
586	zba	628	37
587	blw	629	37
588	sse	630	37
589	bjt	631	37
590	ble	632	37
591	blz	633	37
592	bdn	634	37
593	bcp	635	37
594	bcn	636	37
595	ban	637	37
596	mhp	638	37
597	bgx	639	37
598	rmn	640	37
599	bqo	641	37
600	biz	642	37
601	bft	643	37
602	rml	644	37
603	blq	645	37
604	bal	646	37
605	bog	647	37
606	bbq	648	37
607	bmo	649	37
608	ptu	650	37
609	bam	651	37
610	bm	651	37
611	myf	652	37
612	baw	653	37
613	bce	654	37
614	bcf	655	37
615	bqt	656	37
616	bax	657	37
617	bvm	658	37
618	bmg	659	37
619	bfk	660	37
620	bcw	661	37
621	bjx	662	37
622	byz	663	37
623	bnd	664	37
624	bpq	665	37
625	liy	666	37
626	bpd	667	37
627	bqk	668	37
628	bfl	669	37
629	yaj	670	37
630	bza	671	37
631	bqj	672	37
632	bdy	673	37
633	bxg	674	37
634	bgf	675	37
635	bbe	676	37
636	bgz	677	37
637	bjb	678	37
638	bni	679	37
639	dba	680	37
640	mfb	681	37
641	bgj	682	37
642	bnx	683	37
643	bsj	684	37
644	bvv	685	37
645	bwi	686	37
646	bjn	687	37
647	bxw	688	37
648	jjr	689	37
649	dbw	690	37
650	abb	691	37
651	bcm	692	37
652	bap	693	37
653	bfx	694	37
654	bnq	695	37
655	bno	696	37
656	pnw	697	37
657	bci	698	37
658	bhr	699	37
659	brd	700	37
660	rbp	701	37
661	bbb	702	37
662	baj	703	37
663	kys	704	37
664	bbg	705	37
665	brm	706	37
666	bmz	707	37
667	brp	708	37
668	brs	709	37
669	bsn	710	37
670	vmb	711	37
671	boi	712	37
672	gry	713	37
673	bcj	714	37
674	bva	715	37
675	mlp	716	37
676	bfa mot Barí	717	37
677	bch	718	37
678	bjc	719	37
679	bxo	720	37
680	jbk	721	37
681	bjk	722	37
682	bbi	723	37
683	tbn	724	37
684	bpt	725	37
685	bjz	726	37
686	byr	727	37
687	bwg	728	37
688	bjf	729	37
689	bae	730	37
690	bas	731	37
691	bzw	732	37
692	bsl	733	37
693	buj	734	37
694	bdb	735	37
695	byq	736	37
696	bsg	737	37
697	ba	738	37
698	bak	738	37
699	bst	739	37
700	eus	740	37
701	baq	740	37
702	eu	740	37
703	bsq	741	37
704	bsr	742	37
705	bsc	743	37
706	bsi	744	37
707	bta	745	37
708	ifb	746	37
709	bya	747	37
710	btz	748	37
711	akb	749	37
712	btd	750	37
713	btx	751	37
714	btm	752	37
715	bts	753	37
716	bbc	754	37
717	bnm	755	37
718	btq	756	37
719	btv	757	37
720	bhm	758	37
721	btc	759	37
722	bvt	760	37
723	xby	761	37
724	bbl	762	37
725	btu	763	37
726	zbt	764	37
727	bay	765	37
728	bbd	766	37
729	sne	767	37
730	bsf	768	37
731	bpe	769	37
732	brg	770	37
733	bge	771	37
734	bwk	772	37
735	bvz	773	37
736	bar	774	37
737	bgr	775	37
738	mkq	776	37
739	bjy	777	37
740	bvy	778	37
741	byg	779	37
742	byl	780	37
743	bda	781	37
744	bxj	782	37
745	bfr	783	37
746	beo	784	37
747	bea	785	37
748	bfp	786	37
749	beb	787	37
750	bek	788	37
751	bxp	789	37
752	bjv	790	37
753	bed	791	37
754	bkf	792	37
755	bxq	793	37
756	beq	794	37
757	bnz	795	37
758	bby	796	37
759	ebc	797	37
760	bej	798	37
761	bei	799	37
762	bkv	800	37
763	bkw	801	37
764	beg	802	37
765	bxb	803	37
766	bvi	804	37
767	bel	805	37
768	be	805	37
769	byw	806	37
770	bey	807	37
771	blm	808	37
772	bzj	809	37
773	blc	810	37
774	brw	811	37
775	glb	812	37
776	bem	813	37
777	bmb	814	37
778	dbt	815	37
779	yun	816	37
780	bez	817	37
781	bef	818	37
782	egm	819	37
783	bcq	820	37
784	bdp	821	37
785	bct	822	37
786	nhb	823	37
787	bng	824	37
788	bn	825	37
789	Bengali	825	37
790	Bangla	825	37
791	ben	825	37
792	bgy	826	37
793	bqy	827	37
794	bnu	828	37
795	byd	829	37
796	bue	830	37
797	bie	831	37
798	bxv	832	37
799	bve	833	37
800	brc	834	37
801	bkl	835	37
802	bit	836	37
803	bom	837	37
804	wti	838	37
805	byt	839	37
806	mhe	840	37
807	bes	841	37
808	bep	842	37
809	bfe	843	37
810	bew	844	37
811	byf	845	37
812	btt	846	37
813	eot	847	37
814	xub	848	37
815	kap	849	37
816	bhd	850	37
817	bhx	851	37
818	bha	852	37
819	bgw	853	37
820	bht	854	37
821	bhe	855	37
822	bhy	856	37
823	bhi	857	37
824	bhb	858	37
825	bho	859	37
826	nes	860	37
827	byh	861	37
828	bhu	862	37
829	bif	863	37
830	bdf	864	37
831	bhw	865	37
832	beh	866	37
833	bpv	867	37
834	big	868	37
835	byk	869	37
836	bmt	870	37
837	bje	871	37
838	bth	872	37
839	xbp	873	37
840	ihw	874	37
841	bid	875	37
842	bym	876	37
843	bjg	877	37
844	bmc	878	37
845	bnk	879	37
846	brj	880	37
847	biu	881	37
848	nmb	882	37
849	bhc	883	37
850	xbe	884	37
851	ibh	885	37
852	bh	886	37
853	bih	886	37
854	jbm	887	37
855	bix	888	37
856	bik	889	37
857	byb	890	37
858	bip	891	37
859	bql	892	37
860	kfs	893	37
861	bpz	894	37
862	brz	895	37
863	bil	896	37
864	byn	897	37
865	bms	898	37
866	bll	899	37
867	blb	900	37
868	bxf	901	37
869	bhp	902	37
870	bhl	903	37
871	bim	904	37
872	byj	905	37
873	bmn	906	37
874	bxz	907	37
875	bhg	908	37
876	xbd	909	37
877	bon	910	37
878	bin	911	37
879	bpj	912	37
880	itb	913	37
881	bne	914	37
882	bny	915	37
883	bkd	916	37
884	bjr	917	37
885	biq	918	37
886	brf	919	37
887	bxe	920	37
888	brr	921	37
889	btf	922	37
890	biy	923	37
891	bzr	924	37
892	bqq	925	37
893	brk	926	37
894	bvq	927	37
895	xbj	928	37
896	brl	929	37
897	ije	930	37
898	bpy	931	37
899	bwh	932	37
900	bnw	933	37
901	bis	934	37
902	bi	934	37
903	bir	935	37
904	bib	936	37
905	bzi	937	37
906	bgk	938	37
907	brt	939	37
908	mcc	940	37
909	bwm	941	37
910	byo	942	37
911	bpm	943	37
912	blp	944	37
913	bfh	945	37
914	beu	946	37
915	blr	947	37
916	zbl	948	37
917	bgl	949	37
918	bpw	950	37
919	mae	951	37
920	mux	952	37
921	bzn	953	37
922	bzl	954	37
923	bgb	955	37
924	bty	956	37
925	boy	957	37
926	brx	958	37
927	gbj	959	37
928	bdv	960	37
929	bff	961	37
930	bvw	962	37
931	boq	963	37
932	bux	964	37
933	bqu	965	37
934	bhn	966	37
935	bzf	967	37
936	ybk	968	37
937	bqc	969	37
938	bkp	970	37
939	bus	971	37
940	bdt	972	37
941	bky	973	37
942	bnp	974	37
943	bld	975	37
944	bol	976	37
945	xbo	977	37
946	bvo	978	37
947	bli	979	37
948	smk	980	37
949	bvl	981	37
950	bkt	982	37
951	bof	983	37
952	bzm	984	37
953	blj	985	37
954	ply	986	37
955	bmf	987	37
956	boh	988	37
957	bml	989	37
958	bws	990	37
959	zmx	991	37
960	bmq	992	37
961	bmw	993	37
962	glc	994	37
963	peh	995	37
964	bou	996	37
965	bfw	997	37
966	kzc	998	37
967	dbu	999	37
968	bna	1000	37
969	bnv	1001	37
970	bdg	1002	37
971	bpg	1003	37
972	bui	1004	37
973	bot	1005	37
974	bpu	1006	37
975	bok	1007	37
976	bvg	1008	37
977	bop	1009	37
978	bnc	1010	37
979	bnb	1011	37
980	bnl	1012	37
981	bvf	1013	37
982	boa	1014	37
983	gax	1015	37
984	kvn	1016	37
985	gai	1017	37
986	fue	1018	37
987	bwo	1019	37
988	xxb	1020	37
989	ksr	1021	37
990	brn	1022	37
991	bor	1023	37
992	bwf	1024	37
993	bqs	1025	37
994	bos	1026	37
995	bs	1026	37
996	bmj	1027	37
997	bph	1028	37
998	sbl	1029	37
999	nku	1030	37
1000	suo	1031	37
1001	pcc	1032	37
1002	bzo	1033	37
1003	aof	1034	37
1004	brh	1035	37
1005	bra	1036	37
1006	brb	1037	37
1007	bzs	1038	37
1008	buq	1039	37
1009	brq	1040	37
1010	br	1041	37
1011	bre	1041	37
1012	bzd	1042	37
1013	rib	1043	37
1014	bzt	1044	37
1015	bfi	1045	37
1016	bro	1046	37
1017	sgt	1047	37
1018	bkk	1048	37
1019	plw	1049	37
1020	bpl	1050	37
1021	rnb	1051	37
1022	kxd	1052	37
1023	bsb	1053	37
1024	xpz	1054	37
1025	zbu	1055	37
1026	jid	1056	37
1027	bwx	1057	37
1028	bub	1058	37
1029	cbl	1059	37
1030	box	1060	37
1031	bvb	1061	37
1032	buw	1062	37
1033	bbx	1063	37
1034	stt	1064	37
1035	btp	1065	37
1036	bdx	1066	37
1037	buu	1067	37
1038	bdk	1068	37
1039	bdm	1069	37
1040	bja	1070	37
1041	bbh	1071	37
1042	buk	1072	37
1043	bgt	1073	37
1044	bug	1074	37
1045	sab	1075	37
1046	bgg	1076	37
1047	ubl	1077	37
1048	bku	1078	37
1049	bxh	1079	37
1050	sdo	1080	37
1051	bvk	1081	37
1052	bhh	1082	37
1053	bvu	1083	37
1054	bkn	1084	37
1055	ape	1085	37
1056	tkb	1086	37
1057	bxk	1087	37
1058	buz	1088	37
1059	bul	1089	37
1060	bg	1089	37
1061	bqn	1090	37
1062	bmp	1091	37
1063	uly	1092	37
1064	bwu	1093	37
1065	bzq	1094	37
1066	buy	1095	37
1067	sti	1096	37
1068	bum	1097	37
1069	bjl	1098	37
1070	bmv	1099	37
1071	byp	1100	37
1072	bvp	1101	37
1073	aon	1102	37
1074	kjz	1103	37
1075	buv	1104	37
1076	bvn	1105	37
1077	bfn	1106	37
1078	bdd	1107	37
1079	bns	1108	37
1080	bqd	1109	37
1081	but	1110	37
1082	xbg	1111	37
1083	bkz	1112	37
1084	wun	1113	37
1085	dgb	1114	37
1086	bck	1115	37
1087	bnn	1116	37
1088	blf	1117	37
1089	bwr	1118	37
1090	bys	1119	37
1091	bkg	1120	37
1092	bvr	1121	37
1093	bti	1122	37
1094	bxn	1123	37
1095	bvh	1124	37
1096	bua	1125	37
1097	bji	1126	37
1098	vrt	1127	37
1099	bur	1128	37
1100	my	1128	37
1101	mya	1128	37
1102	bzu	1129	37
1103	mhs	1130	37
1104	bqw	1131	37
1105	bry	1132	37
1106	aip	1133	37
1107	bdi	1134	37
1108	lsb	1135	37
1109	bds	1136	37
1110	bsk	1137	37
1111	bqr	1138	37
1112	asi	1139	37
1113	bqp	1140	37
1114	bxs	1141	37
1115	bsm	1142	37
1116	bfg	1143	37
1117	buc	1144	37
1118	buf	1145	37
1119	bso	1146	37
1120	bup	1147	37
1121	dox	1148	37
1122	bju	1149	37
1123	kyb	1150	37
1124	bnr	1151	37
1125	btw	1152	37
1126	bhs	1153	37
1127	byi	1154	37
1128	jiy	1155	37
1129	bww	1156	37
1130	bwd	1157	37
1131	tte	1158	37
1132	bwa	1159	37
1133	bwe	1160	37
1134	bwl	1161	37
1135	bwc	1162	37
1136	bwz	1163	37
1137	bee	1164	37
1138	mkk	1165	37
1139	khd	1166	37
1140	dri	1167	37
1141	msq	1168	37
1142	cbb	1169	37
1143	cjp	1170	37
1144	miu	1171	37
1145	ccr	1172	37
1146	roc	1173	37
1147	cbv	1174	37
1148	cad	1175	37
1149	ccd	1176	37
1150	cah	1177	37
1151	chl	1178	37
1152	qvc	1179	37
1153	qvl	1180	37
1154	zad	1181	37
1155	frc	1182	37
1156	ckx	1183	37
1157	ckz	1184	37
1158	cky	1185	37
1159	tbk	1186	37
1160	qud	1187	37
1161	caw	1188	37
1162	clu	1189	37
1163	rmq	1190	37
1164	csx	1191	37
1165	mcu	1192	37
1166	wes	1193	37
1167	rab	1194	37
1168	cml	1195	37
1169	sro	1196	37
1170	kbh	1197	37
1171	cmt	1198	37
1172	xcc	1199	37
1173	cbu	1200	37
1174	ram	1201	37
1175	caz	1202	37
1176	mlc	1203	37
1177	cov	1204	37
1178	kaq	1205	37
1179	cps	1206	37
1180	cpg	1207	37
1181	cot	1208	37
1182	caq	1209	37
1183	cfd	1210	37
1184	cby	1211	37
1185	crf	1212	37
1186	cbc	1213	37
1187	xcr	1214	37
1188	hns	1215	37
1189	jvn	1216	37
1190	cbd	1217	37
1191	crr	1218	37
1192	cal	1219	37
1193	rmc	1220	37
1194	crx	1221	37
1195	cbr	1222	37
1196	cbs	1223	37
1197	dgc	1224	37
1198	asc	1225	37
1199	csc	1226	37
1200	cat	1227	37
1201	ca	1227	37
1202	Catalan	1227	37
1203	Valencian	1227	37
1204	chc	1228	37
1205	cav	1229	37
1206	cyb	1230	37
1207	cay	1231	37
1208	xcy	1232	37
1209	qxr	1233	37
1210	nat	1234	37
1211	sef	1235	37
1212	ceb	1236	37
1213	xce	1237	37
1214	cam	1238	37
1215	cen	1239	37
1216	cns	1240	37
1217	tzm	1241	37
1218	awu	1242	37
1219	ayr	1243	37
1220	bca	1244	37
1221	zbc	1245	37
1222	bcl	1246	37
1223	lbk	1247	37
1224	agt	1248	37
1225	grv	1249	37
1226	zch	1250	37
1227	nch	1251	37
1228	hmc	1252	37
1229	knc	1253	37
1230	ckb	1254	37
1231	mwo	1255	37
1232	pse	1256	37
1233	mxz	1257	37
1234	hmm	1258	37
1235	maz	1259	37
1236	mel	1260	37
1237	cmo	1261	37
1238	nhn	1262	37
1239	ncb	1263	37
1240	ojc	1264	37
1241	ryu	1265	37
1242	plc	1266	37
1243	pbs	1267	37
1244	pst	1268	37
1245	poo	1269	37
1246	ncx	1270	37
1247	sml	1271	37
1248	ess	1272	37
1249	csm	1273	37
1250	syb	1274	37
1251	tgt	1275	37
1252	tar	1276	37
1253	tuf	1277	37
1254	esu	1278	37
1255	fuq	1279	37
1256	cet	1280	37
1257	cme	1281	37
1258	cxh	1282	37
1259	sbf	1283	37
1260	quk	1284	37
1261	cbi	1285	37
1262	shu	1286	37
1263	cds	1287	37
1264	cdy	1288	37
1265	chg	1289	37
1266	ciy	1290	37
1267	ckh	1291	37
1268	cli	1292	37
1269	ckm	1293	37
1270	ccp	1294	37
1271	cll	1295	37
1272	cld	1296	37
1273	tgf	1297	37
1274	ceg	1298	37
1275	cji	1299	37
1276	cdh	1300	37
1277	can	1301	37
1278	ccc	1302	37
1279	ch	1303	37
1280	cha	1303	37
1281	nbc	1304	37
1282	cga	1305	37
1283	cna	1306	37
1284	chx	1307	37
1285	caj	1308	37
1286	cra	1309	37
1287	cdn	1310	37
1288	crv	1311	37
1289	cbk	1312	37
1290	cbt	1313	37
1291	mih	1314	37
1292	xtb	1315	37
1293	ruk	1316	37
1294	ce	1317	37
1295	che	1317	37
1296	mrn	1318	37
1297	xch	1319	37
1298	cjn	1320	37
1299	cde	1321	37
1300	cnu	1322	37
1301	cdm	1323	37
1302	ycp	1324	37
1303	cpn	1325	37
1304	chr	1326	37
1305	ych	1327	37
1306	ctc	1328	37
1307	cwg	1329	37
1308	chy	1330	37
1309	hne	1331	37
1310	ctn	1332	37
1311	cur	1333	37
1312	csd	1334	37
1313	cip	1335	37
1314	chb	1336	37
1315	trs	1337	37
1316	nya	1338	37
1317	Chewa	1338	37
1318	ny	1338	37
1319	Chichewa	1338	37
1320	Nyanja	1338	37
1321	zpv	1339	37
1322	pei	1340	37
1323	cic	1341	37
1324	cob	1342	37
1325	cgg	1343	37
1326	mii	1344	37
1327	clc	1345	37
1328	csg	1346	37
1329	clh	1347	37
1330	csa	1348	37
1331	zoh	1349	37
1332	cid	1350	37
1333	qug	1351	37
1334	cbg	1352	37
1335	bxu	1353	37
1336	cih	1354	37
1337	cnb	1355	37
1338	qxc	1356	37
1339	zho	1357	37
1340	zh	1357	37
1341	chi	1357	37
1342	cpi	1358	37
1343	csl	1359	37
1344	chh	1360	37
1345	chn	1361	37
1346	cap	1362	37
1347	chp	1363	37
1348	ciw	1364	37
1349	maq	1365	37
1350	cax	1366	37
1351	qxa	1367	37
1352	nhd	1368	37
1353	cdf	1369	37
1354	ctm	1370	37
1355	cik	1371	37
1356	ctg	1372	37
1357	the	1373	37
1358	zpc	1374	37
1359	cgk	1375	37
1360	coz	1376	37
1361	cho	1377	37
1362	cdi	1378	37
1363	nri	1379	37
1364	cjk	1380	37
1365	ctu	1381	37
1366	cht	1382	37
1367	cog	1383	37
1368	cda	1384	37
1369	coh	1385	37
1370	cce	1386	37
1371	xco	1387	37
1372	caa	1388	37
1373	nct	1389	37
1374	crw	1390	37
1375	cje	1391	37
1376	cqd	1392	37
1377	cjv	1393	37
1378	cvg	1394	37
1379	cac	1395	37
1380	cuh	1396	37
1381	ckt	1397	37
1382	cuw	1398	37
1383	clw	1399	37
1384	ncu	1400	37
1385	cnq	1401	37
1386	cdj	1402	37
1387	scb	1403	37
1388	chk	1404	37
1389	xcv	1405	37
1390	chv	1406	37
1391	cv	1406	37
1392	chw	1407	37
1393	cao	1408	37
1394	cib	1409	37
1395	cia	1410	37
1396	ckl	1411	37
1397	awc	1412	37
1398	cim	1413	37
1399	cdr	1414	37
1400	cie	1415	37
1401	cin	1416	37
1402	xcg	1417	37
1403	asg	1418	37
1404	txt	1419	37
1405	tgd	1420	37
1406	clm	1421	37
1407	xcl	1422	37
1408	myz	1423	37
1409	cmg	1424	37
1410	nci	1425	37
1411	nwc	1426	37
1412	qwc	1427	37
1413	cls	1428	37
1414	syc	1429	37
1415	xct	1430	37
1416	xcw	1431	37
1417	csi	1432	37
1418	kjc	1433	37
1419	zca	1434	37
1420	naz	1435	37
1421	mco	1436	37
1422	zps	1437	37
1423	miz	1438	37
1424	cod	1439	37
1425	coj	1440	37
1426	coc	1441	37
1427	coa	1442	37
1428	crd	1443	37
1429	con	1444	37
1430	kog	1445	37
1431	liw	1446	37
1432	csn	1447	37
1433	gct	1448	37
1434	cof	1449	37
1435	col	1450	37
1436	cco	1451	37
1437	com	1452	37
1438	xcm	1453	37
1439	cfg	1454	37
1440	coo	1455	37
1441	cno	1456	37
1442	swc	1457	37
1443	csz	1458	37
1444	zoc	1459	37
1445	trc	1460	37
1446	cop	1461	37
1447	coq	1462	37
1448	cry	1463	37
1449	kw	1464	37
1450	cor	1464	37
1451	qwa	1465	37
1452	co	1466	37
1453	cos	1466	37
1454	csr	1467	37
1455	mta	1468	37
1456	xcn	1469	37
1457	cow	1470	37
1458	pbf	1471	37
1459	toc	1472	37
1460	cr	1473	37
1461	cre	1473	37
1462	mus	1474	37
1463	crh	1475	37
1464	csq	1476	37
1465	hrv	1477	37
1466	src	1477	37
1467	hr	1477	37
1468	Logudorese Sardinian	1477	37
1469	Croatian	1477	37
1470	mfn	1478	37
1471	cro	1479	37
1472	crz	1480	37
1473	cua	1481	37
1474	csf	1482	37
1475	cub	1483	37
1476	cui	1484	37
1477	cuy	1485	37
1478	cul	1486	37
1479	cuo	1487	37
1480	xcb	1488	37
1481	cuq	1489	37
1482	xlu	1490	37
1483	cup	1491	37
1484	xcu	1492	37
1485	kpc	1493	37
1486	quz	1494	37
1487	ccl	1495	37
1488	cuv	1496	37
1489	xtu	1497	37
1490	cyo	1498	37
1491	bwy	1499	37
1492	acy	1500	37
1493	ces	1501	37
1494	cs	1501	37
1495	cze	1501	37
1496	cse	1502	37
1497	cnc	1503	37
1498	kzf	1504	37
1499	dao	1505	37
1500	bpa	1506	37
1501	lni	1507	37
1502	dsh	1508	37
1503	dtn	1509	37
1504	dbq	1510	37
1505	dbr	1511	37
1506	dbe	1512	37
1507	xdc	1513	37
1508	dda	1514	37
1509	mps	1515	37
1510	dbd	1516	37
1511	dgz	1517	37
1512	dgd	1518	37
1513	dgk	1519	37
1514	dag	1520	37
1515	dec	1521	37
1516	dgn	1522	37
1517	dlk	1523	37
1518	dal	1524	37
1519	das	1525	37
1520	dij	1526	37
1521	zhd	1527	37
1522	drb	1528	37
1523	dkk	1529	37
1524	dak	1530	37
1525	dka	1531	37
1526	ngk	1532	37
1527	dlm	1533	37
1528	bev	1534	37
1529	dmm	1535	37
1530	dam	1536	37
1531	uhn	1537	37
1532	dac	1538	37
1533	dml	1539	37
1534	dms	1540	37
1535	dnj	1541	37
1536	dnr	1542	37
1537	dnu	1543	37
1538	daq	1544	37
1539	daa	1545	37
1540	thl	1546	37
1541	da	1547	37
1542	dan	1547	37
1543	dsl	1548	37
1544	aso	1549	37
1545	dnv	1550	37
1546	daz	1551	37
1547	dnd	1552	37
1548	djc	1553	37
1549	daj	1554	37
1550	dau	1555	37
1551	dry	1556	37
1552	dar	1557	37
1553	prs	1558	37
1554	xda	1559	37
1555	dln	1560	37
1556	drd	1561	37
1557	dro	1562	37
1558	dot	1563	37
1559	tcc	1564	37
1560	dgw	1565	37
1561	dta	1566	37
1562	daw	1567	37
1563	dww	1568	37
1564	ddw	1569	37
1565	dwk	1570	37
1566	dwr	1571	37
1567	dai	1572	37
1568	dax	1573	37
1569	dzd	1574	37
1570	dzg	1575	37
1571	dcc	1576	37
1572	ded	1577	37
1573	afn	1578	37
1574	gbh	1579	37
1575	mzw	1580	37
1576	deg	1581	37
1577	dge	1582	37
1578	ing	1583	37
1579	dhv	1584	37
1580	deh	1585	37
1581	dek	1586	37
1582	row	1587	37
1583	del	1588	37
1584	ntr	1589	37
1585	dem	1590	37
1586	dmx	1591	37
1587	dei	1592	37
1588	dmy	1593	37
1589	ddn	1594	37
1590	deq	1595	37
1591	dez	1596	37
1592	dnk	1597	37
1593	dbb	1598	37
1594	anv	1599	37
1595	dny	1600	37
1596	der	1601	37
1597	kbv	1602	37
1598	kna	1603	37
1599	des	1604	37
1600	dso	1605	37
1601	dwz	1606	37
1602	dee	1607	37
1603	def	1608	37
1604	dgh	1609	37
1605	dhs	1610	37
1606	dhl	1611	37
1607	dhg	1612	37
1608	dhn	1613	37
1609	dhw	1614	37
1610	nfa	1615	37
1611	tbh	1616	37
1612	dhr	1617	37
1613	xdk	1618	37
1614	xgm	1619	37
1615	mki	1620	37
1616	dhi	1621	37
1617	dho	1622	37
1618	adf	1623	37
1619	ddr	1624	37
1620	dhd	1625	37
1621	dhx	1626	37
1622	dhu	1627	37
1623	dwu	1628	37
1624	dwy	1629	37
1625	dia	1630	37
1626	mbd	1631	37
1627	dby	1632	37
1628	dio	1633	37
1629	bvx	1634	37
1630	duy	1635	37
1631	did	1636	37
1632	ddo	1637	37
1633	dif	1638	37
1634	mhu	1639	37
1635	dig	1640	37
1636	dur	1641	37
1637	cfa	1642	37
1638	dil	1643	37
1639	jma	1644	37
1640	dis	1645	37
1641	dii	1646	37
1642	dim	1647	37
1643	diq	1648	37
1644	diz	1649	37
1645	din	1650	37
1646	nzr	1651	37
1647	gdl	1652	37
1648	dwa	1653	37
1649	diu	1654	37
1650	dir	1655	37
1651	dsi	1656	37
1652	tbz	1657	37
1653	dtd	1658	37
1654	diy	1659	37
1655	xtd	1660	37
1656	dix	1661	37
1657	mdx	1662	37
1658	dyy	1663	37
1659	tjw	1664	37
1660	dja	1665	37
1661	djr	1666	37
1662	djd	1667	37
1663	djf	1668	37
1664	djw	1669	37
1665	djj	1670	37
1666	dyi	1671	37
1667	dji	1672	37
1668	djb	1673	37
1669	dze	1674	37
1670	kvo	1675	37
1671	dob	1676	37
1672	doe	1677	37
1673	dgg	1678	37
1674	dgx	1679	37
1675	dgs	1680	37
1676	dos	1681	37
1677	dgo	1682	37
1678	doi	1683	37
1679	dbg	1684	37
1680	dbi	1685	37
1681	uya	1686	37
1682	dsk	1687	37
1683	dlg	1688	37
1684	dre	1689	37
1685	doa	1690	37
1686	dmk	1691	37
1687	rmt	1692	37
1688	dov	1693	37
1689	doq	1694	37
1690	doy	1695	37
1691	dof	1696	37
1692	dev	1697	37
1693	dok	1698	37
1694	doh	1699	37
1695	doo	1700	37
1696	ddd	1701	37
1697	yik	1702	37
1698	sce	1703	37
1699	dds	1704	37
1700	dde	1705	37
1701	dor	1706	37
1702	kqc	1707	37
1703	doz	1708	37
1704	dol	1709	37
1705	dty	1710	37
1706	tds	1711	37
1707	dow	1712	37
1708	drt	1713	37
1709	duu	1714	37
1710	dua	1715	37
1711	dup	1716	37
1712	dva	1717	37
1713	dub	1718	37
1714	dmu	1719	37
1715	ndu	1720	37
1716	dbm	1721	37
1717	dme	1722	37
1718	kbz	1723	37
1719	nke	1724	37
1720	dbo	1725	37
1721	duz	1726	37
1722	dma	1727	37
1723	duf	1728	37
1724	dus	1729	37
1725	dmv	1730	37
1726	dui	1731	37
1727	duc	1732	37
1728	dng	1733	37
1729	raa	1734	37
1730	duh	1735	37
1731	dbv	1736	37
1732	duo	1737	37
1733	drq	1738	37
1734	mvp	1739	37
1735	dbn	1740	37
1736	krp	1741	37
1737	dug	1742	37
1738	pci	1743	37
1739	dsn	1744	37
1740	dun	1745	37
1741	duq	1746	37
1742	duw	1747	37
1743	dut	1748	37
1744	nld	1748	37
1745	nl	1748	37
1746	dse	1749	37
1747	dws	1750	37
1748	dux	1751	37
1749	dae	1752	37
1750	duv	1753	37
1751	dbp	1754	37
1752	gve	1755	37
1753	ldb	1756	37
1754	nnu	1757	37
1755	dyb	1758	37
1756	dya	1759	37
1757	dyn	1760	37
1758	dyr	1761	37
1759	dbl	1762	37
1760	dyd	1763	37
1761	dyu	1764	37
1762	jen	1765	37
1763	dzl	1766	37
1764	dzn	1767	37
1765	bpn	1768	37
1766	dz	1769	37
1767	dzo	1769	37
1768	dnn	1770	37
1769	kwa	1771	37
1770	eee	1772	37
1771	yzg	1773	37
1772	pbh	1774	37
1773	xtr	1775	37
1774	omb	1776	37
1775	zbe	1777	37
1776	dmr	1778	37
1777	fud	1779	37
1778	kjs	1780	37
1779	lma	1781	37
1780	mky	1782	37
1781	vme	1783	37
1782	nle	1784	37
1783	tre	1785	37
1784	yuy	1786	37
1785	aaq	1787	37
1786	acp	1788	37
1787	qve	1789	37
1788	aer	1790	37
1789	bgp	1791	37
1790	gui	1792	37
1791	ebk	1793	37
1792	bru	1794	37
1793	ike	1795	37
1794	cjm	1796	37
1795	azd	1797	37
1796	avl	1798	37
1797	frs	1799	37
1798	tge	1800	37
1799	cly	1801	37
1800	otm	1802	37
1801	zeh	1803	37
1802	nhe	1804	37
1803	hme	1805	37
1804	xrb	1806	37
1805	ktv	1807	37
1806	eky	1808	37
1807	kee	1809	37
1808	cek	1810	37
1809	kqo	1811	37
1810	yit	1812	37
1811	lwl	1813	37
1812	mgp	1814	37
1813	emk	1815	37
1814	mhr	1816	37
1815	djk	1817	37
1816	emg	1818	37
1817	emq	1819	37
1818	mng	1820	37
1819	emu	1821	37
1820	nea	1822	37
1821	nos	1823	37
1822	ojg	1824	37
1823	hae	1825	37
1824	kif	1826	37
1825	pez	1827	37
1826	peb	1828	37
1827	hmq	1829	37
1828	sfe	1830	37
1829	taj	1831	37
1830	bnj	1832	37
1831	muq	1833	37
1832	gbx	1834	37
1833	ydd	1835	37
1834	igb	1836	37
1835	xeb	1837	37
1836	ebr	1838	37
1837	ebg	1839	37
1838	ecs	1840	37
1839	cbj	1841	37
1840	ica	1842	37
1841	idd	1843	37
1842	ijj	1844	37
1843	awy	1845	37
1844	etr	1846	37
1845	xdm	1847	37
1846	dbf	1848	37
1847	efa	1849	37
1848	efe	1850	37
1849	efi	1851	37
1850	ofu	1852	37
1851	ega	1853	37
1852	ego	1854	37
1853	esl	1855	37
1854	egy	1856	37
1855	arz	1857	37
1856	ehu	1858	37
1857	eip	1859	37
1858	eit	1860	37
1859	etu	1861	37
1860	eja	1862	37
1861	cey	1863	37
1862	eka	1864	37
1863	ekg	1865	37
1864	eki	1866	37
1865	eke	1867	37
1866	ekp	1868	37
1867	zpp	1869	37
1868	elh	1870	37
1869	elo	1871	37
1870	crn	1872	37
1871	elx	1873	37
1872	elm	1874	37
1873	ele	1875	37
1874	ovd	1876	37
1875	ekm	1877	37
1876	elk	1878	37
1877	zte	1879	37
1878	afo	1880	37
1879	mrf	1881	37
1880	elu	1882	37
1881	xly	1883	37
1882	mmw	1884	37
1883	ema	1885	37
1884	emn	1886	37
1885	emb	1887	37
1886	bdc	1888	37
1887	cto	1889	37
1888	cmi	1890	37
1889	tdc	1891	37
1890	ebu	1892	37
1891	eme	1893	37
1892	egl	1894	37
1893	emw	1895	37
1894	enr	1896	37
1895	enc	1897	37
1896	unk	1898	37
1897	end	1899	37
1898	enq	1900	37
1899	ngr	1901	37
1900	enn	1902	37
1901	eno	1903	37
1902	en	1904	37
1903	eng	1904	37
1904	enl	1905	37
1905	ptt	1906	37
1906	enu	1907	37
1907	enw	1908	37
1908	env	1909	37
1909	enx	1910	37
1910	gey	1911	37
1911	sja	1912	37
1912	xep	1913	37
1913	epi	1914	37
1914	emy	1915	37
1915	era	1916	37
1916	kjy	1917	37
1917	twp	1918	37
1918	ert	1919	37
1919	erw	1920	37
1920	err	1921	37
1921	emx	1922	37
1922	ers	1923	37
1923	erh	1924	37
1924	myv	1925	37
1925	ish	1926	37
1926	mcq	1927	37
1927	ese	1928	37
1928	esh	1929	37
1929	ags	1930	37
1930	esy	1931	37
1931	epo	1932	37
1932	eo	1932	37
1933	esq	1933	37
1934	ots	1934	37
1935	est	1935	37
1936	et	1935	37
1937	eso	1936	37
1938	esm	1937	37
1939	etc	1938	37
1940	etb	1939	37
1941	etx	1940	37
1942	ecr	1941	37
1943	ecy	1942	37
1944	eth	1943	37
1945	ich	1944	37
1946	eto	1945	37
1947	etn	1946	37
1948	ett	1947	37
1949	utr	1948	37
1950	eud	1949	37
1951	bzz	1950	37
1952	eve	1951	37
1953	evn	1952	37
1954	gev	1953	37
1955	nou	1954	37
1956	ee	1955	37
1957	ewe	1955	37
1958	ewo	1956	37
1959	ext	1957	37
1960	eya	1958	37
1961	eza	1959	37
1962	fab	1960	37
1963	faf	1961	37
1964	fif	1962	37
1965	azt	1963	37
1966	faj	1964	37
1967	fai	1965	37
1968	fax	1966	37
1969	cfm	1967	37
1970	fli	1968	37
1971	xfa	1969	37
1972	fam	1970	37
1973	fng	1971	37
1974	bjp	1972	37
1975	fnb	1973	37
1976	fak	1974	37
1977	fan	1975	37
1978	fni	1976	37
1979	fat	1977	37
1980	fmu	1978	37
1981	gur	1979	37
1982	fo	1980	37
1983	fao	1980	37
1984	fqs	1981	37
1985	faa	1982	37
1986	far	1983	37
1987	ddg	1984	37
1988	fau	1985	37
1989	fmp	1986	37
1990	agl	1987	37
1991	fpe	1988	37
1992	fer	1989	37
1993	hif	1990	37
1994	fij	1991	37
1995	fj	1991	37
1996	fil	1992	37
1997	tlp	1993	37
1998	fss	1994	37
1999	fin	1995	37
2000	fi	1995	37
2001	fse	1996	37
2002	fag	1997	37
2003	fip	1998	37
2004	fir	1999	37
2005	fiw	2000	37
2006	fly	2001	37
2007	fln	2002	37
2008	flh	2003	37
2009	foi	2004	37
2010	ffi	2005	37
2011	ppo	2006	37
2012	fom	2007	37
2013	fon	2008	37
2014	fgr	2009	37
2015	fod	2010	37
2016	frq	2011	37
2017	frd	2012	37
2018	for	2013	37
2019	enf	2014	37
2020	frt	2015	37
2021	zos	2016	37
2022	frk	2017	37
2023	fre	2018	37
2024	fra	2018	37
2025	fr	2018	37
2026	fsl	2019	37
2027	fur	2020	37
2028	Fulah	2021	37
2029	ful	2021	37
2030	Fula	2021	37
2031	ff	2021	37
2032	flr	2022	37
2033	fun	2023	37
2034	fum	2024	37
2035	ula	2025	37
2036	fvr	2026	37
2037	fuu	2027	37
2038	fut	2028	37
2039	fuy	2029	37
2040	fwe	2030	37
2041	fwa	2031	37
2042	pym	2032	37
2043	fie	2033	37
2044	gaa	2034	37
2045	gqa	2035	37
2046	gdg	2036	37
2047	ttb	2037	37
2048	tbi	2038	37
2049	gbw	2039	37
2050	gab	2040	37
2051	xgf	2041	37
2052	gdk	2042	37
2053	gad	2043	37
2054	gbk	2044	37
2055	ged	2045	37
2056	gda	2046	37
2057	gdh	2047	37
2058	gaj	2048	37
2059	gla	2049	37
2060	Scottish Gaelic	2049	37
2061	gd	2049	37
2062	Gaelic	2049	37
2063	gft	2050	37
2064	gbu	2051	37
2065	gag	2052	37
2066	btg	2053	37
2067	ggu	2054	37
2068	bfu	2055	37
2069	gbf	2056	37
2070	gic	2057	37
2071	gcn	2058	37
2072	gap	2059	37
2073	glo	2060	37
2074	xga	2061	37
2075	gbi	2062	37
2076	gar	2063	37
2077	car	2064	37
2078	gce	2065	37
2079	gl	2066	37
2080	glg	2066	37
2081	xgl	2067	37
2082	sdn	2068	37
2083	adl	2069	37
2084	gal	2070	37
2085	kgj	2071	37
2086	gma	2072	37
2087	wof	2073	37
2088	kld	2074	37
2089	gbl	2075	37
2090	gak	2076	37
2091	gmv	2077	37
2092	bte	2078	37
2093	gan	2079	37
2094	gnq	2080	37
2095	gne	2081	37
2096	lg	2082	37
2097	lug	2082	37
2098	gzn	2083	37
2099	gcd	2084	37
2100	ggl	2085	37
2101	gnb	2086	37
2102	gnl	2087	37
2103	gao	2088	37
2104	gza	2089	37
2105	gnz	2090	37
2106	gga	2091	37
2107	pwg	2092	37
2108	gbm	2093	37
2109	cab	2094	37
2110	ilg	2095	37
2111	xgi	2096	37
2112	gll	2097	37
2113	grt	2098	37
2114	gex	2099	37
2115	wrk	2100	37
2116	gyb	2101	37
2117	xgr	2102	37
2118	gaq	2103	37
2119	dmc	2104	37
2120	gou	2105	37
2121	gvo	2106	37
2122	gwt	2107	37
2123	gwc	2108	37
2124	gwd	2109	37
2125	gyl	2110	37
2126	gay	2111	37
2127	gzi	2112	37
2128	gie	2113	37
2129	gbr	2114	37
2130	gbv	2115	37
2131	gbg	2116	37
2132	gby	2117	37
2133	gba	2118	37
2134	krs	2119	37
2135	gbp	2120	37
2136	gbq	2121	37
2137	gmm	2122	37
2138	gyg	2123	37
2139	gbs	2124	37
2140	ggb	2125	37
2141	xgb	2126	37
2142	grh	2127	37
2143	gec	2128	37
2144	hmj	2129	37
2145	kvq	2130	37
2146	gei	2131	37
2147	gdd	2132	37
2148	drs	2133	37
2149	gez	2134	37
2150	gyz	2135	37
2151	ghk	2136	37
2152	nlg	2137	37
2153	geq	2138	37
2154	gej	2139	37
2155	gaf	2140	37
2156	geg	2141	37
2157	ka	2142	37
2158	kat	2142	37
2159	geo	2142	37
2160	ygp	2143	37
2161	gew	2144	37
2162	gef	2145	37
2163	deu	2146	37
2164	de	2146	37
2165	ger	2146	37
2166	gsg	2147	37
2167	gea	2148	37
2168	ges	2149	37
2169	gha	2150	37
2170	gpe	2151	37
2171	gse	2152	37
2172	gds	2153	37
2173	ghn	2154	37
2174	gri	2155	37
2175	bmk	2156	37
2176	aln	2157	37
2177	ghr	2158	37
2178	gdo	2159	37
2179	gho	2160	37
2180	bbj	2161	37
2181	aaa	2162	37
2182	ghl	2163	37
2183	bgi	2164	37
2184	gib	2165	37
2185	gid	2166	37
2186	kks	2167	37
2187	acd	2168	37
2188	glk	2169	37
2189	gil	2170	37
2190	gix	2171	37
2191	niv	2172	37
2192	gim	2173	37
2193	gip	2174	37
2194	kmp	2175	37
2195	gmn	2176	37
2196	gnm	2177	37
2197	ayg	2178	37
2198	bbr	2179	37
2199	gii	2180	37
2200	nyf	2181	37
2201	gih	2182	37
2202	toh	2183	37
2203	ggt	2184	37
2204	git	2185	37
2205	giy	2186	37
2206	tof	2187	37
2207	glr	2188	37
2208	glw	2189	37
2209	oub	2190	37
2210	gnu	2191	37
2211	gom	2192	37
2212	gig	2193	37
2213	goi	2194	37
2214	gox	2195	37
2215	god	2196	37
2216	gdx	2197	37
2217	ank	2198	37
2218	gof	2199	37
2219	gog	2200	37
2220	ggw	2201	37
2221	gkn	2202	37
2222	gol	2203	37
2223	gvf	2204	37
2224	lja	2205	37
2225	gon	2206	37
2226	goo	2207	37
2227	goe	2208	37
2228	gjn	2209	37
2229	gov	2210	37
2230	gni	2211	37
2231	gqr	2212	37
2232	goc	2213	37
2233	goq	2214	37
2234	xgg	2215	37
2235	gor	2216	37
2236	grq	2217	37
2237	gow	2218	37
2238	got	2219	37
2239	goy	2220	37
2240	gux	2221	37
2241	goj	2222	37
2242	gok	2223	37
2243	gwf	2224	37
2244	goz	2225	37
2245	nli	2226	37
2246	kbk	2227	37
2247	grb	2228	37
2248	ell	2229	37
2249	el	2229	37
2250	Greek	2229	37
2251	gre	2229	37
2252	Modern Greek (1453-)	2229	37
2253	gss	2230	37
2254	giq	2231	37
2255	Kalaallisut	2232	37
2256	kal	2232	37
2257	kl	2232	37
2258	Greenlandic	2232	37
2259	gcl	2233	37
2260	grs	2234	37
2261	gro	2235	37
2262	gos	2236	37
2263	ats	2237	37
2264	gwx	2238	37
2265	gcf	2239	37
2266	guh	2240	37
2267	gub	2241	37
2268	gvj	2242	37
2269	gum	2243	37
2270	gqn	2244	37
2271	gva	2245	37
2272	gvc	2246	37
2273	gnc	2247	37
2274	jiq	2248	37
2275	Guarani	2249	37
2276	grn	2249	37
2277	gn	2249	37
2278	gyr	2250	37
2279	gae	2251	37
2280	gsm	2252	37
2281	gta	2253	37
2282	guo	2254	37
2283	xgd	2255	37
2284	nji	2256	37
2285	gde	2257	37
2286	gdu	2258	37
2287	gdf	2259	37
2288	amu	2260	37
2289	ngu	2261	37
2290	zpg	2262	37
2291	ggd	2263	37
2292	gdc	2264	37
2293	wrw	2265	37
2294	kkp	2266	37
2295	ghs	2267	37
2296	gcr	2268	37
2297	zgb	2269	37
2298	bet	2270	37
2299	zgn	2271	37
2300	gkp	2272	37
2301	lgs	2273	37
2302	gus	2274	37
2303	gqi	2275	37
2304	guj	2276	37
2305	gu	2276	37
2306	gju	2277	37
2307	kcm	2278	37
2308	glu	2279	37
2309	glj	2280	37
2310	gmb	2281	37
2311	gvl	2282	37
2312	gly	2283	37
2313	afb	2284	37
2314	gmu	2285	37
2315	gnn	2286	37
2316	gvs	2287	37
2317	guk	2288	37
2318	guw	2289	37
2319	gdi	2290	37
2320	gjm	2291	37
2321	xrd	2292	37
2322	gyf	2293	37
2323	rub	2294	37
2324	gnt	2295	37
2325	gup	2296	37
2326	gyy	2297	37
2327	gpa	2298	37
2328	guf	2299	37
2329	grz	2300	37
2330	hac	2301	37
2331	gdj	2302	37
2332	gnr	2303	37
2333	ggg	2304	37
2334	grx	2305	37
2335	gue	2306	37
2336	gjr	2307	37
2337	gvm	2308	37
2338	goa	2309	37
2339	gge	2310	37
2340	gvr	2311	37
2341	grd	2312	37
2342	guz	2313	37
2343	gsl	2314	37
2344	kky	2315	37
2345	xgw	2316	37
2346	gwu	2317	37
2347	gka	2318	37
2348	gyn	2319	37
2349	gvy	2320	37
2350	ngs	2321	37
2351	gwb	2322	37
2352	dah	2323	37
2353	jgk	2324	37
2354	bga	2325	37
2355	gwn	2326	37
2356	grw	2327	37
2357	gwe	2328	37
2358	gwr	2329	37
2359	gwi	2330	37
2360	gyo	2331	37
2361	gyi	2332	37
2362	gye	2333	37
2363	ztu	2334	37
2364	pgd	2335	37
2365	haq	2336	37
2366	hbu	2337	37
2367	hdy	2338	37
2368	hoj	2339	37
2369	xhd	2340	37
2370	ayh	2341	37
2371	hts	2342	37
2372	aek	2343	37
2373	hah	2344	37
2374	hai	2345	37
2375	hgw	2346	37
2376	haf	2347	37
2377	has	2348	37
2378	ht	2349	37
2379	Haitian	2349	37
2380	Haitian Creole	2349	37
2381	hat	2349	37
2382	hvc	2350	37
2383	hgm	2351	37
2384	hji	2352	37
2385	haj	2353	37
2386	cnh	2354	37
2387	hak	2355	37
2388	hao	2356	37
2389	hal	2357	37
2390	hld	2358	37
2391	hlb	2359	37
2392	khk	2360	37
2393	hla	2361	37
2394	hur	2362	37
2395	hmu	2363	37
2396	hba	2364	37
2397	amf	2365	37
2398	hmt	2366	37
2399	haa	2367	37
2400	hag	2368	37
2401	wos	2369	37
2402	han	2370	37
2403	hni	2371	37
2404	lml	2372	37
2405	hab	2373	37
2406	hnn	2374	37
2407	xha	2375	37
2408	har	2376	37
2409	kjo	2377	37
2410	hro	2378	37
2411	hss	2379	37
2412	tmd	2380	37
2413	hrk	2381	37
2414	bgc	2382	37
2415	hrz	2383	37
2416	ybj	2384	37
2417	mey	2385	37
2418	had	2386	37
2419	xht	2387	37
2420	hau	2388	37
2421	ha	2388	37
2422	hsl	2389	37
2423	yuf	2390	37
2424	hvk	2391	37
2425	hav	2392	37
2426	hwc	2393	37
2427	hps	2394	37
2428	haw	2395	37
2429	hay	2396	37
2430	haz	2397	37
2431	xed	2398	37
2432	Hebrew	2399	37
2433	he	2399	37
2434	heb	2399	37
2435	heh	2400	37
2436	hbn	2401	37
2437	hei	2402	37
2438	heg	2403	37
2439	nix	2404	37
2440	hem	2405	37
2441	hed	2406	37
2442	hz	2407	37
2443	her	2407	37
2444	llf	2408	37
2445	xhr	2409	37
2446	ham	2410	37
2447	auk	2411	37
2448	ghc	2412	37
2449	hib	2413	37
2450	hid	2414	37
2451	hlu	2415	37
2452	mba	2416	37
2453	kjk	2417	37
2454	chd	2418	37
2455	poi	2419	37
2456	azz	2420	37
2457	tos	2421	37
2458	acw	2422	37
2459	hij	2423	37
2460	hil	2424	37
2461	hir	2425	37
2462	hin	2426	37
2463	hi	2426	37
2464	hii	2427	37
2465	gin	2428	37
2466	ho	2429	37
2467	hmo	2429	37
2468	hit	2430	37
2469	htu	2431	37
2470	hiw	2432	37
2471	hix	2433	37
2472	lic	2434	37
2473	yhl	2435	37
2474	hle	2436	37
2475	hmr	2437	37
2476	hmn	2438	37
2477	mww	2439	37
2478	hmf	2440	37
2479	hmv	2441	37
2480	hnj	2442	37
2481	hmz	2443	37
2482	mrk	2444	37
2483	hoc	2445	37
2484	hos	2446	37
2485	win	2447	37
2486	hoa	2448	37
2487	hoh	2449	37
2488	hhi	2450	37
2489	hoi	2451	37
2490	hoy	2452	37
2491	hod	2453	37
2492	hoo	2454	37
2493	hol	2455	37
2494	hom	2456	37
2495	hds	2457	37
2496	hks	2458	37
2497	how	2459	37
2498	hop	2460	37
2499	hrm	2461	37
2500	hor	2462	37
2501	hoe	2463	37
2502	ero	2464	37
2503	hot	2465	37
2504	hti	2466	37
2505	hov	2467	37
2506	hhy	2468	37
2507	hoz	2469	37
2508	hpo	2470	37
2509	hra	2471	37
2510	hre	2472	37
2511	hru	2473	37
2512	huo	2474	37
2513	hug	2475	37
2514	qub	2476	37
2515	qvh	2477	37
2516	hub	2478	37
2517	var	2479	37
2518	hus	2480	37
2519	hud	2481	37
2520	mau	2482	37
2521	nhq	2483	37
2522	qwh	2484	37
2523	qvw	2485	37
2524	hbb	2486	37
2525	tee	2487	37
2526	hch	2488	37
2527	huh	2489	37
2528	mxs	2490	37
2529	czh	2491	37
2530	huw	2492	37
2531	hul	2493	37
2532	huy	2494	37
2533	hui	2495	37
2534	huk	2496	37
2535	hmb	2497	37
2536	huf	2498	37
2537	hut	2499	37
2538	hke	2500	37
2539	hnu	2501	37
2540	hum	2502	37
2541	hun	2503	37
2542	hu	2503	37
2543	hsh	2504	37
2544	hng	2505	37
2545	hkk	2506	37
2546	xhc	2507	37
2547	hrx	2508	37
2548	huz	2509	37
2549	hup	2510	37
2550	jup	2511	37
2551	hap	2512	37
2552	xhu	2513	37
2553	geh	2514	37
2554	hwo	2515	37
2555	hya	2516	37
2556	jab	2517	37
2557	scp	2518	37
2558	hrt	2519	37
2559	juh	2520	37
2560	iwk	2521	37
2561	iai	2522	37
2562	yml	2523	37
2563	ian	2524	37
2564	tmu	2525	37
2565	tek	2526	37
2566	ibl	2527	37
2567	iba	2528	37
2568	ibg	2529	37
2569	iby	2530	37
2570	ivb	2531	37
2571	xib	2532	37
2572	ibb	2533	37
2573	ibn	2534	37
2574	ibu	2535	37
2575	ibr	2536	37
2576	isl	2537	37
2577	is	2537	37
2578	ice	2537	37
2579	icl	2538	37
2580	bec	2539	37
2581	dbj	2540	37
2582	ida	2541	37
2583	idt	2542	37
2584	ide	2543	37
2585	ids	2544	37
2586	idi	2545	37
2587	ido	2546	37
2588	io	2546	37
2589	idu	2547	37
2590	idc	2548	37
2591	clk	2549	37
2592	viv	2550	37
2593	iff	2551	37
2594	ife	2552	37
2595	igl	2553	37
2596	igg	2554	37
2597	ibo	2555	37
2598	ig	2555	37
2599	ige	2556	37
2600	ign	2557	37
2601	ahl	2558	37
2602	nar	2559	37
2603	igw	2560	37
2604	ihp	2561	37
2605	ihb	2562	37
2606	ihi	2563	37
2607	ikx	2564	37
2608	ikk	2565	37
2609	ikr	2566	37
2610	ikh	2567	37
2611	ikz	2568	37
2612	iki	2569	37
2613	meb	2570	37
2614	ntk	2571	37
2615	txi	2572	37
2616	ikp	2573	37
2617	kpo	2574	37
2618	ikv	2575	37
2619	ikl	2576	37
2620	ikw	2577	37
2621	iqw	2578	37
2622	ilb	2579	37
2623	ila	2580	37
2624	ili	2581	37
2625	ilu	2582	37
2626	mbi	2583	37
2627	xil	2584	37
2628	ilo	2585	37
2629	ilk	2586	37
2630	ilv	2587	37
2631	mlk	2588	37
2632	qvi	2589	37
2633	imo	2590	37
2634	imn	2591	37
2635	imt	2592	37
2636	imr	2593	37
2637	abx	2594	37
2638	mzu	2595	37
2639	smn	2596	37
2640	ins	2597	37
2641	idb	2598	37
2642	ind	2599	37
2643	id	2599	37
2644	bdl	2600	37
2645	inl	2601	37
2646	idr	2602	37
2647	mvy	2603	37
2648	xiv	2604	37
2649	oin	2605	37
2650	inz	2606	37
2651	inb	2607	37
2652	izh	2608	37
2653	inh	2609	37
2654	iti	2610	37
2655	moe	2611	37
2656	ino	2612	37
2657	loc	2613	37
2658	ior	2614	37
2659	nkf	2615	37
2660	igs	2616	37
2661	ia	2617	37
2662	Interlingua (International Auxiliary Language Association)	2617	37
2663	Interlingua	2617	37
2664	ina	2617	37
2665	ile	2618	37
2666	ie	2618	37
2667	ils	2619	37
2668	isv	2620	37
2669	int	2621	37
2670	ikt	2622	37
2671	iks	2623	37
2672	iku	2624	37
2673	iu	2624	37
2674	ik	2625	37
2675	ipk	2625	37
2676	iow	2626	37
2677	azm	2627	37
2678	ipo	2628	37
2679	ipi	2629	37
2680	ass	2630	37
2681	iqu	2631	37
2682	irr	2632	37
2683	pes	2633	37
2684	psc	2634	37
2685	ilm	2635	37
2686	ilp	2636	37
2687	irk	2637	37
2688	irh	2638	37
2689	iry	2639	37
2690	ire	2640	37
2691	ga	2641	37
2692	gle	2641	37
2693	isg	2642	37
2694	iru	2643	37
2695	irn	2644	37
2696	isa	2645	37
2697	isn	2646	37
2698	agk	2647	37
2699	isc	2648	37
2700	igo	2649	37
2701	its	2650	37
2702	isk	2651	37
2703	inn	2652	37
2704	srl	2653	37
2705	crb	2654	37
2706	icr	2655	37
2707	isd	2656	37
2708	iso	2657	37
2709	isr	2658	37
2710	mir	2659	37
2711	zai	2660	37
2712	nhk	2661	37
2713	nhx	2662	37
2714	nhp	2663	37
2715	ist	2664	37
2716	ruo	2665	37
2717	szv	2666	37
2718	isu	2667	37
2719	ita	2668	37
2720	it	2668	37
2721	ise	2669	37
2722	itv	2670	37
2723	itl	2671	37
2724	ite	2672	37
2725	itr	2673	37
2726	itx	2674	37
2727	itw	2675	37
2728	ito	2676	37
2729	itm	2677	37
2730	mce	2678	37
2731	itz	2679	37
2732	ium	2680	37
2733	ivv	2681	37
2734	atg	2682	37
2735	ibd	2683	37
2736	kbm	2684	37
2737	iwm	2685	37
2738	iwo	2686	37
2739	ixc	2687	37
2740	mzi	2688	37
2741	ixl	2689	37
2742	vmj	2690	37
2743	otz	2691	37
2744	iya	2692	37
2745	uiv	2693	37
2746	nca	2694	37
2747	crq	2695	37
2748	crt	2696	37
2749	izr	2697	37
2750	izz	2698	37
2751	ijc	2699	37
2752	cbo	2700	37
2753	inp	2701	37
2754	jbt	2702	37
2755	jda	2703	37
2756	jdg	2704	37
2757	jah	2705	37
2758	jad	2706	37
2759	awv	2707	37
2760	xjt	2708	37
2761	jat	2709	37
2762	jrt	2710	37
2763	jak	2711	37
2764	maj	2712	37
2765	bxl	2713	37
2766	jcs	2714	37
2767	jam	2715	37
2768	jls	2716	37
2769	jaa	2717	37
2770	jax	2718	37
2771	mxt	2719	37
2772	djm	2720	37
2773	jan	2721	37
2774	jnd	2722	37
2775	djo	2723	37
2776	jna	2724	37
2777	jni	2725	37
2778	ja	2726	37
2779	jpn	2726	37
2780	jsl	2727	37
2781	jru	2728	37
2782	jqr	2729	37
2783	jaf	2730	37
2784	jra	2731	37
2785	anq	2732	37
2786	ddj	2733	37
2787	qxw	2734	37
2788	jns	2735	37
2789	jav	2736	37
2790	jv	2736	37
2791	jvd	2737	37
2792	jaz	2738	37
2793	djn	2739	37
2794	jyy	2740	37
2795	jeb	2741	37
2796	jeh	2742	37
2797	jhi	2743	37
2798	pzn	2744	37
2799	jje	2745	37
2800	tow	2746	37
2801	bze	2747	37
2802	xuj	2748	37
2803	jer	2749	37
2804	jek	2750	37
2805	jee	2751	37
2806	tmr	2752	37
2807	jpa	2753	37
2808	jhs	2754	37
2809	jio	2755	37
2810	jya	2756	37
2811	juo	2757	37
2812	jib	2758	37
2813	apj	2759	37
2814	jii	2760	37
2815	jie	2761	37
2816	jil	2762	37
2817	jim	2763	37
2818	jmi	2764	37
2819	jia	2765	37
2820	jig	2766	37
2821	cjy	2767	37
2822	pnu	2768	37
2823	jul	2769	37
2824	jrr	2770	37
2825	jit	2771	37
2826	kaj	2772	37
2827	job	2773	37
2828	jbr	2774	37
2829	jog	2775	37
2830	dyo	2776	37
2831	csk	2777	37
2832	jeu	2778	37
2833	jos	2779	37
2834	jor	2780	37
2835	jow	2781	37
2836	juu	2782	37
2837	jun	2783	37
2838	jrb	2784	37
2839	jbe	2785	37
2840	jge	2786	37
2841	yhd	2787	37
2842	itk	2788	37
2843	aju	2789	37
2844	jpr	2790	37
2845	jdt	2791	37
2846	yud	2792	37
2847	jye	2793	37
2848	jbu	2794	37
2849	jum	2795	37
2850	jus	2796	37
2851	jml	2797	37
2852	inj	2798	37
2853	mxq	2799	37
2854	bex	2800	37
2855	juy	2801	37
2856	juc	2802	37
2857	jur	2803	37
2858	jut	2804	37
2859	mwb	2805	37
2860	vmc	2806	37
2861	ktz	2807	37
2862	jwi	2808	37
2863	nrf	2809	37
2864	jua	2810	37
2865	quc	2811	37
2866	xku	2812	37
2867	ldl	2813	37
2868	ckn	2814	37
2869	gna	2815	37
2870	ksp	2816	37
2871	kvf	2817	37
2872	kbd	2818	37
2873	xkp	2819	37
2874	kbp	2820	37
2875	klz	2821	37
2876	onk	2822	37
2877	lkb	2823	37
2878	uka	2824	37
2879	kbu	2825	37
2880	kea	2826	37
2881	cwa	2827	37
2882	kcw	2828	37
2883	kab	2829	37
2884	kcx	2830	37
2885	xac	2831	37
2886	kfr	2832	37
2887	gjk	2833	37
2888	kac	2834	37
2889	xkk	2835	37
2890	koe	2836	37
2891	kzd	2837	37
2892	kej	2838	37
2893	kdu	2839	37
2894	dtp	2840	37
2895	kbc	2841	37
2896	zkd	2842	37
2897	dkg	2843	37
2898	ktp	2844	37
2899	kkq	2845	37
2900	jka	2846	37
2901	kbr	2847	37
2902	kpu	2848	37
2903	kll	2849	37
2904	syw	2850	37
2905	cgc	2851	37
2906	kdm	2852	37
2907	xkg	2853	37
2908	kki	2854	37
2909	hka	2855	37
2910	agw	2856	37
2911	kct	2857	37
2912	kzb	2858	37
2913	kzp	2859	37
2914	kbw	2860	37
2915	kep	2861	37
2916	kjv	2862	37
2917	kzq	2863	37
2918	zka	2864	37
2919	xai	2865	37
2920	kgp	2866	37
2921	ckr	2867	37
2922	kxa	2868	37
2923	krd	2869	37
2924	kzm	2870	37
2925	xdq	2871	37
2926	kce	2872	37
2927	kgk	2873	37
2928	tcq	2874	37
2929	ckq	2875	37
2930	xkj	2876	37
2931	kag	2877	37
2932	kqf	2878	37
2933	kke	2879	37
2934	kka	2880	37
2935	tbd	2881	37
2936	kkj	2882	37
2937	keo	2883	37
2938	mwp	2884	37
2939	lkm	2885	37
2940	kve	2886	37
2941	ijn	2887	37
2942	kzz	2888	37
2943	kqe	2889	37
2944	kkf	2890	37
2945	kmh	2891	37
2946	knz	2892	37
2947	wkl	2893	37
2948	kck	2894	37
2949	kak	2895	37
2950	kly	2896	37
2951	kyl	2897	37
2952	kba	2898	37
2953	kls	2899	37
2954	kln	2900	37
2955	fla	2901	37
2956	xka	2902	37
2957	ktg	2903	37
2958	xal	2904	37
2959	rmf	2905	37
2960	ywa	2906	37
2961	bco	2907	37
2962	kli	2908	37
2963	kdx	2909	37
2964	vkm	2910	37
2965	woi	2911	37
2966	kbq	2912	37
2967	kci	2913	37
2968	keq	2914	37
2969	jmr	2915	37
2970	kzx	2916	37
2971	kgx	2917	37
2972	xas	2918	37
2973	klp	2919	37
2974	kms	2920	37
2975	kyk	2921	37
2976	kay	2922	37
2977	kam	2923	37
2978	ktb	2924	37
2979	kyy	2925	37
2980	xbr	2926	37
2981	irx	2927	37
2982	xbw	2928	37
2983	kmi	2929	37
2984	kcu	2930	37
2985	kcq	2931	37
2986	kgq	2932	37
2987	xmu	2933	37
2988	xla	2934	37
2989	xvi	2935	37
2990	hig	2936	37
2991	xnb	2937	37
2992	knm	2938	37
2993	zkn	2939	37
2994	xns	2940	37
2995	soq	2941	37
2996	bjj	2942	37
2997	kqw	2943	37
2998	gam	2944	37
2999	kbs	2945	37
3000	kbl	2946	37
3001	kyp	2947	37
3002	kcp	2948	37
3003	kkv	2949	37
3004	igm	2950	37
3005	kxs	2951	37
3006	kty	2952	37
3007	kzy	2953	37
3008	xnr	2954	37
3009	ktk	2955	37
3010	kev	2956	37
3011	kdp	2957	37
3012	kzo	2958	37
3013	knr	2959	37
3014	wat	2960	37
3015	kmu	2961	37
3016	kft	2962	37
3017	kbe	2963	37
3018	kne	2964	37
3019	kan	2965	37
3020	kn	2965	37
3021	kfi	2966	37
3022	kxn	2967	37
3023	kxo	2968	37
3024	ksk	2969	37
3025	xkt	2970	37
3026	khx	2971	37
3027	kni	2972	37
3028	kr	2973	37
3029	kau	2973	37
3030	kny	2974	37
3031	kax	2975	37
3032	kqn	2976	37
3033	ykm	2977	37
3034	tbx	2978	37
3035	xpn	2979	37
3036	kpg	2980	37
3037	khp	2981	37
3038	dju	2982	37
3039	kbi	2983	37
3040	klo	2984	37
3041	cak	2985	37
3042	kah	2986	37
3043	zra	2987	37
3044	leu	2988	37
3045	reg	2989	37
3046	kaa	2990	37
3047	krc	2991	37
3048	kim	2992	37
3049	kdr	2993	37
3050	gbd	2994	37
3051	kpj	2995	37
3052	xqa	2996	37
3053	xar	2997	37
3054	kdj	2998	37
3055	kzr	2999	37
3056	kth	3000	37
3057	zkk	3001	37
3058	kyj	3002	37
3059	kgv	3003	37
3060	kpt	3004	37
3061	xrw	3005	37
3062	mjw	3006	37
3063	kbn	3007	37
3064	kmf	3008	37
3065	kai	3009	37
3066	krl	3010	37
3067	eaa	3011	37
3068	kyd	3012	37
3069	kbj	3013	37
3070	kgn	3014	37
3071	kuq	3015	37
3072	kmv	3016	37
3073	kzw	3017	37
3074	ktn	3018	37
3075	kil	3019	37
3076	vka	3020	37
3077	yuj	3021	37
3078	krb	3022	37
3079	kko	3023	37
3080	bbv	3024	37
3081	arr	3025	37
3082	kxh	3026	37
3083	kyh	3027	37
3084	krx	3028	37
3085	kgw	3029	37
3086	xkx	3030	37
3087	rxw	3031	37
3088	ccj	3032	37
3089	xsm	3033	37
3090	kju	3034	37
3091	kas	3035	37
3092	ks	3035	37
3093	csb	3036	37
3094	ksn	3037	37
3095	kkz	3038	37
3096	zsk	3039	37
3097	khs	3040	37
3098	ktq	3041	37
3099	xat	3042	37
3100	tmb	3043	37
3101	xtc	3044	37
3102	tkt	3045	37
3103	ykt	3046	37
3104	bsh	3047	37
3105	kfu	3048	37
3106	kcr	3049	37
3107	ktw	3050	37
3108	kaf	3051	37
3109	kta	3052	37
3110	kav	3053	37
3111	pss	3054	37
3112	vkk	3055	37
3113	bpp	3056	37
3114	zku	3057	37
3115	xau	3058	37
3116	ckv	3059	37
3117	krv	3060	37
3118	kcb	3061	37
3119	xaw	3062	37
3120	kgb	3063	37
3121	kaw	3064	37
3122	ktx	3065	37
3123	kbb	3066	37
3124	kyz	3067	37
3125	kyt	3068	37
3126	pdu	3069	37
3127	xay	3070	37
3128	xkn	3071	37
3129	txu	3072	37
3130	gyd	3073	37
3131	kvl	3074	37
3132	kzl	3075	37
3133	kxy	3076	37
3134	kyv	3077	37
3135	gbb	3078	37
3136	kzu	3079	37
3137	kk	3080	37
3138	kaz	3080	37
3139	kzk	3081	37
3140	xxk	3082	37
3141	keh	3083	37
3142	khz	3084	37
3143	meo	3085	37
3144	ksx	3086	37
3145	kdy	3087	37
3146	wkr	3088	37
3147	khh	3089	37
3148	kei	3090	37
3149	kec	3091	37
3150	bmh	3092	37
3151	eyo	3093	37
3152	kek	3094	37
3153	kel	3095	37
3154	kcl	3096	37
3155	kzi	3097	37
3156	khy	3098	37
3157	sbc	3099	37
3158	ify	3100	37
3159	kbo	3101	37
3160	xel	3102	37
3161	kyo	3103	37
3162	kem	3104	37
3163	xem	3105	37
3164	bzp	3106	37
3165	xkw	3107	37
3166	dmo	3108	37
3167	sjk	3109	37
3168	kfj	3110	37
3169	kmt	3111	37
3170	xbn	3112	37
3171	gat	3113	37
3172	knx	3114	37
3173	klf	3115	37
3174	kvm	3116	37
3175	kyq	3117	37
3176	kxi	3118	37
3177	knl	3119	37
3178	kns	3120	37
3179	ndb	3121	37
3180	xki	3122	37
3181	ken	3123	37
3182	lke	3124	37
3183	xnz	3125	37
3184	xeu	3126	37
3185	kpn	3127	37
3186	kuk	3128	37
3187	ker	3129	37
3188	hhr	3130	37
3189	xke	3131	37
3190	krk	3132	37
3191	ked	3133	37
3192	kxz	3134	37
3193	kvr	3135	37
3194	xes	3136	37
3195	ket	3137	37
3196	kae	3138	37
3197	kcv	3139	37
3198	xte	3140	37
3199	ktt	3141	37
3200	kyg	3142	37
3201	xkv	3143	37
3202	hkh	3144	37
3203	kjh	3145	37
3204	klj	3146	37
3205	klr	3147	37
3206	kbg	3148	37
3207	ykh	3149	37
3208	khg	3150	37
3209	kht	3151	37
3210	ksu	3152	37
3211	ogo	3153	37
3212	khn	3154	37
3213	kca	3155	37
3214	xao	3156	37
3215	kfw	3157	37
3216	khr	3158	37
3217	ksy	3159	37
3218	kha	3160	37
3219	lko	3161	37
3220	zkz	3162	37
3221	kqg	3163	37
3222	tlx	3164	37
3223	xkf	3165	37
3224	xhe	3166	37
3225	nkh	3167	37
3226	kix	3168	37
3227	kjj	3169	37
3228	kwx	3170	37
3229	kqm	3171	37
3230	ykl	3172	37
3231	km	3173	37
3232	khm	3173	37
3233	kjg	3174	37
3234	xkc	3175	37
3235	naq	3176	37
3236	nkb	3177	37
3237	ktc	3178	37
3238	kmz	3179	37
3239	zkh	3180	37
3240	kho	3181	37
3241	khw	3182	37
3242	xhv	3183	37
3243	khf	3184	37
3244	cnk	3185	37
3245	kfm	3186	37
3246	khv	3187	37
3247	kjm	3188	37
3248	kkh	3189	37
3249	blv	3190	37
3250	kie	3191	37
3251	prm	3192	37
3252	kic	3193	37
3253	gia	3194	37
3254	kzg	3195	37
3255	Kikuyu	3196	37
3256	ki	3196	37
3257	Gikuyu	3196	37
3258	kik	3196	37
3259	sjd	3197	37
3260	kij	3198	37
3261	klb	3199	37
3262	kih	3200	37
3263	kia	3201	37
3264	mji	3202	37
3265	kig	3203	37
3266	kqr	3204	37
3267	kiv	3205	37
3268	kmb	3206	37
3269	sbt	3207	37
3270	kqp	3208	37
3271	cbw	3209	37
3272	kco	3210	37
3273	mkx	3211	37
3274	krj	3212	37
3275	zga	3213	37
3276	kfk	3214	37
3277	knq	3215	37
3278	kkd	3216	37
3279	kin	3217	37
3280	rw	3217	37
3281	ues	3218	37
3282	kkm	3219	37
3283	xko	3220	37
3284	kio	3221	37
3285	apk	3222	37
3286	sgc	3223	37
3287	kyi	3224	37
3288	kkr	3225	37
3289	geb	3226	37
3290	kir	3227	37
3291	Kyrgyz	3227	37
3292	ky	3227	37
3293	okr	3228	37
3294	kiy	3229	37
3295	kiu	3230	37
3296	Rundi	3231	37
3297	run	3231	37
3298	rn	3231	37
3299	fkk	3232	37
3300	kis	3233	37
3301	lks	3234	37
3302	xis	3235	37
3303	kqh	3236	37
3304	kje	3237	37
3305	kiz	3238	37
3306	gru	3239	37
3307	mwk	3240	37
3308	zkt	3241	37
3309	kii	3242	37
3310	mkw	3243	37
3311	ktu	3244	37
3312	wei	3245	37
3313	izm	3246	37
3314	lda	3247	37
3315	kla	3248	37
3316	klu	3249	37
3317	kqt	3250	37
3318	tlh	3251	37
3319	czk	3252	37
3320	fuj	3253	37
3321	kib	3254	37
3322	cku	3255	37
3323	kpd	3256	37
3324	kcj	3257	37
3325	okc	3258	37
3326	kgu	3259	37
3327	kpw	3260	37
3328	kdq	3261	37
3329	thq	3262	37
3330	cdz	3263	37
3331	ksz	3264	37
3332	kfa	3265	37
3333	vko	3266	37
3334	kod	3267	37
3335	kwp	3268	37
3336	kcs	3269	37
3337	kso	3270	37
3338	kpi	3271	37
3339	kwl	3272	37
3340	zkg	3273	37
3341	kkx	3274	37
3342	plk	3275	37
3343	kpm	3276	37
3344	bcs	3277	37
3345	kkt	3278	37
3346	nkd	3279	37
3347	kqi	3280	37
3348	kxt	3281	37
3349	trp	3282	37
3350	gko	3283	37
3351	ktd	3284	37
3352	kou	3285	37
3353	nxk	3286	37
3354	okg	3287	37
3355	xod	3288	37
3356	kzn	3289	37
3357	kkk	3290	37
3358	ekl	3291	37
3359	biw	3292	37
3360	kol	3293	37
3361	kvv	3294	37
3362	klc	3295	37
3363	skn	3296	37
3364	klx	3297	37
3365	bkm	3298	37
3366	kmm	3299	37
3367	kmy	3300	37
3368	kpf	3301	37
3369	tyn	3302	37
3370	xbi	3303	37
3371	kge	3304	37
3372	kv	3305	37
3373	kom	3305	37
3374	koi	3306	37
3375	kpv	3307	37
3376	xoi	3308	37
3377	kmw	3309	37
3378	xom	3310	37
3379	kvh	3311	37
3380	kvp	3312	37
3381	kzv	3313	37
3382	kkn	3314	37
3383	kxw	3315	37
3384	knd	3316	37
3385	kfc	3317	37
3386	kdw	3318	37
3387	kon	3319	37
3388	kg	3319	37
3389	knn	3320	37
3390	kok	3321	37
3391	xon	3322	37
3392	kma	3323	37
3393	knu	3324	37
3394	klk	3325	37
3395	kno	3326	37
3396	koa	3327	37
3397	kcz	3328	37
3398	kxc	3329	37
3399	nbe	3330	37
3400	mku	3331	37
3401	koo	3332	37
3402	kng	3333	37
3403	ozm	3334	37
3404	kqy	3335	37
3405	xop	3336	37
3406	opk	3337	37
3407	kpr	3338	37
3408	koz	3339	37
3409	kqz	3340	37
3410	kcy	3341	37
3411	kor	3342	37
3412	ko	3342	37
3413	kvk	3343	37
3414	coe	3344	37
3415	okh	3345	37
3416	kfq	3346	37
3417	vkp	3347	37
3418	kfo	3348	37
3419	jkr	3349	37
3420	kxr	3350	37
3421	krf	3351	37
3422	vkn	3352	37
3423	bqv	3353	37
3424	vkz	3354	37
3425	kfz	3355	37
3426	kqj	3356	37
3427	bpr	3357	37
3428	xkq	3358	37
3429	xxr	3359	37
3430	ktl	3360	37
3431	khe	3361	37
3432	kfd	3362	37
3433	xor	3363	37
3434	kpq	3364	37
3435	kfp	3365	37
3436	kpy	3366	37
3437	kiq	3367	37
3438	kkl	3368	37
3439	kze	3369	37
3440	kid	3370	37
3441	kos	3371	37
3442	koq	3372	37
3443	kfe	3373	37
3444	mqg	3374	37
3445	grm	3375	37
3446	kqk	3376	37
3447	avk	3377	37
3448	eko	3378	37
3449	zko	3379	37
3450	snz	3380	37
3451	kyf	3381	37
3452	kqb	3382	37
3453	kvc	3383	37
3454	xow	3384	37
3455	kwh	3385	37
3456	kqd	3386	37
3457	kff	3387	37
3458	kga	3388	37
3459	koh	3389	37
3460	khq	3390	37
3461	ses	3391	37
3462	koy	3392	37
3463	kuw	3393	37
3464	kpl	3394	37
3465	kpk	3395	37
3466	pbn	3396	37
3467	koc	3397	37
3468	kym	3398	37
3469	cpo	3399	37
3470	kpe	3400	37
3471	kef	3401	37
3472	kph	3402	37
3473	kye	3403	37
3474	xra	3404	37
3475	rka	3405	37
3476	kqq	3406	37
3477	zkv	3407	37
3478	xre	3408	37
3479	ngt	3409	37
3480	xri	3410	37
3481	kri	3411	37
3482	rop	3412	37
3483	ksi	3413	37
3484	kxb	3414	37
3485	kgo	3415	37
3486	krr	3416	37
3487	jct	3417	37
3488	kry	3418	37
3489	tyu	3419	37
3490	ykn	3420	37
3491	yku	3421	37
3492	uan	3422	37
3493	xnh	3423	37
3494	ksd	3424	37
3495	kua	3425	37
3496	Kwanyama	3425	37
3497	Kuanyama	3425	37
3498	kj	3425	37
3499	ugh	3426	37
3500	kgf	3427	37
3501	kof	3428	37
3502	jko	3429	37
3503	kvb	3430	37
3504	lkc	3431	37
3505	kfg	3432	37
3506	kyw	3433	37
3507	kov	3434	37
3508	sqx	3435	37
3509	kow	3436	37
3510	kes	3437	37
3511	xmh	3438	37
3512	uki	3439	37
3513	kvd	3440	37
3514	dkr	3441	37
3515	kui	3442	37
3516	vkj	3443	37
3517	kfn	3444	37
3518	kux	3445	37
3519	ght	3446	37
3520	kez	3447	37
3521	kex	3448	37
3522	ukv	3449	37
3523	xmq	3450	37
3524	xmp	3451	37
3525	ugb	3452	37
3526	uwa	3453	37
3527	gvn	3454	37
3528	tpg	3455	37
3529	kul	3456	37
3530	kxj	3457	37
3531	xpk	3458	37
3532	vkl	3459	37
3533	kfx	3460	37
3534	uon	3461	37
3535	kle	3462	37
3536	bbu	3463	37
3537	ksl	3464	37
3538	kdi	3465	37
3539	kue	3466	37
3540	qwm	3467	37
3541	kfy	3468	37
3542	kmj	3469	37
3543	ksm	3470	37
3544	kgs	3471	37
3545	wkb	3472	37
3546	xks	3473	37
3547	kra	3474	37
3548	dih	3475	37
3549	kuo	3476	37
3550	kum	3477	37
3551	zum	3478	37
3552	kun	3479	37
3553	wlg	3480	37
3554	kdn	3481	37
3555	shd	3482	37
3556	wku	3483	37
3557	kfl	3484	37
3558	knw	3485	37
3559	ggk	3486	37
3560	gdt	3487	37
3561	kgl	3488	37
3562	lku	3489	37
3563	kse	3490	37
3564	kvg	3491	37
3565	xug	3492	37
3566	kup	3493	37
3567	pep	3494	37
3568	kjn	3495	37
3569	njx	3496	37
3570	kuz	3497	37
3571	xuo	3498	37
3572	kto	3499	37
3573	kug	3500	37
3574	mkn	3501	37
3575	key	3502	37
3576	kpz	3503	37
3577	kuv	3504	37
3578	nqk	3505	37
3579	krh	3506	37
3580	knk	3507	37
3581	kur	3508	37
3582	ku	3508	37
3583	nbn	3509	37
3584	kuj	3510	37
3585	kfh	3511	37
3586	kfv	3512	37
3587	unn	3513	37
3588	vku	3514	37
3589	ktm	3515	37
3590	xkz	3516	37
3591	kjr	3517	37
3592	kru	3518	37
3593	kyr	3519	37
3594	kus	3520	37
3595	ksg	3521	37
3596	kuh	3522	37
3597	ksv	3523	37
3598	kgg	3524	37
3599	kut	3525	37
3600	kub	3526	37
3601	xut	3527	37
3602	skm	3528	37
3603	kpa	3529	37
3604	kdc	3530	37
3605	khj	3531	37
3606	thd	3532	37
3607	uky	3533	37
3608	kuy	3534	37
3609	olu	3535	37
3610	kxv	3536	37
3611	blh	3537	37
3612	cwt	3538	37
3613	woa	3539	37
3614	kdt	3540	37
3615	fkv	3541	37
3616	wka	3542	37
3617	kwb	3543	37
3618	bko	3544	37
3619	ksq	3545	37
3620	kwz	3546	37
3621	kwd	3547	37
3622	kdz	3548	37
3623	kwk	3549	37
3624	kwu	3550	37
3625	qwt	3551	37
3626	kmq	3552	37
3627	kwm	3553	37
3628	tnk	3554	37
3629	ktf	3555	37
3630	okk	3556	37
3631	xdo	3557	37
3632	kvi	3558	37
3633	kwj	3559	37
3634	kwn	3560	37
3635	knp	3561	37
3636	kwf	3562	37
3637	nmg	3563	37
3638	kya	3564	37
3639	xwa	3565	37
3640	xwg	3566	37
3641	kwr	3567	37
3642	kwe	3568	37
3643	xwr	3569	37
3644	cwe	3570	37
3645	kkb	3571	37
3646	kws	3572	37
3647	kwt	3573	37
3648	gww	3574	37
3649	kuc	3575	37
3650	kww	3576	37
3651	kmo	3577	37
3652	kwo	3578	37
3653	xuu	3579	37
3654	bka	3580	37
3655	kyc	3581	37
3656	nqq	3582	37
3657	tye	3583	37
3658	kql	3584	37
3659	kgy	3585	37
3660	kmg	3586	37
3661	keb	3587	37
3662	ksh	3588	37
3663	bzx	3589	37
3664	lbi	3590	37
3665	gdm	3591	37
3666	ldi	3592	37
3667	loh	3593	37
3668	lau	3594	37
3669	lbb	3595	37
3670	jku	3596	37
3671	mwi	3597	37
3672	ypb	3598	37
3673	lbu	3599	37
3674	dtb	3600	37
3675	lac	3601	37
3676	lbt	3602	37
3677	zpa	3603	37
3678	zpl	3604	37
3679	lbj	3605	37
3680	lld	3606	37
3681	lad	3607	37
3682	llj	3608	37
3683	lkl	3609	37
3684	laf	3610	37
3685	lgb	3611	37
3686	lgh	3612	37
3687	kot	3613	37
3688	lhh	3614	37
3689	lha	3615	37
3690	lhn	3616	37
3691	lah	3617	37
3692	kvt	3618	37
3693	lhu	3619	37
3694	lhi	3620	37
3695	lhl	3621	37
3696	lmx	3622	37
3697	clj	3623	37
3698	lji	3624	37
3699	lbe	3625	37
3700	lap	3626	37
3701	lka	3627	37
3702	lmw	3628	37
3703	lkh	3629	37
3704	lki	3630	37
3705	lbc	3631	37
3706	lkn	3632	37
3707	lkd	3633	37
3708	lkt	3634	37
3709	dic	3635	37
3710	lxm	3636	37
3711	nrz	3637	37
3712	leb	3638	37
3713	lla	3639	37
3714	cnl	3640	37
3715	lal	3641	37
3716	las	3642	37
3717	lay	3643	37
3718	slp	3644	37
3719	lby	3645	37
3720	lmr	3646	37
3721	hia	3647	37
3722	lmq	3648	37
3723	lam	3649	37
3724	lmn	3650	37
3725	quf	3651	37
3726	lmh	3652	37
3727	lmy	3653	37
3728	lai	3654	37
3729	bma	3655	37
3730	lmu	3656	37
3731	ldh	3657	37
3732	lmk	3658	37
3733	lev	3659	37
3734	lns	3660	37
3735	lmg	3661	37
3736	ljp	3662	37
3737	abl	3663	37
3738	llh	3664	37
3739	ruu	3665	37
3740	ldm	3666	37
3741	yne	3667	37
3742	lnm	3668	37
3743	lna	3669	37
3744	yln	3670	37
3745	lgo	3671	37
3746	laj	3672	37
3747	lng	3673	37
3748	sfb	3674	37
3749	lnw	3675	37
3750	lnh	3676	37
3751	lo	3677	37
3752	lao	3677	37
3753	nlq	3678	37
3754	lwm	3679	37
3755	lbg	3680	37
3756	lso	3681	37
3757	ztl	3682	37
3758	lrg	3683	37
3759	lrt	3684	37
3760	lbz	3685	37
3761	lrv	3686	37
3762	hmd	3687	37
3763	lrl	3688	37
3764	alo	3689	37
3765	lro	3690	37
3766	lar	3691	37
3767	lan	3692	37
3768	zcd	3693	37
3769	llm	3694	37
3770	lsa	3695	37
3771	lsi	3696	37
3772	lss	3697	37
3773	ltc	3698	37
3774	ltg	3699	37
3775	la	3700	37
3776	lat	3700	37
3777	ltu	3701	37
3778	ltn	3702	37
3779	lav	3703	37
3780	lv	3703	37
3781	lsl	3704	37
3782	llu	3705	37
3783	luf	3706	37
3784	llx	3707	37
3785	law	3708	37
3786	lur	3709	37
3787	lre	3710	37
3788	clt	3711	37
3789	lbv	3712	37
3790	lbo	3713	37
3791	lvi	3714	37
3792	lvk	3715	37
3793	lbx	3716	37
3794	lwu	3717	37
3795	tgi	3718	37
3796	lya	3719	37
3797	lzz	3720	37
3798	cle	3721	37
3799	lec	3722	37
3800	lew	3723	37
3801	ldk	3724	37
3802	lfa	3725	37
3803	lgm	3726	37
3804	lea	3727	37
3805	agb	3728	37
3806	lcc	3729	37
3807	tql	3730	37
3808	urr	3731	37
3809	cae	3732	37
3810	lzn	3733	37
3811	lek	3734	37
3812	llk	3735	37
3813	lln	3736	37
3814	lel	3737	37
3815	llc	3738	37
3816	lle	3739	37
3817	lef	3740	37
3818	lpa	3741	37
3819	leq	3742	37
3820	lrz	3743	37
3821	lei	3744	37
3822	xle	3745	37
3823	ley	3746	37
3824	ldj	3747	37
3825	tnl	3748	37
3826	len	3749	37
3827	led	3750	37
3828	lgi	3751	37
3829	lgr	3752	37
3830	lej	3753	37
3831	lnj	3754	37
3832	leh	3755	37
3833	ler	3756	37
3834	ldg	3757	37
3835	lep	3758	37
3836	lpe	3759	37
3837	xlp	3760	37
3838	gnh	3761	37
3839	les	3762	37
3840	let	3763	37
3841	nms	3764	37
3842	leo	3765	37
3843	lti	3766	37
3844	apc	3767	37
3845	lvu	3768	37
3846	lww	3769	37
3847	lwe	3770	37
3848	lwt	3771	37
3849	ayi	3772	37
3850	lez	3773	37
3851	lhp	3774	37
3852	lhm	3775	37
3853	ljl	3776	37
3854	lix	3777	37
3855	ste	3778	37
3856	njn	3779	37
3857	zln	3780	37
3858	xpe	3781	37
3859	lir	3782	37
3860	liq	3783	37
3861	liz	3784	37
3862	lbl	3785	37
3863	xli	3786	37
3864	ayl	3787	37
3865	lbs	3788	37
3866	add	3789	37
3867	lig	3790	37
3868	lgz	3791	37
3869	lij	3792	37
3870	xlg	3793	37
3871	lih	3794	37
3872	mgi	3795	37
3873	lik	3796	37
3874	lio	3797	37
3875	lie	3798	37
3876	kxx	3799	37
3877	lib	3800	37
3878	kwc	3801	37
3879	lll	3802	37
3880	lil	3803	37
3881	bme	3804	37
3882	lif	3805	37
3883	lmp	3806	37
3884	Limburgish	3807	37
3885	li	3807	37
3886	Limburgan	3807	37
3887	lim	3807	37
3888	Limburger	3807	37
3889	ylm	3808	37
3890	lmc	3809	37
3891	kmk	3810	37
3892	lab	3811	37
3893	ln	3812	37
3894	lin	3812	37
3895	onb	3813	37
3896	lgk	3814	37
3897	pml	3815	37
3898	lfn	3816	37
3899	apl	3817	37
3900	lpo	3818	37
3901	lcs	3819	37
3902	lcl	3820	37
3903	lsh	3821	37
3904	lsd	3822	37
3905	aij	3823	37
3906	trg	3824	37
3907	lis	3825	37
3908	lzh	3826	37
3909	lit	3827	37
3910	lt	3827	37
3911	lls	3828	37
3912	lzl	3829	37
3913	zlj	3830	37
3914	zlq	3831	37
3915	liv	3832	37
3916	olo	3833	37
3917	lht	3834	37
3918	lrk	3835	37
3919	loq	3836	37
3920	lob	3837	37
3921	lbm	3838	37
3922	lgq	3839	37
3923	lqr	3840	37
3924	log	3841	37
3925	lof	3842	37
3926	rag	3843	37
3927	liu	3844	37
3928	lbr	3845	37
3929	qvj	3846	37
3930	jbo	3847	37
3931	yaz	3848	37
3932	loy	3849	37
3933	lok	3850	37
3934	lky	3851	37
3935	lcd	3852	37
3936	llq	3853	37
3937	llg	3854	37
3938	llb	3855	37
3939	loa	3856	37
3940	ycl	3857	37
3941	loi	3858	37
3942	lom	3859	37
3943	lmv	3860	37
3944	rmi	3861	37
3945	lmo	3862	37
3946	lmi	3863	37
3947	loo	3864	37
3948	ngl	3865	37
3949	lce	3866	37
3950	lpn	3867	37
3951	ttw	3868	37
3952	lgu	3869	37
3953	wok	3870	37
3954	lnu	3871	37
3955	los	3872	37
3956	crc	3873	37
3957	lnz	3874	37
3958	ldo	3875	37
3959	lop	3876	37
3960	lov	3877	37
3961	lpx	3878	37
3962	lrn	3879	37
3963	lnn	3880	37
3964	spq	3881	37
3965	uvl	3882	37
3966	njh	3883	37
3967	dtr	3884	37
3968	loj	3885	37
3969	lou	3886	37
3970	lox	3887	37
3971	xlo	3888	37
3972	xlb	3889	37
3973	nds	3890	37
3974	xbb	3891	37
3975	cea	3892	37
3976	dni	3893	37
3977	nsb	3894	37
3978	sli	3895	37
3979	dsb	3896	37
3980	axl	3897	37
3981	tto	3898	37
3982	taa	3899	37
3983	clo	3900	37
3984	tac	3901	37
3985	ztp	3902	37
3986	loz	3903	37
3987	lex	3904	37
3988	lub	3905	37
3989	lu	3905	37
3990	lua	3906	37
3991	kcc	3907	37
3992	lcf	3908	37
3993	knb	3909	37
3994	lch	3910	37
3995	luq	3911	37
3996	lud	3912	37
3997	ldq	3913	37
3998	lgg	3914	37
3999	ruf	3915	37
4000	lcq	3916	37
4001	lum	3917	37
4002	lui	3918	37
4003	dop	3919	37
4004	ule	3920	37
4005	smj	3921	37
4006	luu	3922	37
4007	lup	3923	37
4008	lmd	3924	37
4009	luj	3925	37
4010	luk	3926	37
4011	lun	3927	37
4012	lnd	3928	37
4013	vmg	3929	37
4014	lga	3930	37
4015	luw	3931	37
4016	luo	3932	37
4017	hml	3933	37
4018	ldd	3934	37
4019	lse	3935	37
4020	lus	3936	37
4021	lut	3937	37
4022	khl	3938	37
4023	xls	3939	37
4024	ndy	3940	37
4025	lue	3941	37
4026	luv	3942	37
4027	lwo	3943	37
4028	lb	3944	37
4029	Letzeburgesch	3944	37
4030	Luxembourgish	3944	37
4031	ltz	3944	37
4032	lyn	3945	37
4033	luy	3946	37
4034	lwa	3947	37
4035	lvl	3948	37
4036	xlc	3949	37
4037	xld	3950	37
4038	lyg	3951	37
4039	lee	3952	37
4040	ldn	3953	37
4041	bwj	3954	37
4042	khb	3955	37
4043	msj	3956	37
4044	mjn	3957	37
4045	skc	3958	37
4046	mhy	3959	37
4047	mhi	3960	37
4048	slz	3961	37
4049	cma	3962	37
4050	mew	3963	37
4051	ffm	3964	37
4052	ymm	3965	37
4053	mde	3966	37
4054	mqa	3967	37
4055	mmz	3968	37
4056	mfz	3969	37
4057	kkg	3970	37
4058	muj	3971	37
4059	mca	3972	37
4060	mcl	3973	37
4061	mbn	3974	37
4062	mzs	3975	37
4063	rup	3976	37
4064	mk	3977	37
4065	mkd	3977	37
4066	mac	3977	37
4067	jmc	3978	37
4068	mcb	3979	37
4069	mpd	3980	37
4070	mvw	3981	37
4071	wpc	3982	37
4072	myy	3983	37
4073	mbc	3984	37
4074	mxu	3985	37
4075	mda	3986	37
4076	mzc	3987	37
4077	mmx	3988	37
4078	dmd	3989	37
4079	grg	3990	37
4080	mad	3991	37
4081	mme	3992	37
4082	hmk	3993	37
4083	itt	3994	37
4084	maf	3995	37
4085	mkv	3996	37
4086	blx	3997	37
4087	sgb	3998	37
4088	mag	3999	37
4089	ayt	4000	37
4090	xtm	4001	37
4091	gmx	4002	37
4092	zgr	4003	37
4093	mdh	4004	37
4094	gkd	4005	37
4095	gmg	4006	37
4096	mjx	4007	37
4097	bfz	4008	37
4098	mjy	4009	37
4099	mhb	4010	37
4100	mxx	4011	37
4101	ayz	4012	37
4102	sks	4013	37
4103	mzz	4014	37
4104	tnh	4015	37
4105	mmm	4016	37
4106	mgu	4017	37
4107	cwb	4018	37
4108	vmf	4019	37
4109	xkl	4020	37
4110	zrs	4021	37
4111	mbq	4022	37
4112	mai	4023	37
4113	wmm	4024	37
4114	mti	4025	37
4115	mum	4026	37
4116	mpe	4027	37
4117	xmj	4028	37
4118	mjz	4029	37
4119	mmj	4030	37
4120	kmd	4031	37
4121	mkg	4032	37
4122	pbl	4033	37
4123	mcp	4034	37
4124	myh	4035	37
4125	mjb	4036	37
4126	mkz	4037	37
4127	mak	4038	37
4128	mfp	4039	37
4129	aup	4040	37
4130	vmw	4041	37
4131	xmc	4042	37
4132	mgh	4043	37
4133	mhm	4044	37
4134	xsq	4045	37
4135	vmk	4046	37
4136	mgf	4047	37
4137	zmh	4048	37
4138	kde	4049	37
4139	lva	4050	37
4140	jmn	4051	37
4141	mpu	4052	37
4142	ymk	4053	37
4143	umn	4054	37
4144	mlf	4055	37
4145	mkb	4056	37
4146	ruy	4057	37
4147	ped	4058	37
4148	ima	4059	37
4149	ccm	4060	37
4150	mcm	4061	37
4151	mlg	4062	37
4152	mg	4062	37
4153	mpb	4063	37
4154	mmt	4064	37
4155	mln	4065	37
4156	mjo	4066	37
4157	mjp	4067	37
4158	mjq	4068	37
4159	mkr	4069	37
4160	ymr	4070	37
4161	mjr	4071	37
4162	lon	4072	37
4163	swk	4073	37
4164	lws	4074	37
4165	Malay	4075	37
4166	ms	4075	37
4167	msa	4075	37
4168	may	4075	37
4169	Malay (macrolanguage)	4075	37
4170	zlm	4076	37
4171	mal	4077	37
4172	ml	4077	37
4173	xdy	4078	37
4174	mlz	4079	37
4175	mbp	4080	37
4176	xml	4081	37
4177	bfo	4082	37
4178	dv	4083	37
4179	Divehi	4083	37
4180	Maldivian	4083	37
4181	Dhivehi	4083	37
4182	div	4083	37
4183	mdy	4084	37
4184	mdc	4085	37
4185	pqm	4086	37
4186	pkt	4087	37
4187	mgl	4088	37
4188	mlx	4089	37
4189	vml	4090	37
4190	mxf	4091	37
4191	gcc	4092	37
4192	mgq	4093	37
4193	mzd	4094	37
4194	mli	4095	37
4195	tcf	4096	37
4196	mla	4097	37
4197	mbk	4098	37
4198	mt	4099	37
4199	mlt	4099	37
4200	mdl	4100	37
4201	mll	4101	37
4202	mup	4102	37
4203	yga	4103	37
4204	gut	4104	37
4205	mam	4105	37
4206	mma	4106	37
4207	mhf	4107	37
4208	wmd	4108	37
4209	mmn	4109	37
4210	myk	4110	37
4211	mqj	4111	37
4212	mgm	4112	37
4213	mcs	4113	37
4214	mvd	4114	37
4215	mgr	4115	37
4216	maw	4116	37
4217	mqx	4117	37
4218	emm	4118	37
4219	kdf	4119	37
4220	mdi	4120	37
4221	mml	4121	37
4222	xmm	4122	37
4223	mva	4123	37
4224	mle	4124	37
4225	nmm	4125	37
4226	znk	4126	37
4227	mnc	4127	37
4228	zma	4128	37
4229	mha	4129	37
4230	mgs	4130	37
4231	mht	4131	37
4232	mid	4132	37
4233	mhq	4133	37
4234	zmk	4134	37
4235	mdr	4135	37
4236	tbf	4136	37
4237	mqu	4137	37
4238	cmn	4138	37
4239	mry	4139	37
4240	mjl	4140	37
4241	mqr	4141	37
4242	man	4142	37
4243	mnk	4143	37
4244	mfv	4144	37
4245	aax	4145	37
4246	bwp	4146	37
4247	jet	4147	37
4248	zng	4148	37
4249	kby	4149	37
4250	mem	4150	37
4251	mrv	4151	37
4252	mpc	4152	37
4253	zns	4153	37
4254	myj	4154	37
4255	mdj	4155	37
4256	mdk	4156	37
4257	zme	4157	37
4258	mmo	4158	37
4259	mqy	4159	37
4260	mge	4160	37
4261	mqc	4161	37
4262	mbh	4162	37
4263	mom	4163	37
4264	xmn	4164	37
4265	abd	4165	37
4266	mnx	4166	37
4267	mqp	4167	37
4268	mni	4168	37
4269	knf	4169	37
4270	nlm	4170	37
4271	mju	4171	37
4272	mjv	4172	37
4273	mev	4173	37
4274	woo	4174	37
4275	msk	4175	37
4276	mns	4176	37
4277	msw	4177	37
4278	myg	4178	37
4279	nty	4179	37
4280	kxf	4180	37
4281	glv	4181	37
4282	gv	4181	37
4283	mzj	4182	37
4284	mny	4183	37
4285	mxc	4184	37
4286	mzv	4185	37
4287	nbi	4186	37
4288	mmd	4187	37
4289	swb	4188	37
4290	mlh	4189	37
4291	mnm	4190	37
4292	mpy	4191	37
4293	mpw	4192	37
4294	bzh	4193	37
4295	mcg	4194	37
4296	arn	4195	37
4297	sjm	4196	37
4298	mch	4197	37
4299	mrh	4198	37
4300	lri	4199	37
4301	vmh	4200	37
4302	mrs	4201	37
4303	nma	4202	37
4304	lrm	4203	37
4305	mrw	4204	37
4306	zmr	4205	37
4307	mgb	4206	37
4308	mr	4207	37
4309	mar	4207	37
4310	Marāṭhī	4207	37
4311	Marathi	4207	37
4312	mvr	4208	37
4313	mpg	4209	37
4314	dsz	4210	37
4315	mrx	4211	37
4316	vmr	4212	37
4317	mvu	4213	37
4318	zmc	4214	37
4319	mrt	4215	37
4320	mfm	4216	37
4321	qvm	4217	37
4322	mhg	4218	37
4323	mbx	4219	37
4324	hob	4220	37
4325	chm	4221	37
4326	mrr	4222	37
4327	mds	4223	37
4328	mrc	4224	37
4329	zmd	4225	37
4330	zmj	4226	37
4331	dad	4227	37
4332	zmm	4228	37
4333	mrz	4229	37
4334	mbw	4230	37
4335	nng	4231	37
4336	zmt	4232	37
4337	mrb	4233	37
4338	mqi	4234	37
4339	nsr	4235	37
4340	msp	4236	37
4341	zmy	4237	37
4342	rkm	4238	37
4343	enb	4239	37
4344	rmz	4240	37
4345	mvo	4241	37
4346	mec	4242	37
4347	xru	4243	37
4348	mfr	4244	37
4349	umc	4245	37
4350	mh	4246	37
4351	mah	4246	37
4352	ims	4247	37
4353	mre	4248	37
4354	zmg	4249	37
4355	mpj	4250	37
4356	vma	4251	37
4357	mhx	4252	37
4358	mwr	4253	37
4359	rwr	4254	37
4360	mve	4255	37
4361	mzr	4256	37
4362	myx	4257	37
4363	tis	4258	37
4364	mas	4259	37
4365	mls	4260	37
4366	mcn	4261	37
4367	msb	4262	37
4368	cuj	4263	37
4369	jms	4264	37
4370	mho	4265	37
4371	msh	4266	37
4372	ism	4267	37
4373	bnf	4268	37
4374	klv	4269	37
4375	msv	4270	37
4376	mes	4271	37
4377	mdg	4272	37
4378	mvs	4273	37
4379	mtn	4274	37
4380	mfh	4275	37
4381	wtb	4276	37
4382	xmt	4277	37
4383	mgv	4278	37
4384	mqe	4279	37
4385	mbt	4280	37
4386	mzo	4281	37
4387	zml	4282	37
4388	met	4283	37
4389	axg	4284	37
4390	mtm	4285	37
4391	mcf	4286	37
4392	mvb	4287	37
4393	hlt	4288	37
4394	mjk	4289	37
4395	mgw	4290	37
4396	stj	4291	37
4397	mpq	4292	37
4398	mph	4293	37
4399	lsy	4294	37
4400	mhl	4295	37
4401	mcw	4296	37
4402	wma	4297	37
4403	mjj	4298	37
4404	mcz	4299	37
4405	mzx	4300	37
4406	mke	4301	37
4407	mgk	4302	37
4408	mbl	4303	37
4409	mxl	4304	37
4410	sym	4305	37
4411	xmy	4306	37
4412	yan	4307	37
4413	yxa	4308	37
4414	myc	4309	37
4415	xyk	4310	37
4416	xyt	4311	37
4417	xyj	4312	37
4418	mfy	4313	37
4419	mdm	4314	37
4420	ifu	4315	37
4421	dkx	4316	37
4422	zpy	4317	37
4423	mzn	4318	37
4424	vmz	4319	37
4425	mzl	4320	37
4426	mfc	4321	37
4427	mdp	4322	37
4428	lnb	4323	37
4429	zmz	4324	37
4430	mxg	4325	37
4431	mgn	4326	37
4432	zmn	4327	37
4433	mvl	4328	37
4434	mpk	4329	37
4435	zmv	4330	37
4436	mdn	4331	37
4437	gwa	4332	37
4438	myb	4333	37
4439	mfo	4334	37
4440	mtk	4335	37
4441	mql	4336	37
4442	mdt	4337	37
4443	zms	4338	37
4444	emz	4339	37
4445	mbo	4340	37
4446	zmw	4341	37
4447	moi	4342	37
4448	mdu	4343	37
4449	mdq	4344	37
4450	xmb	4345	37
4451	bgu	4346	37
4452	mdw	4347	37
4453	mxo	4348	37
4454	mka	4349	37
4455	xmd	4350	37
4456	mhd	4351	37
4457	mgz	4352	37
4458	bpc	4353	37
4459	mqb	4354	37
4460	mhw	4355	37
4461	mna	4356	37
4462	mbu	4357	37
4463	mlb	4358	37
4464	mbv	4359	37
4465	mdd	4360	37
4466	mck	4361	37
4467	mgy	4362	37
4468	bbt	4363	37
4469	mfu	4364	37
4470	gun	4365	37
4471	mym	4366	37
4472	mjm	4367	37
4473	dmf	4368	37
4474	mue	4369	37
4475	xme	4370	37
4476	mud	4371	37
4477	byv	4372	37
4478	mfj	4373	37
4479	mef	4374	37
4480	ruq	4375	37
4481	nux	4376	37
4482	mmh	4377	37
4483	gdq	4378	37
4484	mek	4379	37
4485	mvk	4380	37
4486	msf	4381	37
4487	hkn	4382	37
4488	mxe	4383	37
4489	mfx	4384	37
4490	med	4385	37
4491	mby	4386	37
4492	xkd	4387	37
4493	mfd	4388	37
4494	sim	4389	37
4495	men	4390	37
4496	xmg	4391	37
4497	mee	4392	37
4498	mct	4393	37
4499	mea	4394	37
4500	mez	4395	37
4501	mwv	4396	37
4502	mcr	4397	37
4503	mvx	4398	37
4504	mnu	4399	37
4505	mxm	4400	37
4506	lmb	4401	37
4507	meq	4402	37
4508	ulk	4403	37
4509	mrm	4404	37
4510	xmr	4405	37
4511	mer	4406	37
4512	wry	4407	37
4513	iyo	4408	37
4514	apm	4409	37
4515	mci	4410	37
4516	sac	4411	37
4517	zim	4412	37
4518	mys	4413	37
4519	acm	4414	37
4520	mvz	4415	37
4521	cms	4416	37
4522	mgo	4417	37
4523	mxv	4418	37
4524	mtr	4419	37
4525	wtm	4420	37
4526	mfs	4421	37
4527	mej	4422	37
4528	pbe	4423	37
4529	ote	4424	37
4530	zmf	4425	37
4531	nfu	4426	37
4532	gmz	4427	37
4533	mic	4428	37
4534	zam	4429	37
4535	mia	4430	37
4536	mpt	4431	37
4537	pla	4432	37
4538	crg	4433	37
4539	cmm	4434	37
4540	mmc	4435	37
4541	ncl	4436	37
4542	dnt	4437	37
4543	bjo	4438	37
4544	axm	4439	37
4545	xbm	4440	37
4546	cnx	4441	37
4547	dum	4442	37
4548	enm	4443	37
4549	frm	4444	37
4550	gmh	4445	37
4551	htx	4446	37
4552	mga	4447	37
4553	xhm	4448	37
4554	okm	4449	37
4555	gml	4450	37
4556	xng	4451	37
4557	nwx	4452	37
4558	mpl	4453	37
4559	wlm	4454	37
4560	mei	4455	37
4561	mmy	4456	37
4562	mpp	4457	37
4563	klm	4458	37
4564	mxj	4459	37
4565	mik	4460	37
4566	ymh	4461	37
4567	mlj	4462	37
4568	iml	4463	37
4569	imy	4464	37
4570	mnp	4465	37
4571	cdo	4466	37
4572	nan	4467	37
4573	czo	4468	37
4574	hna	4469	37
4575	inm	4470	37
4576	xrg	4471	37
4577	min	4472	37
4578	mcv	4473	37
4579	mvn	4474	37
4580	drc	4475	37
4581	mpn	4476	37
4582	mko	4477	37
4583	xmf	4478	37
4584	hto	4479	37
4585	wii	4480	37
4586	xjb	4481	37
4587	xxm	4482	37
4588	omn	4483	37
4589	mqq	4484	37
4590	mnq	4485	37
4591	mzt	4486	37
4592	zgm	4487	37
4593	yiq	4488	37
4594	mwl	4489	37
4595	rbl	4490	37
4596	zrg	4491	37
4597	mmv	4492	37
4598	mep	4493	37
4599	rsm	4494	37
4600	gmr	4495	37
4601	mjs	4496	37
4602	mpx	4497	37
4603	mrg	4498	37
4604	zaw	4499	37
4605	vmm	4500	37
4606	mwu	4501	37
4607	zmq	4502	37
4608	mpo	4503	37
4609	vmi	4504	37
4610	gac	4505	37
4611	mix	4506	37
4612	zpm	4507	37
4613	mkf	4508	37
4614	mvi	4509	37
4615	ehs	4510	37
4616	soy	4511	37
4617	mra	4512	37
4618	lhs	4513	37
4619	kja	4514	37
4620	mlo	4515	37
4621	mmu	4516	37
4622	bfm	4517	37
4623	gbn	4518	37
4624	obm	4519	37
4625	mfq	4520	37
4626	mod	4521	37
4627	ahm	4522	37
4628	jkm	4523	37
4629	old	4524	37
4630	omc	4525	37
4631	mhc	4526	37
4632	moc	4527	37
4633	mxd	4528	37
4634	mqo	4529	37
4635	mvq	4530	37
4636	mif	4531	37
4637	mhj	4532	37
4638	mfg	4533	37
4639	mou	4534	37
4640	mov	4535	37
4641	moh	4536	37
4642	xpq	4537	37
4643	mow	4538	37
4644	mxn	4539	37
4645	mkp	4540	37
4646	mwz	4541	37
4647	ymi	4542	37
4648	mqt	4543	37
4649	wnb	4544	37
4650	mwt	4545	37
4651	mft	4546	37
4652	mkj	4547	37
4653	mkm	4548	37
4654	mkl	4549	37
4655	bri	4550	37
4656	vms	4551	37
4657	mdf	4552	37
4658	mbe	4553	37
4659	pwm	4554	37
4660	vsi	4555	37
4661	bxc	4556	37
4662	mox	4557	37
4663	aun	4558	37
4664	zmo	4559	37
4665	msl	4560	37
4666	mlw	4561	37
4667	ver	4562	37
4668	myl	4563	37
4669	msz	4564	37
4670	dmb	4565	37
4671	mso	4566	37
4672	mmb	4567	37
4673	mqf	4568	37
4674	mnw	4569	37
4675	mzg	4570	37
4676	npn	4571	37
4677	mnd	4572	37
4678	lol	4573	37
4679	mgt	4574	37
4680	bxm	4575	37
4681	mon	4576	37
4682	mn	4576	37
4683	msr	4577	37
4684	mog	4578	37
4685	mnz	4579	37
4686	mru	4580	37
4687	mnh	4581	37
4688	mte	4582	37
4689	mnr	4583	37
4690	moo	4584	37
4691	nmh	4585	37
4692	cnr	4586	37
4693	mtl	4587	37
4694	mxk	4588	37
4695	moj	4589	37
4696	gwg	4590	37
4697	crm	4591	37
4698	mop	4592	37
4699	moq	4593	37
4700	mhz	4594	37
4701	msg	4595	37
4702	mze	4596	37
4703	nhm	4597	37
4704	xmo	4598	37
4705	msx	4599	37
4706	mzq	4600	37
4707	xmz	4601	37
4708	mdb	4602	37
4709	rrm	4603	37
4710	mfe	4604	37
4711	mor	4605	37
4712	ary	4606	37
4713	xms	4607	37
4714	mgc	4608	37
4715	bdo	4609	37
4716	mqn	4610	37
4717	mok	4611	37
4718	mrp	4612	37
4719	umg	4613	37
4720	mrl	4614	37
4721	mgd	4615	37
4722	mqv	4616	37
4723	mtj	4617	37
4724	mos	4618	37
4725	mtt	4619	37
4726	mlv	4620	37
4727	meu	4621	37
4728	mwh	4622	37
4729	cty	4623	37
4730	kpx	4624	37
4731	jmw	4625	37
4732	mzp	4626	37
4733	ity	4627	37
4734	nmo	4628	37
4735	mzy	4629	37
4736	mxi	4630	37
4737	mpi	4631	37
4738	xpj	4632	37
4739	mpz	4633	37
4740	mcx	4634	37
4741	pnd	4635	37
4742	mpa	4636	37
4743	mvt	4637	37
4744	mgg	4638	37
4745	zmp	4639	37
4746	akc	4640	37
4747	cmr	4641	37
4748	mro	4642	37
4749	kqx	4643	37
4750	atl	4644	37
4751	agz	4645	37
4752	ukk	4646	37
4753	mtd	4647	37
4754	tsx	4648	37
4755	mub	4649	37
4756	ymd	4650	37
4757	dmw	4651	37
4758	gau	4652	37
4759	vmd	4653	37
4760	udg	4654	37
4761	aoj	4655	37
4762	muk	4656	37
4763	bmr	4657	37
4764	mmk	4658	37
4765	moz	4659	37
4766	mfw	4660	37
4767	mlm	4661	37
4768	giu	4662	37
4769	mvh	4663	37
4770	kpb	4664	37
4771	mul	4665	37
4772	vmu	4666	37
4773	kqa	4667	37
4774	mzm	4668	37
4775	mnb	4669	37
4776	unx	4670	37
4777	boe	4671	37
4778	mua	4672	37
4779	mnf	4673	37
4780	unr	4674	37
4781	mmf	4675	37
4782	myu	4676	37
4783	mhk	4677	37
4784	mth	4678	37
4785	mpv	4679	37
4786	myr	4680	37
4787	mtc	4681	37
4788	mnj	4682	37
4789	umu	4683	37
4790	mtq	4684	37
4791	tkv	4685	37
4792	asx	4686	37
4793	mxr	4687	37
4794	mtf	4688	37
4795	rmh	4689	37
4796	mur	4690	37
4797	mwf	4691	37
4798	muz	4692	37
4799	huu	4693	37
4800	mqw	4694	37
4801	zmu	4695	37
4802	mmq	4696	37
4803	mmi	4697	37
4804	smm	4698	37
4805	mse	4699	37
4806	mug	4700	37
4807	xma	4701	37
4808	mui	4702	37
4809	mje	4703	37
4810	ttt	4704	37
4811	msu	4705	37
4812	emi	4706	37
4813	muv	4707	37
4814	tuc	4708	37
4815	muy	4709	37
4816	myw	4710	37
4817	ymz	4711	37
4818	mcj	4712	37
4819	mxh	4713	37
4820	sur	4714	37
4821	wlc	4715	37
4822	moa	4716	37
4823	wmw	4717	37
4824	mwa	4718	37
4825	mwe	4719	37
4826	mjh	4720	37
4827	mws	4721	37
4828	ysm	4722	37
4829	gmy	4723	37
4830	mye	4724	37
4831	yms	4725	37
4832	nme	4726	37
4833	gmd	4727	37
4834	xak	4728	37
4835	tnr	4729	37
4836	miq	4730	37
4837	mhn	4731	37
4838	mwq	4732	37
4839	muh	4733	37
4840	pmh	4734	37
4841	mri	4735	37
4842	mao	4735	37
4843	Maori	4735	37
4844	Māori	4735	37
4845	mi	4735	37
4846	nqo	4736	37
4847	nbt	4737	37
4848	nck	4738	37
4849	nao	4739	37
4850	bzv	4740	37
4851	nas	4741	37
4852	mne	4742	37
4853	naf	4743	37
4854	mty	4744	37
4855	ncd	4745	37
4856	ndf	4746	37
4857	mbj	4747	37
4858	nfr	4748	37
4859	srf	4749	37
4860	nxx	4750	37
4861	jbn	4751	37
4862	nag	4752	37
4863	nbg	4753	37
4864	nxe	4754	37
4865	ngv	4755	37
4866	nlx	4756	37
4867	nhh	4757	37
4868	bio	4758	37
4869	ars	4759	37
4870	nae	4760	37
4871	nkj	4761	37
4872	nib	4762	37
4873	nak	4763	37
4874	nbk	4764	37
4875	mff	4765	37
4876	nax	4766	37
4877	nlc	4767	37
4878	nss	4768	37
4879	nal	4769	37
4880	naj	4770	37
4881	ylo	4771	37
4882	nlz	4772	37
4883	nmx	4773	37
4884	nmk	4774	37
4885	nkm	4775	37
4886	ncm	4776	37
4887	nmq	4777	37
4888	nnm	4778	37
4889	nvm	4779	37
4890	nbs	4780	37
4891	naa	4781	37
4892	mxw	4782	37
4893	nmt	4783	37
4894	bwb	4784	37
4895	nmy	4785	37
4896	gld	4786	37
4897	nnc	4787	37
4898	nnb	4788	37
4899	niq	4789	37
4900	sen	4790	37
4901	nzz	4791	37
4902	nnk	4792	37
4903	cox	4793	37
4904	nnt	4794	37
4905	afk	4795	37
4906	qvo	4796	37
4907	npy	4797	37
4908	npa	4798	37
4909	nrb	4799	37
4910	nac	4800	37
4911	nrg	4801	37
4912	rnr	4802	37
4913	nhr	4803	37
4914	nrm	4804	37
4915	xnt	4805	37
4916	nru	4806	37
4917	nnr	4807	37
4918	nsy	4808	37
4919	nvh	4809	37
4920	nsk	4810	37
4921	ntz	4811	37
4922	ncz	4812	37
4923	ntm	4813	37
4924	nte	4814	37
4925	nti	4815	37
4926	ntu	4816	37
4927	nxa	4817	37
4928	ynk	4818	37
4929	ncn	4819	37
4930	nwo	4820	37
4931	nau	4821	37
4932	na	4821	37
4933	Navaho	4822	37
4934	nv	4822	37
4935	Navajo	4822	37
4936	nav	4822	37
4937	nsw	4823	37
4938	nwr	4824	37
4939	nwa	4825	37
4940	nmz	4826	37
4941	naw	4827	37
4942	nxq	4828	37
4943	noz	4829	37
4944	nyq	4830	37
4945	ncr	4831	37
4946	nlu	4832	37
4947	nnz	4833	37
4948	gke	4834	37
4949	ndk	4835	37
4950	ndh	4836	37
4951	ndm	4837	37
4952	ndj	4838	37
4953	nxo	4839	37
4954	nda	4840	37
4955	ndc	4841	37
4956	ned	4842	37
4957	ndd	4843	37
4958	nml	4844	37
4959	dne	4845	37
4960	ndg	4846	37
4961	eli	4847	37
4962	ndp	4848	37
4963	ndw	4849	37
4964	nbb	4850	37
4965	ndz	4851	37
4966	ndl	4852	37
4967	nqm	4853	37
4968	ndq	4854	37
4969	njd	4855	37
4970	ndo	4856	37
4971	ng	4856	37
4972	ndr	4857	37
4973	dgt	4858	37
4974	dno	4859	37
4975	ndx	4860	37
4976	nmd	4861	37
4977	nuh	4862	37
4978	ndt	4863	37
4979	ndv	4864	37
4980	nww	4865	37
4981	njt	4866	37
4982	wni	4867	37
4983	nap	4868	37
4984	nec	4869	37
4985	nef	4870	37
4986	dcr	4871	37
4987	zmi	4872	37
4988	neg	4873	37
4989	nsn	4874	37
4990	nif	4875	37
4991	nkg	4876	37
4992	nej	4877	37
4993	nek	4878	37
4994	gsn	4879	37
4995	nex	4880	37
4996	nem	4881	37
4997	nqn	4882	37
4998	anh	4883	37
4999	yrk	4884	37
5000	nen	4885	37
5001	neu	4886	37
5002	nei	4887	37
5003	nsp	4888	37
5004	ne	4889	37
5005	nep	4889	37
5006	Nepali (macrolanguage)	4889	37
5007	npi	4890	37
5008	net	4891	37
5009	jas	4892	37
5010	nzs	4893	37
5011	new	4894	37
5012	ney	4895	37
5013	nez	4896	37
5014	ntj	4897	37
5015	nxg	4898	37
5016	nju	4899	37
5017	jui	4900	37
5018	nnf	4901	37
5019	nij	4902	37
5020	nud	4903	37
5021	nig	4904	37
5022	szb	4905	37
5023	nmc	4906	37
5024	nbv	4907	37
5025	sba	4908	37
5026	nmv	4909	37
5027	nbh	4910	37
5028	nam	4911	37
5029	xnk	4912	37
5030	nio	4913	37
5031	nid	4914	37
5032	ngd	4915	37
5033	nxd	4916	37
5034	nne	4917	37
5035	gng	4918	37
5036	ntg	4919	37
5037	nyx	4920	37
5038	rxd	4921	37
5039	xni	4922	37
5040	ung	4923	37
5041	nbj	4924	37
5042	nrk	4925	37
5043	nrl	4926	37
5044	nay	4927	37
5045	anc	4928	37
5046	nsg	4929	37
5047	ngm	4930	37
5048	cnw	4931	37
5049	nxn	4932	37
5050	nwg	4933	37
5051	zdj	4934	37
5052	nga	4935	37
5053	nbm	4936	37
5054	ngg	4937	37
5055	jgb	4938	37
5056	nbd	4939	37
5057	nuu	4940	37
5058	agh	4941	37
5059	nge	4942	37
5060	gnj	4943	37
5061	nql	4944	37
5062	nnn	4945	37
5063	nbq	4946	37
5064	ngx	4947	37
5065	ngj	4948	37
5066	nnh	4949	37
5067	jle	4950	37
5068	nnq	4951	37
5069	niy	4952	37
5070	ngi	4953	37
5071	kcd	4954	37
5072	nra	4955	37
5073	jgo	4956	37
5074	nla	4957	37
5075	nmj	4958	37
5076	ngc	4959	37
5077	noq	4960	37
5078	xnq	4961	37
5079	xnj	4962	37
5080	nsh	4963	37
5081	nlo	4964	37
5082	ngp	4965	37
5083	nuw	4966	37
5084	xnm	4967	37
5085	nui	4968	37
5086	xul	4969	37
5087	ndn	4970	37
5088	nue	4971	37
5089	ngz	4972	37
5090	ngq	4973	37
5091	nrx	4974	37
5092	nuo	4975	37
5093	ngw	4976	37
5094	nwe	4977	37
5095	ngn	4978	37
5096	gym	4979	37
5097	nha	4980	37
5098	yrl	4981	37
5099	hrp	4982	37
5100	nhf	4983	37
5101	nia	4984	37
5102	bzk	4985	37
5103	ncs	4986	37
5104	nie	4987	37
5105	mzk	4988	37
5106	fuv	4989	37
5107	pcm	4990	37
5108	nsi	4991	37
5109	nll	4992	37
5110	nii	4993	37
5111	gbe	4994	37
5112	nil	4995	37
5113	nim	4996	37
5114	noe	4997	37
5115	nmp	4998	37
5116	nmr	4999	37
5117	nir	5000	37
5118	nis	5001	37
5119	niw	5002	37
5120	nmw	5003	37
5121	shb	5004	37
5122	nxi	5005	37
5123	nby	5006	37
5124	nxr	5007	37
5125	niz	5008	37
5126	nlk	5009	37
5127	nin	5010	37
5128	nps	5011	37
5129	njs	5012	37
5130	nsz	5013	37
5131	ncg	5014	37
5132	yso	5015	37
5133	num	5016	37
5134	nkp	5017	37
5135	niu	5018	37
5136	cag	5019	37
5137	hrc	5020	37
5138	njl	5021	37
5139	nzb	5022	37
5140	njj	5023	37
5141	njr	5024	37
5142	njy	5025	37
5143	nkq	5026	37
5144	nkn	5027	37
5145	nkz	5028	37
5146	isi	5029	37
5147	khu	5030	37
5148	nkc	5031	37
5149	nko	5032	37
5150	nkx	5033	37
5151	nka	5034	37
5152	nbo	5035	37
5153	nkw	5036	37
5154	nbp	5037	37
5155	zxx	5038	37
5156	fia	5039	37
5157	gaw	5040	37
5158	njb	5041	37
5159	nog	5042	37
5160	npx	5043	37
5161	noi	5044	37
5162	nkk	5045	37
5163	lem	5046	37
5164	nof	5047	37
5165	not	5048	37
5166	nol	5049	37
5167	noh	5050	37
5168	zhn	5051	37
5169	noj	5052	37
5170	nok	5053	37
5171	snf	5054	37
5172	nhu	5055	37
5173	cya	5056	37
5174	nrc	5057	37
5175	nrn	5058	37
5176	nrr	5059	37
5177	esi	5060	37
5178	mmg	5061	37
5179	nks	5062	37
5180	yir	5063	37
5181	azj	5064	37
5182	bcd	5065	37
5183	qul	5066	37
5184	neq	5067	37
5185	llp	5068	37
5186	fll	5069	37
5187	gis	5070	37
5188	qvn	5071	37
5189	mrq	5072	37
5190	ayp	5073	37
5191	xph	5074	37
5192	mfk	5075	37
5193	max	5076	37
5194	kti	5077	37
5195	nni	5078	37
5196	nrp	5079	37
5197	scs	5080	37
5198	tbg	5081	37
5199	tnn	5082	37
5200	whg	5083	37
5201	una	5084	37
5202	kiw	5085	37
5203	nmu	5086	37
5204	aee	5087	37
5205	dip	5088	37
5206	pef	5089	37
5207	xpb	5090	37
5208	tts	5091	37
5209	aqn	5092	37
5210	atv	5093	37
5211	ryn	5094	37
5212	bmm	5095	37
5213	kyn	5096	37
5214	bbo	5097	37
5215	rbk	5098	37
5216	cts	5099	37
5217	qxn	5100	37
5218	dgi	5101	37
5219	doc	5102	37
5220	crl	5103	37
5221	emp	5104	37
5222	frr	5105	37
5223	ghh	5106	37
5224	gno	5107	37
5225	gbo	5108	37
5226	huj	5109	37
5227	hdn	5110	37
5228	hno	5111	37
5229	hmi	5112	37
5230	nrt	5113	37
5231	xnn	5114	37
5232	ncq	5115	37
5233	kxm	5116	37
5234	kqs	5117	37
5235	kmr	5118	37
5236	lrc	5119	37
5237	hmp	5120	37
5238	ymx	5121	37
5239	xkb	5122	37
5240	North Ndebele	5123	37
5241	nde	5123	37
5242	nd	5123	37
5243	ngb	5124	37
5244	yiv	5125	37
5245	nuv	5126	37
5246	nhy	5127	37
5247	cst	5128	37
5248	onr	5129	37
5249	pao	5130	37
5250	pmq	5131	37
5251	pbu	5132	37
5252	qvz	5133	37
5253	cnp	5134	37
5254	pej	5135	37
5255	ncj	5136	37
5256	pmi	5137	37
5257	hea	5138	37
5258	cng	5139	37
5259	nnl	5140	37
5260	rog	5141	37
5261	se	5142	37
5262	sme	5142	37
5263	nsq	5143	37
5264	bks	5144	37
5265	stb	5145	37
5266	thh	5146	37
5267	xpv	5147	37
5268	ntp	5148	37
5269	nod	5149	37
5270	ntd	5150	37
5271	twf	5151	37
5272	xtn	5152	37
5273	tsp	5153	37
5274	tji	5154	37
5275	ttm	5155	37
5276	uzn	5156	37
5277	ykg	5157	37
5278	esk	5158	37
5279	gya	5159	37
5280	mjd	5160	37
5281	mxa	5161	37
5282	glh	5162	37
5283	diw	5163	37
5284	faz	5164	37
5285	kfb	5165	37
5286	nsf	5166	37
5287	ojb	5167	37
5288	xpw	5168	37
5289	nor	5169	37
5290	no	5169	37
5291	nb	5170	37
5292	nob	5170	37
5293	nn	5171	37
5294	nno	5171	37
5295	nsl	5172	37
5296	bly	5173	37
5297	ncf	5174	37
5298	ntw	5175	37
5299	nwy	5176	37
5300	nov	5177	37
5301	noy	5178	37
5302	nse	5179	37
5303	nsc	5180	37
5304	nsx	5181	37
5305	bud	5182	37
5306	nqt	5183	37
5307	nto	5184	37
5308	baf	5185	37
5309	kcn	5186	37
5310	kte	5187	37
5311	nus	5188	37
5312	nnv	5189	37
5313	yas	5190	37
5314	noc	5191	37
5315	mbr	5192	37
5316	klt	5193	37
5317	nuc	5194	37
5318	nuq	5195	37
5319	xnu	5196	37
5320	nkr	5197	37
5321	nur	5198	37
5322	nbr	5199	37
5323	nop	5200	37
5324	sij	5201	37
5325	tgs	5202	37
5326	nxm	5203	37
5327	kdk	5204	37
5328	nut	5205	37
5329	nug	5206	37
5330	nuy	5207	37
5331	rin	5208	37
5332	ii	5209	37
5333	Sichuan Yi	5209	37
5334	iii	5209	37
5335	npb	5210	37
5336	nup	5211	37
5337	nul	5212	37
5338	nuf	5213	37
5339	nuk	5214	37
5340	nwb	5215	37
5341	nev	5216	37
5342	cbn	5217	37
5343	nyy	5218	37
5344	nlj	5219	37
5345	nmi	5220	37
5346	nly	5221	37
5347	now	5222	37
5348	nwm	5223	37
5349	mwn	5224	37
5350	nym	5225	37
5351	nyk	5226	37
5352	nyp	5227	37
5353	nyj	5228	37
5354	nyc	5229	37
5355	nnj	5230	37
5356	nyb	5231	37
5357	nny	5232	37
5358	nna	5233	37
5359	nyn	5234	37
5360	yes	5235	37
5361	sev	5236	37
5362	rim	5237	37
5363	nyw	5238	37
5364	nyt	5239	37
5365	nba	5240	37
5366	nye	5241	37
5367	neh	5242	37
5368	nyl	5243	37
5369	nyr	5244	37
5370	nih	5245	37
5371	nkv	5246	37
5372	nkt	5247	37
5373	nyh	5248	37
5374	lid	5249	37
5375	nyg	5250	37
5376	njz	5251	37
5377	xny	5252	37
5378	nvo	5253	37
5379	nuj	5254	37
5380	muo	5255	37
5381	nyd	5256	37
5382	nyo	5257	37
5383	nyv	5258	37
5384	nys	5259	37
5385	nyu	5260	37
5386	yly	5261	37
5387	nzd	5262	37
5388	nzy	5263	37
5389	nzk	5264	37
5390	nja	5265	37
5391	nzi	5266	37
5392	neo	5267	37
5393	nee	5268	37
5394	hux	5269	37
5395	ngh	5270	37
5396	xoc	5271	37
5397	tyh	5272	37
5398	bzy	5273	37
5399	obi	5274	37
5400	obl	5275	37
5401	obo	5276	37
5402	afz	5277	37
5403	ann	5278	37
5404	obu	5279	37
5405	oca	5280	37
5406	oci	5281	37
5407	oc	5281	37
5408	Occitan (post 1500)	5281	37
5409	mie	5282	37
5410	zac	5283	37
5411	odk	5284	37
5412	ory	5285	37
5413	bhf	5286	37
5414	kkc	5287	37
5415	odu	5288	37
5416	oda	5289	37
5417	opy	5290	37
5418	arc	5291	37
5419	ofo	5292	37
5420	ogc	5293	37
5421	ogb	5294	37
5422	ogg	5295	37
5423	ogu	5296	37
5424	eri	5297	37
5425	oia	5298	37
5426	Ojibwe	5299	37
5427	Ojibwa	5299	37
5428	oji	5299	37
5429	oj	5299	37
5430	chj	5300	37
5431	oka	5301	37
5432	okn	5302	37
5433	oki	5303	37
5434	oks	5304	37
5435	okj	5305	37
5436	okb	5306	37
5437	okd	5307	37
5438	oie	5308	37
5439	kqv	5309	37
5440	opa	5310	37
5441	okx	5311	37
5442	oke	5312	37
5443	opm	5313	37
5444	oku	5314	37
5445	oar	5315	37
5446	oav	5316	37
5447	obt	5317	37
5448	obr	5318	37
5449	ocm	5319	37
5450	och	5320	37
5451	chu	5321	37
5452	Old Church Slavonic	5321	37
5453	Church Slavic	5321	37
5454	cu	5321	37
5455	Church Slavonic	5321	37
5456	Old Bulgarian	5321	37
5457	oco	5322	37
5458	odt	5323	37
5459	ang	5324	37
5460	fro	5325	37
5461	ofs	5326	37
5462	oge	5327	37
5463	goh	5328	37
5464	oht	5329	37
5465	ohu	5330	37
5466	sga	5331	37
5467	ojp	5332	37
5468	okl	5333	37
5469	okz	5334	37
5470	oko	5335	37
5471	olt	5336	37
5472	omy	5337	37
5473	omp	5338	37
5474	omr	5339	37
5475	omx	5340	37
5476	non	5341	37
5477	onw	5342	37
5478	oos	5343	37
5479	peo	5344	37
5480	pro	5345	37
5481	orv	5346	37
5482	osx	5347	37
5483	osp	5348	37
5484	osn	5349	37
5485	oty	5350	37
5486	otb	5351	37
5487	otk	5352	37
5488	oui	5353	37
5489	owl	5354	37
5490	ole	5355	37
5491	olk	5356	37
5492	ong	5357	37
5493	olm	5358	37
5494	olr	5359	37
5495	lul	5360	37
5496	iko	5361	37
5497	plo	5362	37
5498	omg	5363	37
5499	oma	5364	37
5500	acx	5365	37
5501	mbm	5366	37
5502	oml	5367	37
5503	nht	5368	37
5504	omi	5369	37
5505	omk	5370	37
5506	omt	5371	37
5507	omu	5372	37
5508	ona	5373	37
5509	one	5374	37
5510	oog	5375	37
5511	oni	5376	37
5512	onx	5377	37
5513	onj	5378	37
5514	ons	5379	37
5515	onn	5380	37
5516	ono	5381	37
5517	ont	5382	37
5518	ojv	5383	37
5519	oor	5384	37
5520	opo	5385	37
5521	opt	5386	37
5522	orn	5387	37
5523	ors	5388	37
5524	sdr	5389	37
5525	ore	5390	37
5526	org	5391	37
5527	ori	5392	37
5528	or	5392	37
5529	Oriya (macrolanguage)	5392	37
5530	nlv	5393	37
5531	orc	5394	37
5532	orz	5395	37
5533	oru	5396	37
5534	orx	5397	37
5535	orw	5398	37
5536	oac	5399	37
5537	ora	5400	37
5538	oaa	5401	37
5539	okv	5402	37
5540	bdu	5403	37
5541	oro	5404	37
5542	orm	5405	37
5543	om	5405	37
5544	orh	5406	37
5545	bpk	5407	37
5546	orr	5408	37
5547	ury	5409	37
5548	osa	5410	37
5549	ost	5411	37
5550	osc	5412	37
5551	osi	5413	37
5552	oso	5414	37
5553	os	5415	37
5554	Ossetic	5415	37
5555	oss	5415	37
5556	Ossetian	5415	37
5557	otd	5416	37
5558	uta	5417	37
5559	oti	5418	37
5560	otr	5419	37
5561	otw	5420	37
5562	ota	5421	37
5563	lot	5422	37
5564	otu	5423	37
5565	oum	5424	37
5566	oue	5425	37
5567	stn	5426	37
5568	wsr	5427	37
5569	owi	5428	37
5570	oyb	5429	37
5571	oyy	5430	37
5572	oyd	5431	37
5573	xpd	5432	37
5574	zao	5433	37
5575	chz	5434	37
5576	pdi	5435	37
5577	pqa	5436	37
5578	blk	5437	37
5579	pha	5438	37
5580	drl	5439	37
5581	pma	5440	37
5582	sig	5441	37
5583	pcp	5442	37
5584	qvp	5443	37
5585	ems	5444	37
5586	pac	5445	37
5587	pdo	5446	37
5588	pkc	5447	37
5589	pgn	5448	37
5590	pgi	5449	37
5591	pae	5450	37
5592	pgu	5451	37
5593	apf	5452	37
5594	phj	5453	37
5595	phr	5454	37
5596	lgt	5455	37
5597	phv	5456	37
5598	pal	5457	37
5599	pta	5458	37
5600	pri	5459	37
5601	ppi	5460	37
5602	pck	5461	37
5603	pwn	5462	37
5604	pkg	5463	37
5605	pkn	5464	37
5606	pav	5465	37
5607	pks	5466	37
5608	pku	5467	37
5609	jkp	5468	37
5610	abw	5469	37
5611	plq	5470	37
5612	plr	5471	37
5613	cpa	5472	37
5614	pau	5473	37
5615	pnl	5474	37
5616	pln	5475	37
5617	plu	5476	37
5618	pcf	5477	37
5619	pmd	5478	37
5620	fap	5479	37
5621	ple	5480	37
5622	plz	5481	37
5623	bpx	5482	37
5624	pmn	5483	37
5625	pmb	5484	37
5626	pmf	5485	37
5627	hih	5486	37
5628	pam	5487	37
5629	att	5488	37
5630	pnq	5489	37
5631	pnz	5490	37
5632	lsp	5491	37
5633	par	5492	37
5634	qxh	5493	37
5635	kre	5494	37
5636	psn	5495	37
5637	pwb	5496	37
5638	pnp	5497	37
5639	tdb	5498	37
5640	bkj	5499	37
5641	pag	5500	37
5642	pgs	5501	37
5643	png	5502	37
5644	slm	5503	37
5645	pbr	5504	37
5646	pgg	5505	37
5647	pnr	5506	37
5648	pcg	5507	37
5649	pa	5508	37
5650	Panjabi	5508	37
5651	Punjabi	5508	37
5652	pan	5508	37
5653	pax	5509	37
5654	paz	5510	37
5655	pkh	5511	37
5656	pnc	5512	37
5657	mqz	5513	37
5658	knt	5514	37
5659	pno	5515	37
5660	bfc	5516	37
5661	top	5517	37
5662	ppn	5518	37
5663	dpp	5519	37
5664	pas	5520	37
5665	pbo	5521	37
5666	ppe	5522	37
5667	pap	5523	37
5668	ppu	5524	37
5669	pgz	5525	37
5670	pmy	5526	37
5671	ppm	5527	37
5672	prc	5528	37
5673	gug	5529	37
5674	pys	5530	37
5675	pak	5531	37
5676	prf	5532	37
5677	paf	5533	37
5678	pbg	5534	37
5679	prk	5535	37
5680	prw	5536	37
5681	pch	5537	37
5682	pcl	5538	37
5683	ppt	5539	37
5684	pab	5540	37
5685	pcj	5541	37
5686	kvx	5542	37
5687	pbi	5543	37
5688	prd	5544	37
5689	xpr	5545	37
5690	paq	5546	37
5691	aap	5547	37
5692	gvp	5548	37
5693	ps	5549	37
5694	Pushto	5549	37
5695	pus	5549	37
5696	Pashto	5549	37
5697	psq	5550	37
5698	yac	5551	37
5699	pbc	5552	37
5700	ptn	5553	37
5701	pth	5554	37
5702	ptp	5555	37
5703	pty	5556	37
5704	gfk	5557	37
5705	lae	5558	37
5706	mfa	5559	37
5707	ptq	5560	37
5708	pwi	5561	37
5709	plh	5562	37
5710	pad	5563	37
5711	pnk	5564	37
5712	bfb	5565	37
5713	psm	5566	37
5714	pwa	5567	37
5715	paw	5568	37
5716	pmr	5569	37
5717	pzh	5570	37
5718	pai	5571	37
5719	pcb	5572	37
5720	pay	5573	37
5721	xpc	5574	37
5722	nso	5575	37
5723	ppq	5576	37
5724	pel	5577	37
5725	bxd	5578	37
5726	ata	5579	37
5727	ppp	5580	37
5728	aoc	5581	37
5729	psg	5582	37
5730	pek	5583	37
5731	ums	5584	37
5732	peg	5585	37
5733	pdc	5586	37
5734	pnh	5587	37
5735	ptw	5588	37
5736	wet	5589	37
5737	pea	5590	37
5738	pfe	5591	37
5739	mvf	5592	37
5740	pip	5593	37
5741	fas	5594	37
5742	Farsi	5594	37
5743	per	5594	37
5744	Persian	5594	37
5745	fa	5594	37
5746	prl	5595	37
5747	pze	5596	37
5748	zpe	5597	37
5749	pex	5598	37
5750	pey	5599	37
5751	mil	5600	37
5752	pfl	5601	37
5753	prt	5602	37
5754	phk	5603	37
5755	ypa	5604	37
5756	phl	5605	37
5757	phq	5606	37
5758	phw	5607	37
5759	pem	5608	37
5760	psp	5609	37
5761	phm	5610	37
5762	phn	5611	37
5763	ypg	5612	37
5764	yip	5613	37
5765	nph	5614	37
5766	pnx	5615	37
5767	kjt	5616	37
5768	xpg	5617	37
5769	pht	5618	37
5770	phu	5619	37
5771	phd	5620	37
5772	pug	5621	37
5773	phh	5622	37
5774	ypm	5623	37
5775	pho	5624	37
5776	phg	5625	37
5777	ypp	5626	37
5778	yph	5627	37
5779	ypz	5628	37
5780	ptr	5629	37
5781	pin	5630	37
5782	pio	5631	37
5783	pid	5632	37
5784	pcd	5633	37
5785	cpu	5634	37
5786	xpi	5635	37
5787	dep	5636	37
5788	pms	5637	37
5789	pij	5638	37
5790	piz	5639	37
5791	pis	5640	37
5792	plg	5641	37
5793	piv	5642	37
5794	pia	5643	37
5795	piw	5644	37
5796	pnn	5645	37
5797	pti	5646	37
5798	pif	5647	37
5799	pnv	5648	37
5800	pnj	5649	37
5801	pic	5650	37
5802	mio	5651	37
5803	piu	5652	37
5804	pny	5653	37
5805	ppl	5654	37
5806	myp	5655	37
5807	pir	5656	37
5808	bxi	5657	37
5809	pie	5658	37
5810	xpa	5659	37
5811	pig	5660	37
5812	tpp	5661	37
5813	psy	5662	37
5814	xps	5663	37
5815	pih	5664	37
5816	sje	5665	37
5817	pcn	5666	37
5818	pjt	5667	37
5819	pit	5668	37
5820	pix	5669	37
5821	piy	5670	37
5822	crk	5671	37
5823	psd	5672	37
5824	pmw	5673	37
5825	ktj	5674	37
5826	plt	5675	37
5827	pdt	5676	37
5828	gob	5677	37
5829	pbv	5678	37
5830	npo	5679	37
5831	xpo	5680	37
5832	pdn	5681	37
5833	poy	5682	37
5834	pon	5683	37
5835	pok	5684	37
5836	pof	5685	37
5837	pkb	5686	37
5838	pox	5687	37
5839	pld	5688	37
5840	pl	5689	37
5841	pol	5689	37
5842	pso	5690	37
5843	plb	5691	37
5844	pmo	5692	37
5845	pmm	5693	37
5846	ncc	5694	37
5847	pns	5695	37
5848	pnt	5696	37
5849	npg	5697	37
5850	jac	5698	37
5851	poc	5699	37
5852	poh	5700	37
5853	prh	5701	37
5854	psw	5702	37
5855	xpl	5703	37
5856	ptv	5704	37
5857	por	5705	37
5858	pt	5705	37
5859	psr	5706	37
5860	pot	5707	37
5861	pog	5708	37
5862	gdb	5709	37
5863	pmx	5710	37
5864	bye	5711	37
5865	pwr	5712	37
5866	pim	5713	37
5867	pyn	5714	37
5868	prn	5715	37
5869	pgl	5716	37
5870	pre	5717	37
5871	prz	5718	37
5872	prg	5719	37
5873	kvj	5720	37
5874	cpx	5721	37
5875	pux	5722	37
5876	atp	5723	37
5877	pbm	5724	37
5878	pue	5725	37
5879	psl	5726	37
5880	npu	5727	37
5881	pui	5728	37
5882	pkp	5729	37
5883	fuc	5730	37
5884	pup	5731	37
5885	fuf	5732	37
5886	puw	5733	37
5887	pum	5734	37
5888	xpm	5735	37
5889	yae	5736	37
5890	pud	5737	37
5891	pna	5738	37
5892	pnm	5739	37
5893	puf	5740	37
5894	puc	5741	37
5895	puj	5742	37
5896	xpu	5743	37
5897	qxp	5744	37
5898	xpt	5745	37
5899	puu	5746	37
5900	puo	5747	37
5901	puq	5748	37
5902	pru	5749	37
5903	iar	5750	37
5904	tsz	5751	37
5905	prr	5752	37
5906	prx	5753	37
5907	puy	5754	37
5908	suv	5755	37
5909	pur	5756	37
5910	pub	5757	37
5911	mfl	5758	37
5912	put	5759	37
5913	afe	5760	37
5914	xpy	5761	37
5915	xpp	5762	37
5916	pyu	5763	37
5917	pme	5764	37
5918	pop	5765	37
5919	kjp	5766	37
5920	pww	5767	37
5921	pwo	5768	37
5922	pcw	5769	37
5923	pye	5770	37
5924	pyy	5771	37
5925	pyx	5772	37
5926	pby	5773	37
5927	pbb	5774	37
5928	pfa	5775	37
5929	lkr	5776	37
5930	pev	5777	37
5931	lme	5778	37
5932	pko	5779	37
5933	pi	5780	37
5934	pli	5780	37
5935	Pali	5780	37
5936	kjb	5781	37
5937	laq	5782	37
5938	byx	5783	37
5939	qxq	5784	37
5940	xqt	5785	37
5941	gqu	5786	37
5942	alc	5787	37
5943	ymq	5788	37
5944	ahg	5789	37
5945	zqe	5790	37
5946	qua	5791	37
5947	fcs	5792	37
5948	yum	5793	37
5949	que	5794	37
5950	qu	5794	37
5951	qya	5795	37
5952	otq	5796	37
5953	pxm	5797	37
5954	qvy	5798	37
5955	zpj	5799	37
5956	qui	5800	37
5957	qun	5801	37
5958	quq	5802	37
5959	ztq	5803	37
5960	chq	5804	37
5961	qyp	5805	37
5962	rah	5806	37
5963	rad	5807	37
5964	xrr	5808	37
5965	raz	5809	37
5966	mqk	5810	37
5967	raj	5811	37
5968	rjs	5812	37
5969	rji	5813	37
5970	rjg	5814	37
5971	gra	5815	37
5972	rkh	5816	37
5973	rki	5817	37
5974	ral	5818	37
5975	rma	5819	37
5976	rai	5820	37
5977	kjx	5821	37
5978	lje	5822	37
5979	thr	5823	37
5980	rax	5824	37
5981	lag	5825	37
5982	rgk	5826	37
5983	rnl	5827	37
5984	rkt	5828	37
5985	rao	5829	37
5986	ray	5830	37
5987	rap	5831	37
5988	kyx	5832	37
5989	rpt	5833	37
5990	lra	5834	37
5991	rar	5835	37
5992	rac	5836	37
5993	btn	5837	37
5994	rth	5838	37
5995	rtw	5839	37
5996	bgd	5840	37
5997	rau	5841	37
5998	yea	5842	37
5999	rwo	5843	37
6000	raw	5844	37
6001	jnl	5845	37
6002	weu	5846	37
6003	rwa	5847	37
6004	zor	5848	37
6005	rat	5849	37
6006	gir	5850	37
6007	atu	5851	37
6008	rej	5852	37
6009	ree	5853	37
6010	rei	5854	37
6011	bow	5855	37
6012	rmb	5856	37
6013	reb	5857	37
6014	rem	5858	37
6015	agv	5859	37
6016	rmp	5860	37
6017	lkj	5861	37
6018	rel	5862	37
6019	ren	5863	37
6020	mnv	5864	37
6021	rpn	5865	37
6022	rer	5866	37
6023	rea	5867	37
6024	pgk	5868	37
6025	res	5869	37
6026	rgr	5870	37
6027	ret	5871	37
6028	rey	5872	37
6029	ria	5873	37
6030	yin	5874	37
6031	ril	5875	37
6032	ran	5876	37
6033	rir	5877	37
6034	iri	5878	37
6035	rkb	5879	37
6036	bto	5880	37
6037	zar	5881	37
6038	rgu	5882	37
6039	rri	5883	37
6040	rsw	5884	37
6041	rit	5885	37
6042	riu	5886	37
6043	snj	5887	37
6044	lbn	5888	37
6045	rod	5889	37
6046	rhg	5890	37
6047	rmm	5891	37
6048	rgn	5892	37
6049	rmx	5893	37
6050	ron	5894	37
6051	ro	5894	37
6052	rum	5894	37
6053	rms	5895	37
6054	rge	5896	37
6055	rsb	5897	37
6056	rmv	5898	37
6057	rm	5899	37
6058	roh	5899	37
6059	rom	5900	37
6060	rol	5901	37
6061	rof	5902	37
6062	rmk	5903	37
6063	cla	5904	37
6064	rng	5905	37
6065	ror	5906	37
6066	nbu	5907	37
6067	rnp	5908	37
6068	roe	5909	37
6069	rnn	5910	37
6070	rga	5911	37
6071	roo	5912	37
6072	rtm	5913	37
6073	rug	5914	37
6074	pce	5915	37
6075	rdb	5916	37
6076	rui	5917	37
6077	ruh	5918	37
6078	dru	5919	37
6079	ruz	5920	37
6080	rbb	5921	37
6081	klq	5922	37
6082	rou	5923	37
6083	rtc	5924	37
6084	drg	5925	37
6085	rnw	5926	37
6086	bxr	5927	37
6087	ru	5928	37
6088	rus	5928	37
6089	rsl	5929	37
6090	rue	5930	37
6091	rsk	5931	37
6092	rut	5932	37
6093	ruc	5933	37
6094	rnd	5934	37
6095	rwl	5935	37
6096	rwk	5936	37
6097	rsn	5937	37
6098	rcf	5938	37
6099	rzh	5939	37
6100	ksw	5940	37
6101	sax	5941	37
6102	apb	5942	37
6103	snv	5943	37
6104	scq	5944	37
6105	sav	5945	37
6106	raq	5946	37
6107	lsm	5947	37
6108	sxr	5948	37
6109	saa	5949	37
6110	xsa	5950	37
6111	bsy	5951	37
6112	msi	5952	37
6113	sae	5953	37
6114	spy	5954	37
6115	sbv	5955	37
6116	hvn	5956	37
6117	sbo	5957	37
6118	quv	5958	37
6119	sck	5959	37
6120	skb	5960	37
6121	spd	5961	37
6122	saf	5962	37
6123	apz	5963	37
6124	sbk	5964	37
6125	sbm	5965	37
6126	tga	5966	37
6127	ssy	5967	37
6128	saj	5968	37
6129	aec	5969	37
6130	acf	5970	37
6131	xsy	5971	37
6132	sjl	5972	37
6133	sjb	5973	37
6134	sch	5974	37
6135	skg	5975	37
6136	sku	5976	37
6137	skt	5977	37
6138	sak	5978	37
6139	skf	5979	37
6140	szy	5980	37
6141	shq	5981	37
6142	slx	5982	37
6143	slr	5983	37
6144	sgu	5984	37
6145	qxl	5985	37
6146	xmx	5986	37
6147	sau	5987	37
6148	sbe slc Sáliba	5988	37
6149	sln	5989	37
6150	sdz	5990	37
6151	sll	5991	37
6152	loe	5992	37
6153	slj	5993	37
6154	esn	5994	37
6155	snx	5995	37
6156	smp	5996	37
6157	sam	5997	37
6158	tmj	5998	37
6159	ysd	5999	37
6160	syx	6000	37
6161	smx	6001	37
6162	ccg	6002	37
6163	ndi	6003	37
6164	xsb	6004	37
6165	spv	6005	37
6166	xab	6006	37
6167	ssx	6007	37
6168	saq	6008	37
6169	smh	6009	37
6170	smq	6010	37
6171	sm	6011	37
6172	smo	6011	37
6173	sgs	6012	37
6174	swm	6013	37
6175	rav	6014	37
6176	sxm	6015	37
6177	stu	6016	37
6178	smv	6017	37
6179	ztm	6018	37
6180	zpx	6019	37
6181	cuk	6020	37
6182	hve	6021	37
6183	pow	6022	37
6184	hue	6023	37
6185	mat	6024	37
6186	maa	6025	37
6187	poe	6026	37
6188	mjc	6027	37
6189	xtj	6028	37
6190	pps	6029	37
6191	pls	6030	37
6192	trq	6031	37
6193	qvs	6032	37
6194	huv	6033	37
6195	scf	6034	37
6196	mig	6035	37
6197	xtp	6036	37
6198	azg	6037	37
6199	zpf	6038	37
6200	kwy	6039	37
6201	zpt	6040	37
6202	ayn	6041	37
6203	spn	6042	37
6204	sad	6043	37
6205	sng	6044	37
6206	xsn	6045	37
6207	scg	6046	37
6208	snl	6047	37
6209	sxn	6048	37
6210	sgr	6049	37
6211	sgk	6050	37
6212	sgy	6051	37
6213	sag	6052	37
6214	sg	6052	37
6215	nsa	6053	37
6216	snq	6054	37
6217	sbp	6055	37
6218	ysn	6056	37
6219	ysy	6057	37
6220	sny	6058	37
6221	msc	6059	37
6222	ssi	6060	37
6223	san	6061	37
6224	Sanskrit	6061	37
6225	sa	6061	37
6226	Saṁskṛta	6061	37
6227	qxt	6062	37
6228	ztn	6063	37
6229	pca	6064	37
6230	zpn	6065	37
6231	mdv	6066	37
6232	hvv	6067	37
6233	nhz	6068	37
6234	zpi	6069	37
6235	mza	6070	37
6236	cok	6071	37
6237	sat	6072	37
6238	zpr	6073	37
6239	qus	6074	37
6240	zas	6075	37
6241	xsu	6076	37
6242	spr	6077	37
6243	krn	6078	37
6244	spi	6079	37
6245	sps	6080	37
6246	spu	6081	37
6247	spc	6082	37
6248	mwm	6083	37
6249	sre	6084	37
6250	sbz	6085	37
6251	kwg	6086	37
6252	kwv	6087	37
6253	skr	6088	37
6254	srm	6089	37
6255	bps	6090	37
6256	mbs	6091	37
6257	zsa	6092	37
6258	sar	6093	37
6259	srd	6094	37
6260	sc	6094	37
6261	asj	6095	37
6262	srh	6096	37
6263	sdf	6097	37
6264	srs	6098	37
6265	onp	6099	37
6266	swy	6100	37
6267	sdu	6101	37
6268	sra	6102	37
6269	sas	6103	37
6270	sxs	6104	37
6271	sdc	6105	37
6272	stw	6106	37
6273	stq	6107	37
6274	mav	6108	37
6275	sdl	6109	37
6276	psu	6110	37
6277	saz	6111	37
6278	srt	6112	37
6279	mjt	6113	37
6280	sao	6114	37
6281	ssj	6115	37
6282	sdg	6116	37
6283	svs	6117	37
6284	szw	6118	37
6285	swr	6119	37
6286	saw	6120	37
6287	swt	6121	37
6288	swn	6122	37
6289	sxw	6123	37
6290	say	6124	37
6291	pos	6125	37
6292	sco	6126	37
6293	xsc	6127	37
6294	gul	6128	37
6295	kdg	6129	37
6296	sgw	6130	37
6297	sbx	6131	37
6298	sib	6132	37
6299	sec	6133	37
6300	sey	6134	37
6301	sed	6135	37
6302	trv	6136	37
6303	tvw	6137	37
6304	sos	6138	37
6305	sge	6139	37
6306	seg	6140	37
6307	sbg	6141	37
6308	sfw	6142	37
6309	ssg	6143	37
6310	hik	6144	37
6311	sek	6145	37
6312	skp	6146	37
6313	skz	6147	37
6314	skj	6148	37
6315	ske	6149	37
6316	vaj	6150	37
6317	syi	6151	37
6318	skx	6152	37
6319	sko	6153	37
6320	lip	6154	37
6321	kgi	6155	37
6322	slu	6156	37
6323	sly	6157	37
6324	snw	6158	37
6325	spl	6159	37
6326	sxl	6160	37
6327	sel	6161	37
6328	slg	6162	37
6329	sws	6163	37
6330	sea	6164	37
6331	sdq	6165	37
6332	szc	6166	37
6333	sbr	6167	37
6334	sza	6168	37
6335	etz	6169	37
6336	ssm	6170	37
6337	smy	6171	37
6338	xse	6172	37
6339	seh	6173	37
6340	seq	6174	37
6341	syn	6175	37
6342	sej	6176	37
6343	see	6177	37
6344	sds	6178	37
6345	szg	6179	37
6346	snu	6180	37
6347	spk	6181	37
6348	ssz	6182	37
6349	sjs	6183	37
6350	sni	6184	37
6351	set	6185	37
6352	sez	6186	37
6353	std	6187	37
6354	spb	6188	37
6355	spe	6189	37
6356	iws	6190	37
6357	sry	6191	37
6358	scc	6192	37
6359	sr	6192	37
6360	srp	6192	37
6361	hbs	6193	37
6362	swf	6194	37
6363	srr	6195	37
6364	sei	6196	37
6365	sve	6197	37
6366	kqu	6198	37
6367	ser	6199	37
6368	srw	6200	37
6369	srk	6201	37
6370	seu	6202	37
6371	crs	6203	37
6372	stf	6204	37
6373	stm	6205	37
6374	sbi	6206	37
6375	sta	6207	37
6376	ojs	6208	37
6377	sew	6209	37
6378	lsw	6210	37
6379	sze	6211	37
6380	scw	6212	37
6381	sdb	6213	37
6382	srz	6214	37
6383	shm	6215	37
6384	sha	6216	37
6385	sqa	6217	37
6386	xsh	6218	37
6387	ksb	6219	37
6388	shn	6220	37
6389	swo	6221	37
6390	sho	6222	37
6391	mcd	6223	37
6392	ssv	6224	37
6393	swq	6225	37
6394	sht	6226	37
6395	shj	6227	37
6396	sqh	6228	37
6397	sjw	6229	37
6398	shx	6230	37
6399	shv	6231	37
6400	swv	6232	37
6401	moy	6233	37
6402	she	6234	37
6403	sth	6235	37
6404	seb	6236	37
6405	shl	6237	37
6406	scv	6238	37
6407	bun	6239	37
6408	sdp	6240	37
6409	xsr	6241	37
6410	kip	6242	37
6411	shr	6243	37
6412	ssh	6244	37
6413	gua	6245	37
6414	shk	6246	37
6415	scl	6247	37
6416	shp	6248	37
6417	sle	6249	37
6418	sii	6250	37
6419	sna	6251	37
6420	sn	6251	37
6421	bcv	6252	37
6422	cjs	6253	37
6423	shh	6254	37
6424	shg	6255	37
6425	sdt	6256	37
6426	jiv	6257	37
6427	suj	6258	37
6428	sgh	6259	37
6429	sxg	6260	37
6430	sts	6261	37
6431	scu	6262	37
6432	shs	6263	37
6433	shw	6264	37
6434	pll	6265	37
6435	slw	6266	37
6436	sif	6267	37
6437	spg	6268	37
6438	snp	6269	37
6439	sya	6270	37
6440	sjr	6271	37
6441	mmp	6272	37
6442	nco	6273	37
6443	sty	6274	37
6444	sdx	6275	37
6445	sxc	6276	37
6446	scx	6277	37
6447	scn	6278	37
6448	sqr	6279	37
6449	sid	6280	37
6450	xsd	6281	37
6451	erg	6282	37
6452	sgx	6283	37
6453	nsu	6284	37
6454	zaa	6285	37
6455	sxe	6286	37
6456	snr	6287	37
6457	qws	6288	37
6458	ski	6289	37
6459	sky	6290	37
6460	tty	6291	37
6461	sik	6292	37
6462	sip	6293	37
6463	bla	6294	37
6464	skh	6295	37
6465	slt	6296	37
6466	mks	6297	37
6467	sbq	6298	37
6468	szl	6299	37
6469	wul	6300	37
6470	mkc	6301	37
6471	xsp	6302	37
6472	stv	6303	37
6473	sie	6304	37
6474	sbw	6305	37
6475	smg	6306	37
6476	smb	6307	37
6477	sbb	6308	37
6478	smz	6309	37
6479	smr	6310	37
6480	smt	6311	37
6481	siu	6312	37
6482	sst	6313	37
6483	snc	6314	37
6484	sjn	6315	37
6485	sd	6316	37
6486	snd	6316	37
6487	sbn	6317	37
6488	xts	6318	37
6489	sgm	6319	37
6490	sls	6320	37
6491	sgp	6321	37
6492	si	6322	37
6493	Sinhalese	6322	37
6494	sin	6322	37
6495	Sinhala	6322	37
6496	xti	6323	37
6497	skq	6324	37
6498	rmo	6325	37
6499	sys	6326	37
6500	xsi	6327	37
6501	snn	6328	37
6502	qum	6329	37
6503	swj	6330	37
6504	fos	6331	37
6505	ysr	6332	37
6506	sir	6333	37
6507	sri	6334	37
6508	srq	6335	37
6509	srx	6336	37
6510	ssd	6337	37
6511	sld	6338	37
6512	sso	6339	37
6513	sis	6340	37
6514	siy	6341	37
6515	lsv	6342	37
6516	siw	6343	37
6517	siz	6344	37
6518	akp	6345	37
6519	csy	6346	37
6520	ska	6347	37
6521	svx	6348	37
6522	skw	6349	37
6523	sms	6350	37
6524	skv	6351	37
6525	den	6352	37
6526	svm	6353	37
6527	slk	6354	37
6528	sk	6354	37
6529	slo	6354	37
6530	svk	6355	37
6531	Slovene	6356	37
6532	sl	6356	37
6533	slv	6356	37
6534	Slovenian	6356	37
6535	sfm	6357	37
6536	kxq	6358	37
6537	sno	6359	37
6538	soc	6360	37
6539	ssq	6361	37
6540	sob	6362	37
6541	cso	6363	37
6542	xog	6364	37
6543	sog	6365	37
6544	soj	6366	37
6545	sok	6367	37
6546	xso	6368	37
6547	sby	6369	37
6548	szs	6370	37
6549	aaw	6371	37
6550	sol	6372	37
6551	smc	6373	37
6552	so	6374	37
6553	som	6374	37
6554	bmu	6375	37
6555	sor	6376	37
6556	smu	6377	37
6557	kgt	6378	37
6558	ysg	6379	37
6559	shc	6380	37
6560	sop	6381	37
6561	csj	6382	37
6562	soo	6383	37
6563	soe	6384	37
6564	sod	6385	37
6565	soi	6386	37
6566	siq	6387	37
6567	snk	6388	37
6568	sov	6389	37
6569	teu	6390	37
6570	urw	6391	37
6571	sqt	6392	37
6572	srb	6393	37
6573	sbh	6394	37
6574	sqo	6395	37
6575	sxo	6396	37
6576	ays	6397	37
6577	sdk	6398	37
6578	krz	6399	37
6579	sqq	6400	37
6580	tlt	6401	37
6581	wha	6402	37
6582	sfs	6403	37
6583	aws	6404	37
6584	azb	6405	37
6585	quh	6406	37
6586	lnl	6407	37
6587	dib	6408	37
6588	erk	6409	37
6589	fal	6410	37
6590	giz	6411	37
6591	lmf	6412	37
6592	mqm	6413	37
6593	kts	6414	37
6594	nxl	6415	37
6595	spx	6416	37
6596	xsl	6417	37
6597	omw	6418	37
6598	cpy	6419	37
6599	mcy	6420	37
6600	sns	6421	37
6601	tvk	6422	37
6602	vbb	6423	37
6603	ijs	6424	37
6604	psi	6425	37
6605	xpf	6426	37
6606	dks	6427	37
6607	zpd	6428	37
6608	nit	6429	37
6609	mxy	6430	37
6610	pom	6431	37
6611	npl	6432	37
6612	tcu	6433	37
6613	stp	6434	37
6614	agy	6435	37
6615	alt	6436	37
6616	ams	6437	37
6617	ayc	6438	37
6618	bfs	6439	37
6619	bcc	6440	37
6620	bzc	6441	37
6621	mtw	6442	37
6622	biv	6443	37
6623	bwq	6444	37
6624	obk	6445	37
6625	caf	6446	37
6626	bln	6447	37
6627	qxo	6448	37
6628	dga	6449	37
6629	kmc	6450	37
6630	crj	6451	37
6631	ghe	6452	37
6632	grj	6453	37
6633	hmy	6454	37
6634	hax	6455	37
6635	hnd	6456	37
6636	sxk	6457	37
6637	ksc	6458	37
6638	sct	6459	37
6639	kss	6460	37
6640	kjd	6461	37
6641	sdh	6462	37
6642	ysp	6463	37
6643	luz	6464	37
6644	snm	6465	37
6645	hma	6466	37
6646	mnn	6467	37
6647	ymc	6468	37
6648	nqg	6469	37
6649	nab	6470	37
6650	South Ndebele	6471	37
6651	nr	6471	37
6652	nbl	6471	37
6653	nbw	6472	37
6654	nik	6473	37
6655	nsd	6474	37
6656	nnw	6475	37
6657	css	6476	37
6658	osu	6477	37
6659	pmz	6478	37
6660	pbt	6479	37
6661	qup	6480	37
6662	csp	6481	37
6663	peq	6482	37
6664	mit	6483	37
6665	slh	6484	37
6666	pmj	6485	37
6667	hms	6486	37
6668	qxs	6487	37
6669	nre	6488	37
6670	zsr	6489	37
6671	rgs	6490	37
6672	ssb	6491	37
6673	sma	6492	37
6674	sbd	6493	37
6675	skd	6494	37
6676	srv	6495	37
6677	st	6496	37
6678	sot	6496	37
6679	laa	6497	37
6680	sou	6498	37
6681	itd	6499	37
6682	tix	6500	37
6683	wib	6501	37
6684	tjs	6502	37
6685	tce	6503	37
6686	uzs	6504	37
6687	lrr	6505	37
6688	yux	6506	37
6689	gso	6507	37
6690	plv	6508	37
6691	psh	6509	37
6692	nwi	6510	37
6693	vbk	6511	37
6694	dik	6512	37
6695	fay	6513	37
6696	hmg	6514	37
6697	hmh	6515	37
6698	nsv	6516	37
6699	twr	6517	37
6700	xpx	6518	37
6701	tla	6519	37
6702	meh	6520	37
6703	sww	6521	37
6704	sow	6522	37
6705	vmp	6523	37
6706	vmq	6524	37
6707	ssp	6525	37
6708	es	6526	37
6709	Castilian	6526	37
6710	spa	6526	37
6711	Spanish	6526	37
6712	spt	6527	37
6713	spo	6528	37
6714	squ	6529	37
6715	srn	6530	37
6716	sci	6531	37
6717	sqs	6532	37
6718	arb	6533	37
6719	ekk	6534	37
6720	lvs	6535	37
6721	zsm	6536	37
6722	zgh	6537	37
6723	stl	6538	37
6724	sbu	6539	37
6725	sto	6540	37
6726	str	6541	37
6727	szp	6542	37
6728	seo	6543	37
6729	swp	6544	37
6730	sxb	6545	37
6731	ssc	6546	37
6732	xsj	6547	37
6733	sbs	6548	37
6734	sut	6549	37
6735	apd	6550	37
6736	pga	6551	37
6737	tgo	6552	37
6738	xsv	6553	37
6739	sue	6554	37
6740	sgi	6555	37
6741	sug	6556	37
6742	kzs	6557	37
6743	swi	6558	37
6744	sui	6559	37
6745	sub	6560	37
6746	suk	6561	37
6747	syk	6562	37
6748	zsu	6563	37
6749	szn	6564	37
6750	sua	6565	37
6751	srg	6566	37
6752	sqm	6567	37
6753	siv	6568	37
6754	six	6569	37
6755	smw	6570	37
6756	suw	6571	37
6757	sux	6572	37
6758	nsm	6573	37
6759	csv	6574	37
6760	ssk	6575	37
6761	sun	6576	37
6762	su	6576	37
6763	suz	6577	37
6764	syo	6578	37
6765	spp	6579	37
6766	tdl	6580	37
6767	sbj	6581	37
6768	sgj	6582	37
6769	sgd	6583	37
6770	sjp	6584	37
6771	sgz	6585	37
6772	swx	6586	37
6773	sde	6587	37
6774	sru	6588	37
6775	mdz	6589	37
6776	sqn	6590	37
6777	sus	6591	37
6778	ssu	6592	37
6779	sdj	6593	37
6780	swu	6594	37
6781	suy	6595	37
6782	sva	6596	37
6783	swg	6597	37
6784	sw	6598	37
6785	Swahili (macrolanguage)	6598	37
6786	swa	6598	37
6787	swh	6599	37
6788	csw	6600	37
6789	ssw	6601	37
6790	ss	6601	37
6791	swe	6602	37
6792	sv	6602	37
6793	swl	6603	37
6794	gsw	6604	37
6795	ssr	6605	37
6796	sgg	6606	37
6797	slf	6607	37
6798	sox	6608	37
6799	shz	6609	37
6800	syl	6610	37
6801	syr	6611	37
6802	zkp	6612	37
6803	cri	6613	37
6804	sep	6614	37
6805	sss	6615	37
6806	lgn	6616	37
6807	tct	6617	37
6808	acq	6618	37
6809	tap	6619	37
6810	zat	6620	37
6811	tby	6621	37
6812	chf	6622	37
6813	nhc	6623	37
6814	zoq	6624	37
6815	tab	6625	37
6816	tnm	6626	37
6817	knv	6627	37
6818	tzx	6628	37
6819	xtt	6629	37
6820	tna	6630	37
6821	shy	6631	37
6822	shi	6632	37
6823	lts	6633	37
6824	dsq	6634	37
6825	klw	6635	37
6826	tdy	6636	37
6827	rob	6637	37
6828	tcd	6638	37
6829	bgs	6639	37
6830	klg	6640	37
6831	mvv	6641	37
6832	tgz	6642	37
6833	tgl	6643	37
6834	tl	6643	37
6835	oua	6644	37
6836	tbw	6645	37
6837	tbm	6646	37
6838	tda	6647	37
6839	tgj	6648	37
6840	tgx	6649	37
6841	tag	6650	37
6842	tgw	6651	37
6843	thv	6652	37
6844	tah	6653	37
6845	ty	6653	37
6846	tht	6654	37
6847	taw	6655	37
6848	tyr	6656	37
6849	blt	6657	37
6850	tyj	6658	37
6851	twh	6659	37
6852	tiz	6660	37
6853	tjl	6661	37
6854	tlq	6662	37
6855	thi	6663	37
6856	tdd	6664	37
6857	tpo	6665	37
6858	tmm	6666	37
6859	cuu	6667	37
6860	gpn	6668	37
6861	aos	6669	37
6862	ago	6670	37
6863	tnq	6671	37
6864	bxa	6672	37
6865	uar	6673	37
6866	dav	6674	37
6867	tvx	6675	37
6868	tss	6676	37
6869	pee	6677	37
6870	tgk	6678	37
6871	tg	6678	37
6872	abh	6679	37
6873	tdj	6680	37
6874	tja	6681	37
6875	tkm	6682	37
6876	tks	6683	37
6877	tbc	6684	37
6878	tkz	6685	37
6879	nho	6686	37
6880	tke	6687	37
6881	tal	6688	37
6882	tak	6689	37
6883	tld	6690	37
6884	tlv	6691	37
6885	tdf	6692	37
6886	tlj	6693	37
6887	tlr	6694	37
6888	tlo	6695	37
6889	tlk	6696	37
6890	tln	6697	37
6891	tzl	6698	37
6892	yta	6699	37
6893	tly	6700	37
6894	tma	6701	37
6895	ten	6702	37
6896	tcg	6703	37
6897	tmn	6704	37
6898	tcl	6705	37
6899	tmz	6706	37
6900	tmh	6707	37
6901	taq	6708	37
6902	vmx	6709	37
6903	tdk	6710	37
6904	xxt	6711	37
6905	tls	6712	37
6906	tmy	6713	37
6907	ta	6714	37
6908	tam	6714	37
6909	tax	6715	37
6910	tml	6716	37
6911	low	6717	37
6912	tpu	6718	37
6913	tpm	6719	37
6914	tcb	6720	37
6915	tcm	6721	37
6916	tfn	6722	37
6917	tpv	6723	37
6918	tgn	6724	37
6919	tni	6725	37
6920	tdx	6726	37
6921	tnx	6727	37
6922	tan	6728	37
6923	tnv	6729	37
6924	tgu	6730	37
6925	nmf	6731	37
6926	ntx	6732	37
6927	tkx	6733	37
6928	ytl	6734	37
6929	tgp	6735	37
6930	tbs	6736	37
6931	txg	6737	37
6932	tbe	6738	37
6933	tnc	6739	37
6934	uji	6740	37
6935	txy	6741	37
6936	kml	6742	37
6937	tza	6743	37
6938	afp	6744	37
6939	tpj	6745	37
6940	taf	6746	37
6941	tro	6747	37
6942	tgr	6748	37
6943	tae	6749	37
6944	rif	6750	37
6945	txj	6751	37
6946	yer	6752	37
6947	tpf	6753	37
6948	txr	6754	37
6949	tdm	6755	37
6950	twq	6756	37
6951	nst	6757	37
6952	tmt	6758	37
6953	cta	6759	37
6954	txx	6760	37
6955	tt	6761	37
6956	tat	6761	37
6957	tav	6762	37
6958	ttd	6763	37
6959	tuh	6764	37
6960	tco	6765	37
6961	tpa	6766	37
6962	tad	6767	37
6963	trr	6768	37
6964	tsg	6769	37
6965	tya	6770	37
6966	tvs	6771	37
6967	tvn	6772	37
6968	rmu	6773	37
6969	tbo	6774	37
6970	ttq	6775	37
6971	xtw	6776	37
6972	twm	6777	37
6973	twl	6778	37
6974	tbp	6779	37
6975	twy	6780	37
6976	tcp	6781	37
6977	tas	6782	37
6978	tnu	6783	37
6979	thz	6784	37
6980	cks	6785	37
6981	grr	6786	37
6982	tbl	6787	37
6983	tck	6788	37
6984	bqa	6789	37
6985	tve	6790	37
6986	tkw	6791	37
6987	tsy	6792	37
6988	dtu	6793	37
6989	tcw	6794	37
6990	tuq	6795	37
6991	ctd	6796	37
6992	tkq	6797	37
6993	tfo	6798	37
6994	ras	6799	37
6995	kps	6800	37
6996	teh	6801	37
6997	ztt	6802	37
6998	ebo	6803	37
6999	ifm	6804	37
7000	kkw	6805	37
7001	lli	6806	37
7002	nzu	6807	37
7003	teg	6808	37
7004	tyi	6809	37
7005	tyx	6810	37
7006	ttc	6811	37
7007	tvm	6812	37
7008	tlf	6813	37
7009	te	6814	37
7010	tel	6814	37
7011	kdh	6815	37
7012	tjo	6816	37
7013	nhv	6817	37
7014	tbt	6818	37
7015	tmv	6819	37
7016	tqb	6820	37
7017	tdo	6821	37
7018	teq	6822	37
7019	soz	6823	37
7020	tea	6824	37
7021	ott	6825	37
7022	tmo	6826	37
7023	tmw	6827	37
7024	tnz	6828	37
7025	quw	6829	37
7026	otn	6830	37
7027	dtk	6831	37
7028	vkt	6832	37
7029	tes	6833	37
7030	pah	6834	37
7031	tqn	6835	37
7032	tns	6836	37
7033	tex	6837	37
7034	tio	6838	37
7035	tev	6839	37
7036	tep	6840	37
7037	cnt	6841	37
7038	cux	6842	37
7039	cte	6843	37
7040	ted	6844	37
7041	sjt	6845	37
7042	ttr	6846	37
7043	trb	6847	37
7044	buo	6848	37
7045	ter	6849	37
7046	tef	6850	37
7047	twg	6851	37
7048	tfr	6852	37
7049	tec	6853	37
7050	twu	6854	37
7051	tft	6855	37
7052	tmg	6856	37
7053	tkg	6857	37
7054	keg	6858	37
7055	twc	6859	37
7056	teo	6860	37
7057	tll	6861	37
7058	nhg	6862	37
7059	teb	6863	37
7060	tez	6864	37
7061	tet	6865	37
7062	tdt	6866	37
7063	cut	6867	37
7064	twe	6868	37
7065	tew	6869	37
7066	twx	6870	37
7067	otx	6871	37
7068	poq	6872	37
7069	zpz	6873	37
7070	mxb	6874	37
7071	thy	6875	37
7072	thn	6876	37
7073	tcz	6877	37
7074	th	6878	37
7075	tha	6878	37
7076	tsq	6879	37
7077	soa	6880	37
7078	cth	6881	37
7079	ths	6882	37
7080	nki	6883	37
7081	thf	6884	37
7082	ssf	6885	37
7083	thk	6886	37
7084	xtv	6887	37
7085	typ	6888	37
7086	iin	6889	37
7087	tou	6890	37
7088	thp	6891	37
7089	ytp	6892	37
7090	txh	6893	37
7091	tyl	6894	37
7092	tdh	6895	37
7093	lth	6896	37
7094	thu	6897	37
7095	ahi	6898	37
7096	mnl	6899	37
7097	tbj	6900	37
7098	ngy	6901	37
7099	lsn	6902	37
7100	Tibetan	6903	37
7101	bod	6903	37
7102	tib	6903	37
7103	Tibetan Central	6903	37
7104	bo	6903	37
7105	Tibetan Standard	6903	37
7106	tcn	6904	37
7107	tca	6905	37
7108	mtx	6906	37
7109	tia	6907	37
7110	tvo	6908	37
7111	boo	6909	37
7112	tii	6910	37
7113	tif	6911	37
7114	tgc	6912	37
7115	nza	6913	37
7116	tig	6914	37
7117	ti	6915	37
7118	tir	6915	37
7119	txq	6916	37
7120	xtl	6917	37
7121	tik	6918	37
7122	tkp	6919	37
7123	otl	6920	37
7124	til	6921	37
7125	zts	6922	37
7126	tij	6923	37
7127	tms	6924	37
7128	tim	6925	37
7129	tem	6926	37
7130	tvy	6927	37
7131	tjm	6928	37
7132	tih	6929	37
7133	lbf	6930	37
7134	tin	6931	37
7135	tgv	6932	37
7136	tit	6933	37
7137	tpz	6934	37
7138	tpe	6935	37
7139	tic	6936	37
7140	tra	6937	37
7141	tde	6938	37
7142	cir	6939	37
7143	suq	6940	37
7144	tiy	6941	37
7145	tdq	6942	37
7146	ttv	6943	37
7147	tiv	6944	37
7148	lax	6945	37
7149	tiw	6946	37
7150	tyy	6947	37
7151	tiq	6948	37
7152	boz	6949	37
7153	tjj	6950	37
7154	tjp	6951	37
7155	tju	6952	37
7156	tpt	6953	37
7157	tpl	6954	37
7158	ctl	6955	37
7159	zpk	6956	37
7160	mxp	6957	37
7161	nuz	6958	37
7162	mqh	6959	37
7163	dgr	6960	37
7164	tli	6961	37
7165	toz	6962	37
7166	mlu	6963	37
7167	tqo	6964	37
7168	tob	6965	37
7169	tmf	6966	37
7170	tgh	6967	37
7171	tng	6968	37
7172	tti	6969	37
7173	tlb	6970	37
7174	tox	6971	37
7175	tgb	6972	37
7176	tbv	6973	37
7177	asu	6974	37
7178	taz	6975	37
7179	tcx	6976	37
7180	tdr	6977	37
7181	tlg	6978	37
7182	tfi	6979	37
7183	tor	6980	37
7184	tgy	6981	37
7185	ood	6982	37
7186	toj	6983	37
7187	tpi	6984	37
7188	zuh	6985	37
7189	tkl	6986	37
7190	xto	6987	37
7191	txb	6988	37
7192	tok	6989	37
7193	tkn	6990	37
7194	jic	6991	37
7195	lbw	6992	37
7196	tlm	6993	37
7197	tol	6994	37
7198	tod	6995	37
7199	tdi	6996	37
7200	ttp	6997	37
7201	txa	6998	37
7202	tom	6999	37
7203	txm	7000	37
7204	dto	7001	37
7205	dtm	7002	37
7206	tqp	7003	37
7207	tdn	7004	37
7208	tst	7005	37
7209	tog	7006	37
7210	ton	7007	37
7211	to	7007	37
7212	Tonga	7007	37
7213	toi	7008	37
7214	tny	7009	37
7215	tjn	7010	37
7216	tqw	7011	37
7217	tnw	7012	37
7218	txs	7013	37
7219	tnt	7014	37
7220	ttj	7015	37
7221	toy	7016	37
7222	toq	7017	37
7223	sda	7018	37
7224	trj	7019	37
7225	ttu	7020	37
7226	fit	7021	37
7227	tdv	7022	37
7228	dts	7023	37
7229	dtt	7024	37
7230	tno	7025	37
7231	tqr	7026	37
7232	tcs	7027	37
7233	tei	7028	37
7234	trw	7029	37
7235	trz	7030	37
7236	als	7031	37
7237	ttl	7032	37
7238	txo	7033	37
7239	txe	7034	37
7240	zph	7035	37
7241	mto	7036	37
7242	ttk	7037	37
7243	tqu	7038	37
7244	neb	7039	37
7245	don	7040	37
7246	ttn	7041	37
7247	xtg	7042	37
7248	rmd	7043	37
7249	rmg	7044	37
7250	trl	7045	37
7251	trm	7046	37
7252	tme	7047	37
7253	stg	7048	37
7254	tip	7049	37
7255	tgq	7050	37
7256	trx	7051	37
7257	lst	7052	37
7258	trf	7053	37
7259	trn	7054	37
7260	tri	7055	37
7261	tka	7056	37
7262	tpy	7057	37
7263	tsl	7058	37
7264	tsa	7059	37
7265	tkr	7060	37
7266	tsd	7061	37
7267	kvz	7062	37
7268	tsb	7063	37
7269	huq	7064	37
7270	tsk	7065	37
7271	txc	7066	37
7272	tsj	7067	37
7273	kdl	7068	37
7274	cas	7069	37
7275	xmw	7070	37
7276	tsi	7071	37
7277	tsw	7072	37
7278	ldp	7073	37
7279	hio	7074	37
7280	tsv	7075	37
7281	ts	7076	37
7282	tso	7076	37
7283	lto	7077	37
7284	tsu	7078	37
7285	cbq	7079	37
7286	ttz	7080	37
7287	tvd	7081	37
7288	tsh	7082	37
7289	tsc	7083	37
7290	tsn	7084	37
7291	tn	7084	37
7292	two	7085	37
7293	mjg	7086	37
7294	pmt	7087	37
7295	tbu	7088	37
7296	tuo	7089	37
7297	tuy	7090	37
7298	tzn	7091	37
7299	tuj	7092	37
7300	khc	7093	37
7301	bhq	7094	37
7302	bag	7095	37
7303	tpq	7096	37
7304	tkd	7097	37
7305	tkf	7098	37
7306	tul	7099	37
7307	tvi	7100	37
7308	tlu	7101	37
7309	tey	7102	37
7310	tcy	7103	37
7311	rak	7104	37
7312	iou	7105	37
7313	tmc	7106	37
7314	krt	7107	37
7315	tum	7108	37
7316	kku	7109	37
7317	tmq	7110	37
7318	xtq	7111	37
7319	tbr	7112	37
7320	sil	7113	37
7321	mzb	7114	37
7322	enh	7115	37
7323	tvu	7116	37
7324	lcm	7117	37
7325	trt	7118	37
7326	tug	7119	37
7327	tun	7120	37
7328	aeb	7121	37
7329	tse	7122	37
7330	tjg	7123	37
7331	tqq	7124	37
7332	dza	7125	37
7333	ttf	7126	37
7334	tpr	7127	37
7335	tpn	7128	37
7336	tpk	7129	37
7337	tui	7130	37
7338	trh	7131	37
7339	trd	7132	37
7340	twt	7133	37
7341	tuz	7134	37
7342	tuv	7135	37
7343	tur	7136	37
7344	tr	7136	37
7345	tsm	7137	37
7346	tk	7138	37
7347	tuk	7138	37
7348	tch	7139	37
7349	tru	7140	37
7350	tqm	7141	37
7351	try	7142	37
7352	tus	7143	37
7353	tta	7144	37
7354	ttg	7145	37
7355	tvt	7146	37
7356	tmi	7147	37
7357	mtu	7148	37
7358	tuu	7149	37
7359	tvl	7150	37
7360	tyv	7151	37
7361	ifk	7152	37
7362	tww	7153	37
7363	bov	7154	37
7364	tux	7155	37
7365	tud	7156	37
7366	tue	7157	37
7367	twa	7158	37
7368	twn	7159	37
7369	twd	7160	37
7370	twi	7161	37
7371	tw	7161	37
7372	kcg	7162	37
7373	tzj	7163	37
7374	tzh	7164	37
7375	tzo	7165	37
7376	tyz	7166	37
7377	tys	7167	37
7378	tyt	7168	37
7379	lor	7169	37
7380	tub	7170	37
7381	uuu	7171	37
7382	aoz	7172	37
7383	uam	7173	37
7384	ksj	7174	37
7385	byc	7175	37
7386	uba	7176	37
7387	ubi	7177	37
7388	ubr	7178	37
7389	uby	7179	37
7390	cpb	7180	37
7391	uda	7181	37
7392	udi	7182	37
7393	ude	7183	37
7394	udm	7184	37
7395	udu	7185	37
7396	ufi	7186	37
7397	ugn	7187	37
7398	uga	7188	37
7399	uge	7189	37
7400	ugo	7190	37
7401	uha	7191	37
7402	Uyghur	7192	37
7403	Uighur	7192	37
7404	ug	7192	37
7405	uig	7192	37
7406	uis	7193	37
7407	udj	7194	37
7408	kcf	7195	37
7409	ukh	7196	37
7410	umi	7197	37
7411	ukp	7198	37
7412	akd	7199	37
7413	ukr	7200	37
7414	uk	7200	37
7415	ukl	7201	37
7416	uku	7202	37
7417	ukg	7203	37
7418	ukq	7204	37
7419	ukw	7205	37
7420	svb	7206	37
7421	ulc	7207	37
7422	uli	7208	37
7423	ull	7209	37
7424	ulb	7210	37
7425	ulm	7211	37
7426	ulw	7212	37
7427	ppk	7213	37
7428	xky	7214	37
7429	ulu	7215	37
7430	gdn	7216	37
7431	uma	7217	37
7432	umd	7218	37
7433	xum	7219	37
7434	ubu	7220	37
7435	umr	7221	37
7436	umb	7222	37
7437	sju	7223	37
7438	upi	7224	37
7439	xud	7225	37
7440	due	7226	37
7441	umm	7227	37
7442	umo	7228	37
7443	ump	7229	37
7444	mtg	7230	37
7445	unm	7231	37
7446	mis	7232	37
7447	unz	7233	37
7448	und	7234	37
7449	bbn	7235	37
7450	une	7236	37
7451	xun	7237	37
7452	xgu	7238	37
7453	uni	7239	37
7454	uln	7240	37
7455	onu	7241	37
7456	unu	7242	37
7457	cjh	7243	37
7458	dna	7244	37
7459	pov	7245	37
7460	dmg	7246	37
7461	kuu	7247	37
7462	tku	7248	37
7463	sxu	7249	37
7464	hsb	7250	37
7465	tth	7251	37
7466	tau	7252	37
7467	tov	7253	37
7468	xup	7254	37
7469	uro	7255	37
7470	uur	7256	37
7471	urf	7257	37
7472	urk	7258	37
7473	url	7259	37
7474	urm	7260	37
7475	ura	7261	37
7476	xur	7262	37
7477	urt	7263	37
7478	urd	7264	37
7479	ur	7264	37
7480	urh	7265	37
7481	uvh	7266	37
7482	urg	7267	37
7483	uri	7268	37
7484	urx	7269	37
7485	upv	7270	37
7486	urc	7271	37
7487	ure	7272	37
7488	urz	7273	37
7489	urp	7274	37
7490	urn	7275	37
7491	urv	7276	37
7492	urb	7277	37
7493	uks	7278	37
7494	ugy	7279	37
7495	uum	7280	37
7496	uru	7281	37
7497	usk	7282	37
7498	wnu	7283	37
7499	usa	7284	37
7500	ush	7285	37
7501	cuc	7286	37
7502	ulf	7287	37
7503	usp	7288	37
7504	usi	7289	37
7505	omo	7290	37
7506	ute	7291	37
7507	utu	7292	37
7508	evh	7293	37
7509	usu	7294	37
7510	duk	7295	37
7511	uz	7296	37
7512	uzb	7296	37
7513	auz	7297	37
7514	eze	7298	37
7515	vaa	7299	37
7516	vaf	7300	37
7517	vgr	7301	37
7518	tva	7302	37
7519	vag	7303	37
7520	vai	7304	37
7521	vap	7305	37
7522	vae	7306	37
7523	vsv	7307	37
7524	cvn	7308	37
7525	vmv	7309	37
7526	van	7310	37
7527	vlp	7311	37
7528	mkt	7312	37
7529	mlr	7313	37
7530	xvn	7314	37
7531	mpr	7315	37
7532	vam	7316	37
7533	vnk	7317	37
7534	vau	7318	37
7535	vao	7319	37
7536	vah	7320	37
7537	vrs	7321	37
7538	vav	7322	37
7539	vas	7323	37
7540	ved	7324	37
7541	vsn	7325	37
7542	val	7326	37
7543	vel	7327	37
7544	vem	7328	37
7545	ven	7329	37
7546	ve	7329	37
7547	vec	7330	37
7548	xve	7331	37
7549	vsl	7332	37
7550	bav	7333	37
7551	veo	7334	37
7552	vep	7335	37
7553	vra	7336	37
7554	xvs	7337	37
7555	vid	7338	37
7556	vig	7339	37
7557	vie	7340	37
7558	vi	7340	37
7559	vil	7341	37
7560	vif	7342	37
7561	dyg	7343	37
7562	svc	7344	37
7563	vnm	7345	37
7564	vin	7346	37
7565	vic	7347	37
7566	vis	7348	37
7567	vit	7349	37
7568	vto	7350	37
7569	wiv	7351	37
7570	vls	7352	37
7571	vgt	7353	37
7572	rmy	7354	37
7573	vo	7355	37
7574	vol	7355	37
7575	xvo	7356	37
7576	kch	7357	37
7577	vor vro Võro	7358	37
7578	vot	7359	37
7579	vum	7360	37
7580	vnp	7361	37
7581	vun	7362	37
7582	msn	7363	37
7583	vut	7364	37
7584	wbi	7365	37
7585	wbm	7366	37
7586	wag	7367	37
7587	wwa	7368	37
7588	wmn	7369	37
7589	ssn	7370	37
7590	wab	7371	37
7591	wbb	7372	37
7592	kmx	7373	37
7593	wci	7374	37
7594	wdg	7375	37
7595	wbq	7376	37
7596	xwd	7377	37
7597	wdk	7378	37
7598	kxp	7379	37
7599	wdy	7380	37
7600	wdj	7381	37
7601	wdu	7382	37
7602	wrx	7383	37
7603	waj	7384	37
7604	wgb	7385	37
7605	wga	7386	37
7606	wbr	7387	37
7607	fad	7388	37
7608	waq	7389	37
7609	whu	7390	37
7610	whk	7391	37
7611	wgi	7392	37
7612	wbk	7393	37
7613	wgo	7394	37
7614	wlk	7395	37
7615	wlr	7396	37
7616	rro	7397	37
7617	wmh	7398	37
7618	bao	7399	37
7619	atr	7400	37
7620	wli	7401	37
7621	waw	7402	37
7622	wja	7403	37
7623	wbv	7404	37
7624	xwj	7405	37
7625	wav	7406	37
7626	wwb	7407	37
7627	wkw	7408	37
7628	wkd	7409	37
7629	wbl	7410	37
7630	waf	7411	37
7631	lgl	7412	37
7632	wlw	7413	37
7633	nlw	7414	37
7634	wlx	7415	37
7635	wll	7416	37
7636	wly	7417	37
7637	wla	7418	37
7638	waa	7419	37
7639	wls	7420	37
7640	wa	7421	37
7641	wln	7421	37
7642	wmt	7422	37
7643	wae	7423	37
7644	ola	7424	37
7645	wrb	7425	37
7646	wmc	7426	37
7647	wmb	7427	37
7648	wms	7428	37
7649	wme	7429	37
7650	wad	7430	37
7651	cou	7431	37
7652	wmi	7432	37
7653	wam	7433	37
7654	lbq	7434	37
7655	waz	7435	37
7656	wan	7436	37
7657	wnp	7437	37
7658	nnp	7438	37
7659	wbh	7439	37
7660	mfi	7440	37
7661	wnd	7441	37
7662	wdd	7442	37
7663	wne	7443	37
7664	lwg	7444	37
7665	wyb	7445	37
7666	wnm	7446	37
7667	wng	7447	37
7668	wgg	7448	37
7669	wky	7449	37
7670	xwk	7450	37
7671	jub	7451	37
7672	wno	7452	37
7673	wnc	7453	37
7674	wnk	7454	37
7675	wny	7455	37
7676	hwa	7456	37
7677	auc	7457	37
7678	juk	7458	37
7679	wap	7459	37
7680	wao	7460	37
7681	aml	7461	37
7682	wbf tci Wára	7462	37
7683	wba	7463	37
7684	wrz	7464	37
7685	war	7465	37
7686	wrr	7466	37
7687	wxw	7467	37
7688	wsa	7468	37
7689	wai	7469	37
7690	wrs	7470	37
7691	wbe	7471	37
7692	wri	7472	37
7693	wji	7473	37
7694	bgv	7474	37
7695	wrl	7475	37
7696	wbp	7476	37
7697	wrn	7477	37
7698	wbt	7478	37
7699	wrp	7479	37
7700	wgy	7480	37
7701	wwr	7481	37
7702	wru	7482	37
7703	wrm	7483	37
7704	wrv	7484	37
7705	wrg	7485	37
7706	hrw	7486	37
7707	wss	7487	37
7708	wac	7488	37
7709	gsp	7489	37
7710	was	7490	37
7711	wsk	7491	37
7712	wsu	7492	37
7713	wtk	7493	37
7714	wax	7494	37
7715	wth	7495	37
7716	wtf	7496	37
7717	wah	7497	37
7718	kop	7498	37
7719	wau	7499	37
7720	wuy	7500	37
7721	www	7501	37
7722	wow	7502	37
7723	wxa	7503	37
7724	oym	7504	37
7725	way	7505	37
7726	ctt	7506	37
7727	wyr	7507	37
7728	vay	7508	37
7729	guc	7509	37
7730	wed	7510	37
7731	weh	7511	37
7732	wew	7512	37
7733	wlh	7513	37
7734	klh	7514	37
7735	cym	7515	37
7736	wel	7515	37
7737	cy	7515	37
7738	rmw	7516	37
7739	weo	7517	37
7740	xww	7518	37
7741	wem	7519	37
7742	wdt	7520	37
7743	weg	7521	37
7744	wer	7522	37
7745	kvw	7523	37
7746	fbl	7524	37
7747	nnd	7525	37
7748	wbs	7526	37
7749	zbw	7527	37
7750	bbp	7528	37
7751	gaz	7529	37
7752	bdr	7530	37
7753	drn	7531	37
7754	ddi	7532	37
7755	kew	7533	37
7756	lmj	7534	37
7757	mqs	7535	37
7758	mss	7536	37
7759	txn	7537	37
7760	uve	7538	37
7761	ybe	7539	37
7762	lia	7540	37
7763	abe	7541	37
7764	apw	7542	37
7765	hyw	7543	37
7766	are	7544	37
7767	bgn	7545	37
7768	gnw	7546	37
7769	brv	7547	37
7770	mbb	7548	37
7771	cja	7549	37
7772	dnw	7550	37
7773	azn	7551	37
7774	wyy	7552	37
7775	fry	7553	37
7776	fy	7553	37
7777	ctp	7554	37
7778	pua	7555	37
7779	nhw	7556	37
7780	jmx	7557	37
7781	knj	7558	37
7782	kza	7559	37
7783	kuf	7560	37
7784	kyu	7561	37
7785	kjq	7562	37
7786	krw	7563	37
7787	ywl	7564	37
7788	lcp	7565	37
7789	mrd	7566	37
7790	mlq	7567	37
7791	mrj	7568	37
7792	hmw	7569	37
7793	raf	7570	37
7794	wmg	7571	37
7795	mut	7572	37
7796	amw	7573	37
7797	fuh	7574	37
7798	ojw	7575	37
7799	pnb	7576	37
7800	kjl	7577	37
7801	pne	7578	37
7802	ssl	7579	37
7803	suc	7580	37
7804	tdg	7581	37
7805	twb	7582	37
7806	zab	7583	37
7807	tqt	7584	37
7808	tnb	7585	37
7809	mmr	7586	37
7810	xwl	7587	37
7811	yih	7588	37
7812	wep	7589	37
7813	wwo	7590	37
7814	wea	7591	37
7815	woy	7592	37
7816	giw	7593	37
7817	lwh	7594	37
7818	tnp	7595	37
7819	tua	7596	37
7820	wic	7597	37
7821	mzh	7598	37
7822	mtp	7599	37
7823	wlv	7600	37
7824	wig	7601	37
7825	wie	7602	37
7826	wij	7603	37
7827	wif	7604	37
7828	wih	7605	37
7829	wim	7606	37
7830	wik	7607	37
7831	wua	7608	37
7832	wil	7609	37
7833	wnw	7610	37
7834	kst	7611	37
7835	gdr	7612	37
7836	wrh	7613	37
7837	wir	7614	37
7838	wgu	7615	37
7839	wiu	7616	37
7840	wiy	7617	37
7841	xwc	7618	37
7842	wog	7619	37
7843	woc	7620	37
7844	wbw	7621	37
7845	wyi	7622	37
7846	jod	7623	37
7847	wle	7624	37
7848	wod	7625	37
7849	wal	7626	37
7850	woe	7627	37
7851	wlo	7628	37
7852	wo	7629	37
7853	wol	7629	37
7854	wom	7630	37
7855	wmo	7631	37
7856	wmx	7632	37
7857	won	7633	37
7858	cwd	7634	37
7859	wor	7635	37
7860	kda	7636	37
7861	jud	7637	37
7862	wro	7638	37
7863	wsv	7639	37
7864	xwt	7640	37
7865	wtw	7641	37
7866	noa	7642	37
7867	xwo	7643	37
7868	wuu	7644	37
7869	ywq	7645	37
7870	wud	7646	37
7871	wlu	7647	37
7872	wux	7648	37
7873	bqm	7649	37
7874	wum	7650	37
7875	ywu	7651	37
7876	bwn	7652	37
7877	wub	7653	37
7878	wnn	7654	37
7879	wur	7655	37
7880	yig	7656	37
7881	bse	7657	37
7882	wsi	7658	37
7883	wut	7659	37
7884	wuh	7660	37
7885	wuv	7661	37
7886	udl	7662	37
7887	wyn	7663	37
7888	wym	7664	37
7889	juw	7665	37
7890	wob	7666	37
7891	gxx	7667	37
7892	wec	7668	37
7893	kao	7669	37
7894	zax	7670	37
7895	xkr	7671	37
7896	xan	7672	37
7897	ztg	7673	37
7898	xav	7674	37
7899	xer	7675	37
7900	xet	7676	37
7901	xh	7677	37
7902	xho	7677	37
7903	hsn	7678	37
7904	sjo	7679	37
7905	too	7680	37
7906	xin	7681	37
7907	asn	7682	37
7908	xiy	7683	37
7909	xii	7684	37
7910	xir	7685	37
7911	ywt	7686	37
7912	xok	7687	37
7913	xoo	7688	37
7914	xwe	7689	37
7915	ane	7690	37
7916	axx	7691	37
7917	muu	7692	37
7918	yar	7693	37
7919	ybn	7694	37
7920	jae	7695	37
7921	ybm	7696	37
7922	ybo	7697	37
7923	yxy	7698	37
7924	ekr	7699	37
7925	rys	7700	37
7926	wfg	7701	37
7927	yxg	7702	37
7928	ygr	7703	37
7929	yai	7704	37
7930	ygm	7705	37
7931	yad	7706	37
7932	ygw	7707	37
7933	ner	7708	37
7934	rhp	7709	37
7935	ynu	7710	37
7936	axk	7711	37
7937	iyx	7712	37
7938	yaf	7713	37
7939	ykk	7714	37
7940	yak	7715	37
7941	yka	7716	37
7942	ybh	7717	37
7943	yky	7718	37
7944	sah	7719	37
7945	yba	7720	37
7946	jal	7721	37
7947	xyl	7722	37
7948	ylr	7723	37
7949	nce	7724	37
7950	ylb	7725	37
7951	yal	7726	37
7952	zpu	7727	37
7953	ymp	7728	37
7954	yam	7729	37
7955	ymb	7730	37
7956	yat	7731	37
7957	jmd	7732	37
7958	yme	7733	37
7959	tao	7734	37
7960	yaa	7735	37
7961	ymn	7736	37
7962	ymg	7737	37
7963	ybi	7738	37
7964	jay	7739	37
7965	yhs	7740	37
7966	ynn	7741	37
7967	qur	7742	37
7968	yda	7743	37
7969	dym	7744	37
7970	xyb	7745	37
7971	ynd	7746	37
7972	ame	7747	37
7973	zyg	7748	37
7974	yav	7749	37
7975	bsx	7750	37
7976	jng	7751	37
7977	yng	7752	37
7978	ynl	7753	37
7979	yde	7754	37
7980	ygl	7755	37
7981	ymo	7756	37
7982	kdd	7757	37
7983	guu	7758	37
7984	wca	7759	37
7985	yns	7760	37
7986	jao	7761	37
7987	yao	7762	37
7988	asy	7763	37
7989	yre	7764	37
7990	yap	7765	37
7991	yev	7766	37
7992	jaq	7767	37
7993	yaq	7768	37
7994	yrw	7769	37
7995	yxl	7770	37
7996	yrb	7771	37
7997	zae	7772	37
7998	yry	7773	37
7999	yro	7774	37
8000	yrs	7775	37
8001	yko	7776	37
8002	ysc	7777	37
8003	yty	7778	37
8004	zty	7779	37
8005	zav	7780	37
8006	yuw	7781	37
8007	yyu	7782	37
8008	yla	7783	37
8009	yax	7784	37
8010	jau	7785	37
8011	zpb	7786	37
8012	qux	7787	37
8013	yvt	7788	37
8014	yva	7789	37
8015	yaw	7790	37
8016	ywn	7791	37
8017	yww	7792	37
8018	yby	7793	37
8019	jbw	7794	37
8020	ybx	7795	37
8021	ywr	7796	37
8022	xya	7797	37
8023	yah	7798	37
8024	tlc	7799	37
8025	jei	7800	37
8026	ets	7801	37
8027	ykr	7802	37
8028	yel	7803	37
8029	yle	7804	37
8030	jel	7805	37
8031	ylg	7806	37
8032	ybb	7807	37
8033	jnj	7808	37
8034	ynq	7809	37
8035	yei	7810	37
8036	yec	7811	37
8037	yra	7812	37
8038	gop	7813	37
8039	yrn	7814	37
8040	yeu	7815	37
8041	yss	7816	37
8042	yet	7817	37
8043	yej	7818	37
8044	yey	7819	37
8045	yid	7820	37
8046	yi	7820	37
8047	ydg	7821	37
8048	yii	7822	37
8049	yll	7823	37
8050	ycr	7824	37
8051	yee	7825	37
8052	yim	7826	37
8053	kvu	7827	37
8054	yij	7828	37
8055	yil	7829	37
8056	pib	7830	37
8057	yia	7831	37
8058	ywg	7832	37
8059	ygi	7833	37
8060	kvy	7834	37
8061	yxm	7835	37
8062	yyr	7836	37
8063	ljw	7837	37
8064	yrm	7838	37
8065	yis	7839	37
8066	xth	7840	37
8067	yob	7841	37
8068	gud	7842	37
8069	yog	7843	37
8070	ydk	7844	37
8071	yki	7845	37
8072	yok	7846	37
8073	yol	7847	37
8074	xty	7848	37
8075	ygs	7849	37
8076	pil	7850	37
8077	yom	7851	37
8078	yoi	7852	37
8079	yno	7853	37
8080	zyb	7854	37
8081	yon	7855	37
8082	zyn	7856	37
8083	yut	7857	37
8084	mts	7858	37
8085	yox	7859	37
8086	xyy	7860	37
8087	yo	7861	37
8088	yor	7861	37
8089	mpm	7862	37
8090	yot	7863	37
8091	zyj	7864	37
8092	jiu	7865	37
8093	buh	7866	37
8094	ytw	7867	37
8095	yoy	7868	37
8096	nua	7869	37
8097	msd	7870	37
8098	yua	7871	37
8099	yuc	7872	37
8100	mvg	7873	37
8101	ycn	7874	37
8102	yue	7875	37
8103	yug	7876	37
8104	yub	7877	37
8105	ysl	7878	37
8106	ygu	7879	37
8107	yab	7880	37
8108	yuk	7881	37
8109	yup	7882	37
8110	ybl	7883	37
8111	yul	7884	37
8112	yuq	7885	37
8113	yuz	7886	37
8114	rts	7887	37
8115	yur	7888	37
8116	ljx	7889	37
8117	yui	7890	37
8118	mab	7891	37
8119	yau	7892	37
8120	yxu	7893	37
8121	gek	7894	37
8122	yag	7895	37
8123	ztx	7896	37
8124	kji	7897	37
8125	ctz	7898	37
8126	nhi	7899	37
8127	zag	7900	37
8128	atb	7901	37
8129	zkr	7902	37
8130	zsl	7903	37
8131	zna	7904	37
8132	zak	7905	37
8133	zne	7906	37
8134	zau	7907	37
8135	zah	7908	37
8136	zpw	7909	37
8137	zap	7910	37
8138	zaj	7911	37
8139	zaz	7912	37
8140	dje	7913	37
8141	zrp	7914	37
8142	zal	7915	37
8143	zwa	7916	37
8144	kxk	7917	37
8145	zay	7918	37
8146	zza	7919	37
8147	jaj	7920	37
8148	zem	7921	37
8149	zea	7922	37
8150	dhm	7923	37
8151	nzm	7924	37
8152	xzm	7925	37
8153	zeg	7926	37
8154	zen	7927	37
8155	czn	7928	37
8156	zrn	7929	37
8157	zhb	7930	37
8158	xzh	7931	37
8159	zhi	7932	37
8160	zhw	7933	37
8161	za	7934	37
8162	Chuang	7934	37
8163	Zhuang	7934	37
8164	zha	7934	37
8165	zia	7935	37
8166	zil	7936	37
8167	ziw	7937	37
8168	zik	7938	37
8169	zmb	7939	37
8170	zib	7940	37
8171	zin	7941	37
8172	sih	7942	37
8173	ziz	7943	37
8174	pto	7944	37
8175	yzk	7945	37
8176	zpq	7946	37
8177	gbz	7947	37
8178	czt	7948	37
8179	zom	7949	37
8180	zlu	7950	37
8181	zla	7951	37
8182	gnd	7952	37
8183	zu	7953	37
8184	zul	7953	37
8185	zuy	7954	37
8186	jmb	7955	37
8187	zun	7956	37
8188	zzj	7957	37
8189	zyp	7958	37
8190	zro	7959	37
8191	jih	7960	37
8192	uss	7961	37
8193	uth	7962	37
8194	gel	7963	37
8195	ahn	7964	37
8196	acb	7965	37
8197	aom	7966	37
8198	oon	7967	37
8199	gwj	7968	37
8200	xam	7969	37
8201	hnh	7970	37
8202	gnk	7971	37
8203	xeg	7972	37
8204	huc	7973	37
8205	gku	7974	37
8206	nmn	7975	37
8207	BOTSWANA	8011	82
8208	Brasil	8013	82
8209	Gambia, The	8062	82
8210	Germany (Federal Republic of)	8064	82
8211	GHANA	8065	82
8212	INDIA	8084	82
8213	Sumatra	8085	82
8214	Iran (Islamic Republic of)	8086	82
8215	Iran	8086	82
8216	IRAQ	8087	82
8217	Laos	8103	82
8218	LESOTHO	8106	82
8219	MOZAMBIQUE	8133	82
8220	NAMIBIA	8135	82
8221	SWAZILAND	8195	82
8222	Taiwan	8199	82
8223	Tanzania	8201	82
8224	UAE	8215	82
8225	U.S.A	8217	82
8226	United States of America	8217	82
8227	U.S.A.	8217	82
8228	USA	8217	82
8229	YEMEN	8228	82
\.


--
-- Data for Name: controlledvocabularyvalue; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.controlledvocabularyvalue (id, displayorder, identifier, strvalue, datasetfieldtype_id) FROM stdin;
1	0	\N	N/A	\N
2	0	D01	Agricultural Sciences	20
3	1	D0	Arts and Humanities	20
4	2	D1	Astronomy and Astrophysics	20
5	3	D2	Business and Management	20
6	4	D3	Chemistry	20
7	5	D7	Computer and Information Science	20
8	6	D4	Earth and Environmental Sciences	20
9	7	D5	Engineering	20
10	8	D8	Law	20
11	9	D9	Mathematical Sciences	20
12	10	D6	Medicine, Health and Life Sciences	20
13	11	D10	Physics	20
14	12	D11	Social Sciences	20
15	13	D12	Other	20
16	0		ark	33
17	1		arXiv	33
18	2		bibcode	33
19	3		cstr	33
20	4		doi	33
21	5		ean13	33
22	6		eissn	33
23	7		handle	33
24	8		isbn	33
25	9		issn	33
26	10		istc	33
27	11		lissn	33
28	12		lsid	33
29	13		pmid	33
30	14		purl	33
31	15		upc	33
32	16		url	33
33	17		urn	33
34	18		DASH-NRS	33
35	0		Data Collector	47
36	1		Data Curator	47
37	2		Data Manager	47
38	3		Editor	47
39	4		Funder	47
40	5		Hosting Institution	47
41	6		Project Leader	47
42	7		Project Manager	47
43	8		Project Member	47
44	9		Related Person	47
45	10		Researcher	47
46	11		Research Group	47
47	12		Rights Holder	47
48	13		Sponsor	47
49	14		Supervisor	47
50	15		Work Package Leader	47
51	16		Other	47
52	0		ORCID	11
53	1		ROR	11
54	2		ISNI	11
55	3		LCNA	11
56	4		VIAF	11
57	5		GND	11
58	6		DAI	11
59	7		ResearcherID	11
60	8		ScopusID	11
61	0	alu	'Are'are	37
62	1	kud	'Auhelawa	37
63	2	aou	A'ou	37
64	3	apq	A-Pucikwar	37
65	4	aiw	Aari	37
66	5	aas	Aasáx	37
67	6	kbt	Abadi	37
68	7	abg	Abaga	37
69	8	abf	Abai Sungai	37
70	9	abm	Abanyom	37
71	10	mij	Abar	37
72	11	aau	Abau	37
73	12	abq	Abaza	37
74	13	abp	Abellen Ayta	37
75	14	abi	Abidji	37
76	15	bsa	Abinomn	37
77	16	axb	Abipon	37
78	17	ash	Abishira	37
79	18	abk	Abkhaz	37
80	19	aob	Abom	37
81	20	abo	Abon	37
82	21	abr	Abron	37
83	22	ado	Abu	37
84	23	aah	Abu' Arapesh	37
85	24	abn	Abua	37
86	25	abz	Abui	37
87	26	kgr	Abun	37
88	27	abu	Abure	37
89	28	mgj	Abureni	37
90	29	aba	Abé	37
91	30	tpx	Acatepec Me'phaa	37
92	31	aca	Achagua	37
93	32	acn	Achang	37
94	33	yif	Ache	37
95	34	acz	Acheron	37
96	35	acr	Achi	37
97	36	ace	Achinese	37
98	37	act	Achterhoeks	37
99	38	acu	Achuar-Shiwiar	37
100	39	acv	Achumawi	37
101	41	ach	Acoli	37
102	42	acs	Acroá	37
103	43	xad	Adai	37
104	44	fub	Adamawa Fulfulde	37
105	45	ads	Adamorobe Sign Language	37
106	46	adn	Adang	37
107	47	adq	Adangbe	37
108	48	ada	Adangme	37
109	49	kad	Adara	37
110	50	tiu	Adasen	37
111	51	ade	Adele	37
112	52	adh	Adhola	37
113	53	adi	Adi	37
114	54	wsg	Adilabad Gondi	37
115	55	adj	Adioukrou	37
116	56	dth	Adithinngithigh	37
117	57	ort	Adivasi Oriya	37
118	58	gas	Adiwasi Garasia	37
119	59	adt	Adnyamathanha	37
120	60	adr	Adonara	37
121	61	adu	Aduge	37
122	62	ady	Adyghe	37
123	63	adz	Adzera	37
124	64	aez	Aeka	37
125	65	awi	Aekyom	37
126	66	xae	Aequian	37
127	67	aeq	Aer	37
128	68	aal	Afade	37
129	69	aar	Afar	37
130	70	afg	Afghan Sign Language	37
131	71	aft	Afitti	37
132	72	afh	Afrihili	37
133	73	afr	Afrikaans	37
134	74	afs	Afro-Seminole Creole	37
135	75	agd	Agarabi	37
136	76	agi	Agariya	37
137	77	agc	Agatu	37
138	78	avo	Agavotaguerra	37
139	79	agq	Aghem	37
140	80	ahh	Aghu	37
141	81	gtu	Aghu-Tharnggala	37
142	82	agx	Aghul	37
143	83	xag	Aghwan	37
144	84	aif	Agi	37
145	85	kit	Agob	37
146	86	ibm	Agoi	37
147	87	agu	Aguacateco	37
148	88	aga	Aguano	37
149	89	agr	Aguaruna	37
150	90	aug	Aguna	37
151	91	msm	Agusan Manobo	37
152	92	agn	Agutaynen	37
153	93	yay	Agwagwune	37
154	94	aha	Ahanta	37
155	95	esg	Aheri Gondi	37
156	96	thm	Aheu	37
157	97	ahr	Ahirani	37
158	98	aho	Ahom	37
159	99	aht	Ahtena	37
160	100	nfd	Ahwai	37
161	101	aih	Ai-Cham	37
162	102	aix	Aighon	37
163	103	tba	Aikanã	37
164	104	mwg	Aiklep	37
165	105	aiq	Aimaq	37
166	106	ail	Aimele	37
167	107	aim	Aimol	37
168	108	aic	Ainbai	37
169	109	aib	Ainu (China)	37
170	110	ain	Ainu (Japan)	37
171	111	aki	Aiome	37
172	112	air	Airoran	37
173	113	aio	Aiton	37
174	114	ajg	Aja (Benin)	37
175	115	aja	Aja (South Sudan)	37
176	116	ajw	Ajawa	37
177	117	aji	Ajië	37
178	118	muc	Ajumbu	37
179	119	cpc	Ajyíninka Apurucayali	37
180	120	akq	Ak	37
181	121	soh	Aka	37
182	122	abj	Aka-Bea	37
183	123	akm	Aka-Bo	37
184	124	aci	Aka-Cari	37
185	125	akj	Aka-Jeru	37
186	126	akx	Aka-Kede	37
187	127	aky	Aka-Kol	37
188	128	ack	Aka-Kora	37
189	129	aka	Akan	37
190	130	acl	Akar-Bale	37
191	131	aks	Akaselem	37
192	132	ake	Akawaio	37
193	133	aik	Ake	37
194	134	keu	Akebu	37
195	135	tsr	Akei	37
196	136	aeu	Akeu	37
197	137	ahk	Akha	37
198	138	akv	Akhvakh	37
199	139	akk	Akkadian	37
200	140	sia	Akkala Sami	37
201	141	akl	Aklanon	37
202	142	akt	Akolet	37
203	143	bss	Akoose	37
204	144	miw	Akoye	37
205	145	akf	Akpa	37
206	146	ibe	Akpes	37
207	147	afi	Akrukay	37
208	148	spm	Akukem	37
209	149	ayk	Akuku	37
210	150	aku	Akum	37
211	151	aqz	Akuntsu	37
212	152	ako	Akurio	37
213	153	akw	Akwa	37
214	154	nqy	Akyaung Ari Naga	37
215	155	syy	Al-Sayyid Bedouin Sign Language	37
216	156	alw	Alaba-K'abeena	37
217	157	akz	Alabama	37
218	158	dul	Alabat Island Agta	37
219	159	mim	Alacatlatzala Mixtec	37
220	160	ala	Alago	37
221	161	wbj	Alagwa	37
222	162	alk	Alak	37
223	163	amp	Alamblak	37
224	164	alj	Alangan	37
225	165	xln	Alanic	37
226	166	apv	Alapmunte	37
227	167	alh	Alawa	37
228	168	sqi	Albanian	37
229	169	sqk	Albanian Sign Language	37
230	170	lsc	Albarradas Sign Language	37
231	171	xta	Alcozauca Mixtec	37
232	172	alf	Alege	37
233	173	gah	Alekano	37
234	174	ale	Aleut	37
235	175	arq	Algerian Arabic	37
236	176	ajs	Algerian Jewish Sign Language	37
237	177	aao	Algerian Saharan Arabic	37
238	178	asp	Algerian Sign Language	37
239	179	alq	Algonquin	37
240	180	aiy	Ali	37
241	181	ald	Alladian	37
242	182	all	Allar	37
243	183	aid	Alngith	37
244	184	ypo	Alo Phola	37
245	185	aol	Alor	37
246	186	zaq	Aloápam Zapotec	37
247	187	aes	Alsea	37
248	188	xua	Alu Kurumba	37
249	189	aub	Alugu	37
250	190	aab	Alumu-Tesu	37
251	191	alp	Alune	37
252	192	yna	Aluo	37
253	193	alz	Alur	37
254	194	alr	Alutor	37
255	195	avd	Alviri-Vidari	37
256	196	aly	Alyawarr	37
257	197	amm	Ama (Papua New Guinea)	37
258	198	nyi	Ama (Sudan)	37
259	199	amq	Amahai	37
260	200	amc	Amahuaca	37
261	201	ali	Amaimon	37
262	202	aad	Amal	37
263	203	jks	Amami Koniya Sign Language	37
264	204	amn	Amanab	37
265	205	ama	Amanayé	37
266	206	aie	Amara	37
267	207	amr	Amarakaeri	37
268	208	aaz	Amarasi	37
269	209	zpo	Amatlán Zapotec	37
270	210	utp	Amba (Solomon Islands)	37
271	211	rwm	Amba (Uganda)	37
272	212	amk	Ambai	37
273	213	aew	Ambakich	37
274	214	abc	Ambala Ayta	37
275	215	amv	Ambelau	37
276	216	ael	Ambele	37
277	217	alm	Amblong	37
278	218	amb	Ambo	37
279	219	qva	Ambo-Pasco Quechua	37
280	220	abs	Ambonese Malay	37
281	221	aag	Ambrak	37
282	222	apo	Ambul	37
283	223	abt	Ambulas	37
284	224	amj	Amdang	37
285	225	adx	Amdo Tibetan	37
286	226	aey	Amele	37
287	227	ase	American Sign Language	37
288	228	ifa	Amganad Ifugao	37
289	229	amh	Amharic	37
290	230	amy	Ami	37
291	231	ami	Amis	37
292	232	amo	Amo	37
293	233	alx	Amol	37
294	234	mbz	Amoltepec Mixtec	37
295	235	apg	Ampanang	37
296	236	aqd	Ampari Dogon	37
297	237	ajz	Amri Karbi	37
298	238	amt	Amto	37
299	239	adw	Amundava	37
300	240	amg	Amurdak	37
301	241	dti	Ana Tinga Dogon	37
302	242	anw	Anaang	37
303	243	akg	Anakalangu	37
304	244	anm	Anal	37
305	245	pda	Anam	37
306	246	aan	Anambé	37
307	247	imi	Anamgura	37
308	248	bpo	Anasi	37
309	249	grc	Ancient Greek (to 1453)	37
310	250	hbo	Ancient Hebrew	37
311	251	xmk	Ancient Macedonian	37
312	252	xna	Ancient North Arabian	37
313	253	xzp	Ancient Zapotec	37
314	254	dgl	Andaandi	37
315	255	afd	Andai	37
316	256	ajn	Andajin	37
317	257	xaa	Andalusian Arabic	37
318	258	hca	Andaman Creole Hindi	37
319	259	ana	Andaqui	37
320	260	aod	Andarum	37
321	261	adg	Andegerebinha	37
322	262	anr	Andh	37
323	263	ani	Andi	37
324	264	bzb	Andio	37
325	265	anb	Andoa	37
326	266	ano	Andoque	37
327	267	anx	Andra-Hus	37
328	268	aty	Aneityum	37
329	269	anz	Anem	37
330	270	aby	Aneme Wake	37
331	271	myo	Anfillo	37
332	272	agm	Angaataha	37
333	273	aqt	Angaité	37
334	274	age	Angal	37
335	275	aoe	Angal Enen	37
336	276	akh	Angal Heneng	37
337	277	njm	Angami Naga	37
338	278	yli	Angguruk Yali	37
339	279	anp	Angika	37
340	280	avm	Angkamuthi	37
341	281	xno	Anglo-Norman	37
342	282	rme	Angloromani	37
343	283	aoa	Angolar	37
344	284	agg	Angor	37
345	285	aog	Angoram	37
346	286	tnd	Angosturas Tunebo	37
347	287	awg	Anguthimri	37
348	288	ypn	Ani Phowa	37
349	289	blo	Anii	37
350	290	anf	Animere	37
351	291	aoi	Anindilyakwa	37
352	292	aqk	Aninka	37
353	293	boj	Anjam	37
354	294	aak	Ankave	37
355	295	amx	Anmatyerre	37
356	296	nun	Anong	37
357	297	anj	Anor	37
358	298	ans	Anserma	37
359	299	and	Ansus	37
360	300	ant	Antakarinya	37
361	301	xmv	Antankarana Malagasy	37
362	302	aig	Antigua and Barbuda Creole English	37
363	303	anl	Anu-Hkongso Chin	37
364	304	anu	Anuak	37
365	305	cko	Anufo	37
366	306	aui	Anuki	37
367	307	auq	Anus	37
368	308	aud	Anuta	37
369	309	any	Anyin	37
370	310	mtb	Anyin Morofo	37
371	311	njo	Ao Naga	37
372	312	pni	Aoheng	37
373	313	aor	Aore	37
374	314	kbx	Ap Ma	37
375	315	xap	Apalachee	37
376	316	apy	Apalaí	37
377	317	ena	Apali	37
378	318	mip	Apasco-Apoala Mixtec	37
379	319	apt	Apatani	37
380	320	api	Apiaká	37
381	321	apn	Apinayé	37
382	322	app	Apma	37
383	323	ahp	Aproumu Aizi	37
384	324	apu	Apurinã	37
385	325	apx	Aputai	37
386	326	xaq	Aquitanian	37
387	327	ard	Arabana	37
388	328	arl	Arabela	37
389	329	ara	Arabic	37
390	330	arg	Aragonese	37
391	331	akr	Araki	37
392	332	rkw	Arakwal	37
393	333	atq	Aralle-Tabulahan	37
394	334	stk	Arammba	37
395	335	aaf	Aranadan	37
396	336	xrt	Aranama-Tamique	37
397	337	jbj	Arandai	37
398	338	aro	Araona	37
399	339	arp	Arapaho	37
400	340	arj	Arapaso	37
401	341	xaj	Ararandewára	37
402	342	arw	Arawak	37
403	343	awt	Araweté	37
404	344	awm	Arawum	37
405	345	arv	Arbore	37
406	346	aae	Arbëreshë Albanian	37
407	347	aqc	Archi	37
408	348	pka	Ardhamāgadhī Prākrit	37
409	349	mwc	Are	37
410	350	aea	Areba	37
411	351	aem	Arem	37
412	352	qxu	Arequipa-La Unión Quechua	37
413	353	aed	Argentine Sign Language	37
414	354	agj	Argobba	37
415	355	agf	Arguni	37
416	356	arh	Arhuaco	37
417	357	aqr	Arhâ	37
418	358	aok	Arhö	37
419	359	aac	Ari	37
420	360	laz	Aribwatsa	37
421	361	ylu	Aribwaung	37
422	362	aai	Arifama-Miniafia	37
423	363	aqg	Arigidi	37
424	364	ark	Arikapú	37
425	365	ari	Arikara	37
426	366	ait	Arikem	37
427	367	xrn	Arin	37
428	368	luc	Aringa	37
429	369	xrm	Armazic	37
430	370	hye	Armenian	37
431	371	aen	Armenian Sign Language	37
432	372	apr	Arop-Lokep	37
433	373	aps	Arop-Sissano	37
434	374	aia	Arosi	37
435	375	frp	Arpitan	37
436	376	rrt	Arritinngithigh	37
437	377	atz	Arta	37
438	378	msy	Aruamu	37
439	379	aur	Aruek	37
440	380	lsr	Aruop	37
441	381	atx	Arutani	37
442	382	aru	Aruá (Amazonas State)	37
443	383	arx	Aruá (Rodonia State)	37
444	384	aat	Arvanitika Albanian	37
445	385	asz	As	37
446	386	mtv	Asaro'o	37
447	387	ahs	Ashe	37
448	388	ask	Ashkun	37
449	389	csh	Asho Chin	37
450	390	atn	Ashtiani	37
451	391	cni	Asháninka	37
452	392	cjo	Ashéninka Pajonal	37
453	393	prq	Ashéninka Perené	37
454	394	asl	Asilulu	37
455	395	eiv	Askopan	37
456	396	asv	Asoa	37
457	397	asm	Assamese	37
458	398	sjg	Assangori	37
459	399	asb	Assiniboine	37
460	400	aii	Assyrian Neo-Aramaic	37
461	401	ast	Asturian	37
462	402	aum	Asu (Nigeria)	37
463	403	asa	Asu (Tanzania)	37
464	404	psa	Asue Awyu	37
465	405	aua	Asumboa	37
466	406	zoo	Asunción Mixtepec Zapotec	37
467	407	asr	Asuri	37
468	408	atm	Ata	37
469	409	atd	Ata Manobo	37
470	410	aqp	Atakapa	37
471	411	amz	Atampaya	37
472	412	mib	Atatláhuca Mixtec	37
473	413	adb	Atauran	37
474	414	tay	Atayal	37
475	415	ate	Atemble	37
476	416	aph	Athpariya	37
477	417	atk	Ati	37
478	418	atj	Atikamekw	37
479	419	aqm	Atohwaim	37
480	420	ato	Atong (Cameroon)	37
481	421	aot	Atong (India)	37
482	422	aox	Atorada	37
483	423	atc	Atsahuaca	37
484	424	cch	Atsam	37
485	425	atw	Atsugewi	37
486	426	pkr	Attapady Kurumba	37
487	427	ati	Attié	37
488	428	ocu	Atzingo Matlatzinca	37
489	429	avt	Au	37
490	430	aul	Aulua	37
491	431	aux	Aurá	37
492	432	auh	Aushi	37
493	433	avs	Aushiri	37
494	434	asf	Auslan	37
495	435	aut	Austral	37
496	436	asw	Australian Aborigines Sign Language	37
497	437	asq	Austrian Sign Language	37
498	438	smf	Auwe	37
499	439	auu	Auye	37
500	440	auo	Auyokawa	37
501	441	ava	Avaric	37
502	442	avn	Avatime	37
503	443	avb	Avau	37
504	444	ave	Avestan	37
505	445	avi	Avikam	37
506	446	avu	Avokaya	37
507	447	avv	Avá-Canoeiro	37
508	448	vwa	Awa (China)	37
509	449	awb	Awa (Papua New Guinea)	37
510	450	kwi	Awa-Cuaiquer	37
511	451	awk	Awabakal	37
512	452	bcu	Awad Bing	37
513	453	awa	Awadhi	37
514	454	awo	Awak	37
515	455	aya	Awar	37
516	456	awx	Awara	37
517	457	awh	Awbono	37
518	458	bob	Aweer	37
519	459	awr	Awera	37
520	460	awe	Awetí	37
521	461	azo	Awing	37
522	462	auy	Awiyaana	37
523	463	auj	Awjilah	37
524	464	awn	Awngi	37
525	465	gwm	Awngthim	37
526	466	kmn	Awtuw	37
527	467	yiu	Awu	37
528	468	aww	Awun	37
529	469	afu	Awutu	37
530	470	auw	Awyi	37
531	471	ahb	Axamb	37
532	472	yix	Axi Yi	37
533	473	ayd	Ayabadhu	37
534	474	quy	Ayacucho Quechua	37
535	475	vmy	Ayautla Mazatec	37
536	476	aye	Ayere	37
537	477	axe	Ayerrerenge	37
538	478	ayq	Ayi (Papua New Guinea)	37
539	479	nfl	Ayiwo	37
540	480	yyz	Ayizi	37
541	481	ayb	Ayizo Gbe	37
542	482	aym	Aymara	37
543	483	zaf	Ayoquesco Zapotec	37
544	484	ayo	Ayoreo	37
545	485	ayu	Ayu	37
546	486	miy	Ayutla Mixtec	37
547	487	aze	Azerbaijani	37
548	488	aza	Azha	37
549	489	yiz	Azhe	37
550	490	tpc	Azoyú Me'phaa	37
551	491	bvj	Baan	37
552	492	bqx	Baangi	37
553	493	bba	Baatonum	37
554	494	bbw	Baba	37
555	495	mbf	Baba Malay	37
556	496	bbm	Babango	37
557	497	bbk	Babanki	37
558	498	baa	Babatana	37
559	499	bcr	Babine	37
560	500	bzg	Babuza	37
561	501	bcy	Bacama	37
562	502	btj	Bacanese Malay	37
563	503	xbc	Bactrian	37
564	504	bhz	Bada (Indonesia)	37
565	505	bau	Bada (Nigeria)	37
566	506	bfq	Badaga	37
567	507	bde	Bade	37
568	508	bdz	Badeshi	37
569	509	bia	Badimaya	37
570	510	jbi	Badjiri	37
571	511	bac	Badui	37
572	512	pbp	Badyara	37
573	513	bvd	Baeggu	37
574	514	bvc	Baelelea	37
575	515	btr	Baetora	37
576	516	bfj	Bafanji	37
577	517	bwt	Bafaw-Balong	37
578	518	ksf	Bafia	37
579	519	bfd	Bafut	37
580	520	bqf	Baga Kaloum	37
581	521	bgo	Baga Koga	37
582	522	bmd	Baga Manduri	37
583	523	bcg	Baga Pokur	37
584	524	bsp	Baga Sitemu	37
585	525	bsv	Baga Sobané	37
586	526	bfy	Bagheli	37
587	527	bmi	Bagirmi	37
588	528	fui	Bagirmi Fulfulde	37
589	529	bqg	Bago-Kusuntu	37
590	530	bgq	Bagri	37
591	531	bpi	Bagupi	37
592	532	bqb	Bagusa	37
593	533	kva	Bagvalal	37
594	534	yha	Baha Buyang	37
595	535	bdw	Baham	37
596	536	bah	Bahamas Creole English	37
597	537	abv	Baharna Arabic	37
598	538	bhv	Bahau	37
599	539	bjh	Bahinemo	37
600	540	bhj	Bahing	37
601	541	bdq	Bahnar	37
602	542	bsu	Bahonsuai	37
603	543	bdj	Bai (South Sudan)	37
604	544	bbf	Baibai	37
605	545	bkx	Baikeno	37
606	546	bqh	Baima	37
607	547	bmx	Baimak	37
608	548	bcz	Bainouk-Gunyaamolo	37
609	549	bab	Bainouk-Gunyuño	37
610	550	bcb	Bainouk-Samik	37
611	551	bsw	Baiso	37
612	552	fah	Baissa Fali	37
613	553	bjs	Bajan	37
614	554	bjm	Bajelani	37
615	555	vjk	Bajjika	37
616	556	bkc	Baka (Cameroon)	37
617	557	bdh	Baka (South Sudan)	37
618	558	bkq	Bakairí	37
619	559	bqz	Bakaka	37
620	560	bqi	Bakhtiari	37
621	561	bki	Baki	37
622	562	bkh	Bakoko	37
623	563	kme	Bakole	37
624	564	bbs	Bakpinka	37
625	565	bkr	Bakumpai	37
626	566	bjw	Bakwé	37
627	567	bls	Balaesang	37
628	568	zba	Balaibalan	37
629	569	blw	Balangao	37
630	570	sse	Balangingi	37
631	571	bjt	Balanta-Ganja	37
632	572	ble	Balanta-Kentohe	37
633	573	blz	Balantak	37
634	574	bdn	Baldemu	37
635	575	bcp	Bali (Democratic Republic of Congo)	37
636	576	bcn	Bali (Nigeria)	37
637	577	ban	Balinese	37
638	578	mhp	Balinese Malay	37
639	579	bgx	Balkan Gagauz Turkish	37
640	580	rmn	Balkan Romani	37
641	581	bqo	Balo	37
642	582	biz	Baloi	37
643	583	bft	Balti	37
644	584	rml	Baltic Romani	37
645	585	blq	Baluan-Pam	37
646	586	bal	Baluchi	37
647	587	bog	Bamako Sign Language	37
648	588	bbq	Bamali	37
649	589	bmo	Bambalang	37
650	590	ptu	Bambam	37
651	591	bam	Bambara	37
652	592	myf	Bambassi	37
653	593	baw	Bambili-Bambui	37
654	594	bce	Bamenyam	37
655	595	bcf	Bamu	37
656	596	bqt	Bamukumbit	37
657	597	bax	Bamun	37
658	598	bvm	Bamunka	37
659	599	bmg	Bamwe	37
660	600	bfk	Ban Khor Sign Language	37
661	601	bcw	Bana	37
662	602	bjx	Banao Itneg	37
663	603	byz	Banaro	37
664	604	bnd	Banda (Indonesia)	37
665	605	bpq	Banda Malay	37
666	606	liy	Banda-Bambari	37
667	607	bpd	Banda-Banda	37
668	608	bqk	Banda-Mbrès	37
669	609	bfl	Banda-Ndélé	37
670	610	yaj	Banda-Yangere	37
671	611	bza	Bandi	37
672	612	bqj	Bandial	37
673	613	bdy	Bandjalang	37
674	614	bxg	Bangala	37
675	615	bgf	Bangandu	37
676	616	bbe	Bangba	37
677	617	bgz	Banggai	37
678	618	bjb	Banggarla	37
679	619	bni	Bangi	37
680	620	dba	Bangime	37
681	621	mfb	Bangka	37
682	622	bgj	Bangolan	37
683	623	bnx	Bangubangu	37
684	624	bsj	Bangwinji	37
685	625	bvv	Baniva	37
686	626	bwi	Baniwa	37
687	627	bjn	Banjar	37
688	628	bxw	Bankagooma	37
689	629	jjr	Bankal	37
690	630	dbw	Bankan Tey Dogon	37
691	631	abb	Bankon	37
692	632	bcm	Bannoni	37
693	633	bap	Bantawa	37
694	634	bfx	Bantayanon	37
695	635	bnq	Bantik	37
696	636	bno	Bantoanon	37
697	637	pnw	Banyjima	37
698	638	bci	Baoulé	37
699	639	bhr	Bara Malagasy	37
700	640	brd	Baraamu	37
701	641	rbp	Barababaraba	37
702	642	bbb	Barai	37
703	643	baj	Barakai	37
704	644	kys	Baram Kayan	37
705	645	bbg	Barama	37
706	646	brm	Barambu	37
707	647	bmz	Baramu	37
708	648	brp	Barapasi	37
709	649	brs	Baras	37
710	650	bsn	Barasana-Eduria	37
711	651	vmb	Barbaram	37
712	652	boi	Barbareño	37
713	653	gry	Barclayville Grebo	37
714	654	bcj	Bardi	37
715	655	bva	Barein	37
716	656	mlp	Bargam	37
717	657	bfa	Bari	37
718	658	bch	Bariai	37
719	659	bjc	Bariji	37
720	660	bxo	Barikanchi	37
721	661	jbk	Barikewa	37
722	662	bjk	Barok	37
723	663	bbi	Barombi	37
724	664	tbn	Barro Negro Tunebo	37
725	665	bpt	Barrow Point	37
726	666	bjz	Baruga	37
727	667	byr	Baruya	37
728	668	bwg	Barwe	37
729	669	bjf	Barzani Jewish Neo-Aramaic	37
730	670	bae	Baré	37
731	672	bas	Basa (Cameroon)	37
732	673	bzw	Basa (Nigeria)	37
733	674	bsl	Basa-Gumna	37
734	675	buj	Basa-Gurmana	37
735	676	bdb	Basap	37
736	677	byq	Basay	37
737	678	bsg	Bashkardi	37
738	679	bak	Bashkir	37
739	680	bst	Basketo	37
740	681	eus	Basque	37
741	682	bsq	Bassa	37
742	683	bsr	Bassa-Kontagora	37
743	684	bsc	Bassari	37
744	685	bsi	Bassossi	37
745	686	bta	Bata	37
746	687	ifb	Batad Ifugao	37
747	688	bya	Batak	37
748	689	btz	Batak Alas-Kluet	37
749	690	akb	Batak Angkola	37
750	691	btd	Batak Dairi	37
751	692	btx	Batak Karo	37
752	693	btm	Batak Mandailing	37
753	694	bts	Batak Simalungun	37
754	695	bbc	Batak Toba	37
755	696	bnm	Batanga	37
756	697	btq	Batek	37
757	698	btv	Bateri	37
758	699	bhm	Bathari	37
759	700	btc	Bati (Cameroon)	37
760	701	bvt	Bati (Indonesia)	37
761	702	xby	Batjala	37
762	703	bbl	Bats	37
763	704	btu	Batu	37
764	705	zbt	Batui	37
765	706	bay	Batuley	37
766	707	bbd	Bau	37
767	708	sne	Bau Bidayuh	37
768	709	bsf	Bauchi	37
769	710	bpe	Bauni	37
770	711	brg	Baure	37
771	712	bge	Bauria	37
772	713	bwk	Bauwaki	37
773	714	bvz	Bauzi	37
774	715	bar	Bavarian	37
775	716	bgr	Bawm Chin	37
776	717	mkq	Bay Miwok	37
777	718	bjy	Bayali	37
778	719	bvy	Baybayanon	37
779	720	byg	Baygo	37
780	721	byl	Bayono	37
781	722	bda	Bayot	37
782	723	bxj	Bayungu	37
783	724	bfr	Bazigar	37
784	725	beo	Beami	37
785	726	bea	Beaver	37
786	727	bfp	Beba	37
787	728	beb	Bebele	37
788	729	bek	Bebeli	37
789	730	bxp	Bebil	37
790	731	bjv	Bedjond	37
791	732	bed	Bedoanas	37
792	733	bkf	Beeke	37
793	734	bxq	Beele	37
794	735	beq	Beembe	37
795	736	bnz	Beezen	37
796	737	bby	Befang	37
797	738	ebc	Beginci	37
798	739	bej	Beja	37
799	740	bei	Bekati'	37
800	741	bkv	Bekwarra	37
801	742	bkw	Bekwel	37
802	743	beg	Belait	37
803	744	bxb	Belanda Bor	37
804	745	bvi	Belanda Viri	37
805	746	bel	Belarusian	37
806	747	byw	Belhariya	37
807	748	bey	Beli (Papua New Guinea)	37
808	749	blm	Beli (South Sudan)	37
809	750	bzj	Belize Kriol English	37
810	751	blc	Bella Coola	37
811	752	brw	Bellari	37
812	753	glb	Belning	37
813	754	bem	Bemba (Zambia)	37
814	755	bmb	Bembe	37
815	756	dbt	Ben Tey Dogon	37
816	757	yun	Bena (Nigeria)	37
817	758	bez	Bena (Tanzania)	37
818	759	bef	Benabena	37
819	760	egm	Benamanga	37
820	761	bcq	Bench	37
821	762	bdp	Bende	37
822	763	bct	Bendi	37
823	764	nhb	Beng	37
824	765	bng	Benga	37
825	766	ben	Bengali, Bangla	37
826	767	bgy	Benggoi	37
827	768	bqy	Bengkala Sign Language	37
828	769	bnu	Bentong	37
829	770	byd	Benyadu'	37
830	771	bue	Beothuk	37
831	772	bie	Bepour	37
832	773	bxv	Berakou	37
833	774	bve	Berau Malay	37
834	775	brc	Berbice Creole Dutch	37
835	776	bkl	Berik	37
836	777	bit	Berinomo	37
837	778	bom	Berom	37
838	779	wti	Berta	37
839	780	byt	Berti	37
840	781	mhe	Besisi	37
841	782	bes	Besme	37
842	783	bep	Besoa	37
843	784	bfe	Betaf	37
844	785	bew	Betawi	37
845	786	byf	Bete	37
846	787	btt	Bete-Bendi	37
847	788	eot	Beti (Côte d'Ivoire)	37
848	789	xub	Betta Kurumba	37
849	790	kap	Bezhta	37
850	791	bhd	Bhadrawahi	37
851	792	bhx	Bhalay	37
852	793	bha	Bharia	37
853	794	bgw	Bhatri	37
854	795	bht	Bhattiyali	37
855	796	bhe	Bhaya	37
856	797	bhy	Bhele	37
857	798	bhi	Bhilali	37
858	799	bhb	Bhili	37
859	800	bho	Bhojpuri	37
860	801	nes	Bhoti Kinnauri	37
861	802	byh	Bhujel	37
862	803	bhu	Bhunjia	37
863	804	bif	Biafada	37
864	805	bdf	Biage	37
865	806	bhw	Biak	37
866	807	beh	Biali	37
867	808	bpv	Bian Marind	37
868	809	big	Biangai	37
869	810	byk	Biao	37
870	811	bmt	Biao Mon	37
871	812	bje	Biao-Jiao Mien	37
872	813	bth	Biatah Bidayuh	37
873	814	xbp	Bibbulman	37
874	815	ihw	Bidhawal	37
875	816	bid	Bidiyo	37
876	817	bym	Bidjara	37
877	818	bjg	Bidyogo	37
878	819	bmc	Biem	37
879	820	bnk	Bierebo	37
880	821	brj	Bieria	37
881	822	biu	Biete	37
882	823	nmb	Big Nambas	37
883	824	bhc	Biga	37
884	825	xbe	Bigambal	37
885	826	ibh	Bih	37
886	827	bih	Bihari	37
887	828	jbm	Bijim	37
888	829	bix	Bijori	37
889	830	bik	Bikol	37
890	831	byb	Bikya	37
891	832	bip	Bila	37
892	833	bql	Bilakura	37
893	834	kfs	Bilaspuri	37
894	835	bpz	Bilba	37
895	836	brz	Bilbil	37
896	837	bil	Bile	37
897	838	byn	Bilin	37
898	839	bms	Bilma Kanuri	37
899	840	bll	Biloxi	37
900	841	blb	Bilua	37
901	842	bxf	Bilur	37
902	843	bhp	Bima	37
903	844	bhl	Bimin	37
904	845	bim	Bimoba	37
905	846	byj	Bina (Nigeria)	37
906	847	bmn	Bina (Papua New Guinea)	37
907	848	bxz	Binahari	37
908	849	bhg	Binandere	37
909	850	xbd	Bindal	37
910	851	bon	Bine	37
911	852	bin	Bini	37
912	853	bpj	Binji	37
913	854	itb	Binongan Itneg	37
914	855	bne	Bintauna	37
915	856	bny	Bintulu	37
916	857	bkd	Binukid	37
917	858	bjr	Binumarien	37
918	859	biq	Bipi	37
919	860	brf	Bira	37
920	861	bxe	Birale	37
921	862	brr	Birao	37
922	863	btf	Birgit	37
923	864	biy	Birhor	37
924	865	bzr	Biri	37
925	866	bqq	Biritai	37
926	867	brk	Birked	37
927	868	bvq	Birri	37
928	869	xbj	Birrpayi	37
929	870	brl	Birwa	37
930	871	ije	Biseni	37
931	872	bpy	Bishnupriya	37
932	873	bwh	Bishuo	37
933	874	bnw	Bisis	37
934	875	bis	Bislama	37
935	876	bir	Bisorio	37
936	877	bib	Bissa	37
937	878	bzi	Bisu	37
938	879	bgk	Bit	37
939	880	brt	Bitare	37
940	881	mcc	Bitur	37
941	882	bwm	Biwat	37
942	883	byo	Biyo	37
943	884	bpm	Biyom	37
944	885	blp	Blablanga	37
945	886	bfh	Blafe	37
946	887	beu	Blagar	37
947	888	blr	Blang	37
948	889	zbl	Blissymbols	37
949	890	bgl	Bo (Laos)	37
950	891	bpw	Bo (Papua New Guinea)	37
951	892	mae	Bo-Rukul	37
952	893	mux	Bo-Ung	37
953	894	bzn	Boano (Maluku)	37
954	895	bzl	Boano (Sulawesi)	37
955	896	bgb	Bobongko	37
956	897	bty	Bobot	37
957	898	boy	Bodo (Central African Republic)	37
958	899	brx	Bodo (India)	37
959	900	gbj	Bodo Gadaba	37
960	901	bdv	Bodo Parja	37
961	902	bff	Bofi	37
962	903	bvw	Boga	37
963	904	boq	Bogaya	37
964	905	bux	Boghom	37
965	906	bqu	Boguru	37
966	907	bhn	Bohtan Neo-Aramaic	37
967	908	bzf	Boikin	37
968	909	ybk	Bokha	37
969	910	bqc	Boko (Benin)	37
970	911	bkp	Boko (Democratic Republic of Congo)	37
971	912	bus	Bokobaru	37
972	913	bdt	Bokoto	37
973	914	bky	Bokyi	37
974	915	bnp	Bola	37
975	916	bld	Bolango	37
976	917	bol	Bole	37
977	918	xbo	Bolgarian	37
978	919	bvo	Bolgo	37
979	920	bli	Bolia	37
980	921	smk	Bolinao	37
981	922	bvl	Bolivian Sign Language	37
982	923	bkt	Boloki	37
983	924	bof	Bolon	37
984	925	bzm	Bolondo	37
985	926	blj	Bolongan	37
986	927	ply	Bolyu	37
987	928	bmf	Bom-Kim	37
988	929	boh	Boma	37
989	930	bml	Bomboli	37
990	931	bws	Bomboma	37
991	932	zmx	Bomitaba	37
992	933	bmq	Bomu	37
993	934	bmw	Bomwali	37
994	935	glc	Bon Gula	37
995	936	peh	Bonan	37
996	937	bou	Bondei	37
997	938	bfw	Bondo	37
998	939	kzc	Bondoukou Kulango	37
999	940	dbu	Bondum Dom Dogon	37
1000	941	bna	Bonerate	37
1001	942	bnv	Bonerif	37
1002	943	bdg	Bonggi	37
1003	944	bpg	Bonggo	37
1004	945	bui	Bongili	37
1005	946	bot	Bongo	37
1006	947	bpu	Bongu	37
1007	948	bok	Bonjo	37
1008	949	bvg	Bonkeng	37
1009	950	bop	Bonkiman	37
1010	951	bnc	Bontok	37
1011	952	bnb	Bookan	37
1012	953	bnl	Boon	37
1013	954	bvf	Boor	37
1014	955	boa	Bora	37
1015	956	gax	Borana-Arsi-Guji Oromo	37
1016	957	kvn	Border Kuna	37
1017	958	gai	Borei	37
1018	959	fue	Borgu Fulfulde	37
1019	960	bwo	Boro (Ethiopia)	37
1020	961	xxb	Boro (Ghana)	37
1021	962	ksr	Borong	37
1022	963	brn	Boruca	37
1023	964	bor	Borôro	37
1024	965	bwf	Boselewa	37
1025	966	bqs	Bosngun	37
1026	967	bos	Bosnian	37
1027	968	bmj	Bote-Majhi	37
1028	969	bph	Botlikh	37
1029	970	sbl	Botolan Sambal	37
1030	971	nku	Bouna Kulango	37
1031	972	suo	Bouni	37
1032	973	pcc	Bouyei	37
1033	974	bzo	Bozaba	37
1034	975	aof	Bragat	37
1035	976	brh	Brahui	37
1036	977	bra	Braj	37
1037	978	brb	Brao	37
1038	979	bzs	Brazilian Sign Language	37
1039	980	buq	Brem	37
1040	981	brq	Breri	37
1041	982	bre	Breton	37
1042	983	bzd	Bribri	37
1043	984	rib	Bribri Sign Language	37
1044	985	bzt	Brithenig	37
1045	986	bfi	British Sign Language	37
1046	987	bro	Brokkat	37
1047	988	sgt	Brokpake	37
1048	989	bkk	Brokskat	37
1049	990	plw	Brooke's Point Palawano	37
1050	991	bpl	Broome Pearling Lugger Pidgin	37
1051	992	rnb	Brunca Sign Language	37
1052	993	kxd	Brunei	37
1053	994	bsb	Brunei Bisaya	37
1185	1126	cky	Cakfem-Mushere	37
1054	995	xpz	Bruny Island Tasmanian	37
1055	996	zbu	Bu (Bauchi State)	37
1056	997	jid	Bu (Kaduna State)	37
1057	998	bwx	Bu-Nao Bunu	37
1058	999	bub	Bua	37
1059	1000	cbl	Bualkhaw Chin	37
1060	1001	box	Buamu	37
1061	1002	bvb	Bube	37
1062	1003	buw	Bubi	37
1063	1004	bbx	Bubia	37
1064	1005	stt	Budeh Stieng	37
1065	1006	btp	Budibud	37
1066	1007	bdx	Budong-Budong	37
1067	1008	buu	Budu	37
1068	1009	bdk	Budukh	37
1069	1010	bdm	Buduma	37
1070	1011	bja	Budza	37
1071	1012	bbh	Bugan	37
1072	1013	buk	Bugawac	37
1073	1014	bgt	Bughotu	37
1074	1015	bug	Buginese	37
1075	1016	sab	Buglere	37
1076	1017	bgg	Bugun	37
1077	1018	ubl	Buhi'non Bikol	37
1078	1019	bku	Buhid	37
1079	1020	bxh	Buhutu	37
1080	1021	sdo	Bukar-Sadung Bidayuh	37
1081	1022	bvk	Bukat	37
1082	1023	bhh	Bukharic	37
1083	1024	bvu	Bukit Malay	37
1084	1025	bkn	Bukitan	37
1085	1026	ape	Bukiyip	37
1086	1027	tkb	Buksa	37
1087	1028	bxk	Bukusu	37
1088	1029	buz	Bukwen	37
1089	1030	bul	Bulgarian	37
1090	1031	bqn	Bulgarian Sign Language	37
1091	1032	bmp	Bulgebi	37
1092	1033	uly	Buli	37
1093	1034	bwu	Buli (Ghana)	37
1094	1035	bzq	Buli (Indonesia)	37
1095	1036	buy	Bullom So	37
1096	1037	sti	Bulo Stieng	37
1097	1038	bum	Bulu (Cameroon)	37
1098	1039	bjl	Bulu (Papua New Guinea)	37
1099	1040	bmv	Bum	37
1100	1041	byp	Bumaji	37
1101	1042	bvp	Bumang	37
1102	1043	aon	Bumbita Arapesh	37
1103	1044	kjz	Bumthangkha	37
1104	1045	buv	Bun	37
1105	1046	bvn	Buna	37
1106	1047	bfn	Bunak	37
1107	1048	bdd	Bunama	37
1108	1049	bns	Bundeli	37
1109	1050	bqd	Bung	37
1110	1051	but	Bungain	37
1111	1052	xbg	Bunganditj	37
1112	1053	bkz	Bungku	37
1113	1054	wun	Bungu	37
1114	1055	dgb	Bunoge Dogon	37
1115	1056	bck	Bunuba	37
1116	1057	bnn	Bunun	37
1117	1058	blf	Buol	37
1118	1059	bwr	Bura-Pabir	37
1119	1060	bys	Burak	37
1120	1061	bkg	Buraka	37
1121	1062	bvr	Burarra	37
1122	1063	bti	Burate	37
1123	1064	bxn	Burduna	37
1124	1065	bvh	Bure	37
1125	1066	bua	Buriat	37
1126	1067	bji	Burji	37
1127	1068	vrt	Burmbar	37
1128	1069	mya	Burmese	37
1129	1070	bzu	Burmeso	37
1130	1071	mhs	Buru (Indonesia)	37
1131	1072	bqw	Buru (Nigeria)	37
1132	1073	bry	Burui	37
1133	1074	aip	Burumakok	37
1134	1075	bdi	Burun	37
1135	1076	lsb	Burundian Sign Language	37
1136	1077	bds	Burunge	37
1137	1078	bsk	Burushaski	37
1138	1079	bqr	Burusu	37
1139	1080	asi	Buruwai	37
1140	1081	bqp	Busa	37
1141	1082	bxs	Busam	37
1142	1083	bsm	Busami	37
1143	1084	bfg	Busang Kayan	37
1144	1085	buc	Bushi	37
1145	1086	buf	Bushoong	37
1146	1087	bso	Buso	37
1147	1088	bup	Busoa	37
1148	1089	dox	Bussa	37
1149	1090	bju	Busuu	37
1150	1091	kyb	Butbut Kalinga	37
1151	1092	bnr	Butmas-Tur	37
1152	1093	btw	Butuanon	37
1153	1094	bhs	Buwal	37
1154	1095	byi	Buyu	37
1155	1096	jiy	Buyuan Jinuo	37
1156	1097	bww	Bwa	37
1157	1098	bwd	Bwaidoka	37
1158	1099	tte	Bwanabwana	37
1159	1100	bwa	Bwatoo	37
1160	1101	bwe	Bwe Karen	37
1161	1102	bwl	Bwela	37
1162	1103	bwc	Bwile	37
1163	1104	bwz	Bwisi	37
1164	1105	bee	Byangsi	37
1165	1106	mkk	Byep	37
1166	1107	khd	Bädi Kanum	37
1167	1108	dri	C'Lela	37
1168	1109	msq	Caac	37
1169	1110	cbb	Cabiyarí	37
1170	1111	cjp	Cabécar	37
1171	1112	miu	Cacaloxtepec Mixtec	37
1172	1113	ccr	Cacaopera	37
1173	1114	roc	Cacgia Roglai	37
1174	1115	cbv	Cacua	37
1175	1116	cad	Caddo	37
1176	1117	ccd	Cafundo Creole	37
1177	1118	cah	Cahuarano	37
1178	1119	chl	Cahuilla	37
1179	1120	qvc	Cajamarca Quechua	37
1180	1121	qvl	Cajatambo North Lima Quechua	37
1181	1122	zad	Cajonos Zapotec	37
1182	1123	frc	Cajun French	37
1183	1124	ckx	Caka	37
1184	1125	ckz	Cakchiquel-Quiché Mixed Language	37
1186	1127	tbk	Calamian Tagbanwa	37
1187	1128	qud	Calderón Highland Quichua	37
1188	1129	caw	Callawalla	37
1189	1130	clu	Caluyanun	37
1190	1131	rmq	Caló	37
1191	1132	csx	Cambodian Sign Language	37
1192	1133	mcu	Cameroon Mambila	37
1193	1134	wes	Cameroon Pidgin	37
1194	1135	rab	Camling	37
1195	1136	cml	Campalagian	37
1196	1137	sro	Campidanese Sardinian	37
1197	1138	kbh	Camsá	37
1198	1139	cmt	Camtho	37
1199	1140	xcc	Camunic	37
1200	1141	cbu	Candoshi-Shapra	37
1201	1142	ram	Canela	37
1202	1143	caz	Canichana	37
1203	1144	mlc	Cao Lan	37
1204	1145	cov	Cao Miao	37
1205	1146	kaq	Capanahua	37
1206	1147	cps	Capiznon	37
1207	1148	cpg	Cappadocian Greek	37
1208	1149	cot	Caquinte	37
1209	1150	caq	Car Nicobarese	37
1210	1151	cfd	Cara	37
1211	1152	cby	Carabayo	37
1212	1153	crf	Caramanta	37
1213	1154	cbc	Carapana	37
1214	1155	xcr	Carian	37
1215	1156	hns	Caribbean Hindustani	37
1216	1157	jvn	Caribbean Javanese	37
1217	1158	cbd	Carijona	37
1218	1159	crr	Carolina Algonquian	37
1219	1160	cal	Carolinian	37
1220	1161	rmc	Carpathian Romani	37
1221	1162	crx	Carrier	37
1222	1163	cbr	Cashibo-Cacataibo	37
1223	1164	cbs	Cashinahua	37
1224	1165	dgc	Casiguran Dumagat Agta	37
1225	1166	asc	Casuarina Coast Asmat	37
1226	1167	csc	Catalan Sign Language	37
1227	1168	cat	Catalan, Valencian	37
1228	1169	chc	Catawba	37
1229	1170	cav	Cavineña	37
1230	1171	cyb	Cayubaba	37
1231	1172	cay	Cayuga	37
1232	1173	xcy	Cayuse	37
1233	1174	qxr	Cañar Highland Quichua	37
1234	1175	nat	Ca̱hungwa̱rya̱	37
1235	1176	sef	Cebaara Senoufo	37
1236	1177	ceb	Cebuano	37
1237	1178	xce	Celtiberian	37
1238	1179	cam	Cemuhî	37
1239	1180	cen	Cen	37
1240	1181	cns	Central Asmat	37
1241	1182	tzm	Central Atlas Tamazight	37
1242	1183	awu	Central Awyu	37
1243	1184	ayr	Central Aymara	37
1244	1185	bca	Central Bai	37
1245	1186	zbc	Central Berawan	37
1246	1187	bcl	Central Bikol	37
1247	1188	lbk	Central Bontok	37
1248	1189	agt	Central Cagayan Agta	37
1249	1190	grv	Central Grebo	37
1250	1191	zch	Central Hongshuihe Zhuang	37
1251	1192	nch	Central Huasteca Nahuatl	37
1252	1193	hmc	Central Huishui Hmong	37
1253	1194	knc	Central Kanuri	37
1254	1195	ckb	Central Kurdish	37
1255	1196	mwo	Central Maewo	37
1256	1197	pse	Central Malay	37
1257	1198	mxz	Central Masela	37
1258	1199	hmm	Central Mashan Hmong	37
1259	1200	maz	Central Mazahua	37
1260	1201	mel	Central Melanau	37
1261	1202	cmo	Central Mnong	37
1262	1203	nhn	Central Nahuatl	37
1263	1204	ncb	Central Nicobarese	37
1264	1205	ojc	Central Ojibwa	37
1265	1206	ryu	Central Okinawan	37
1266	1207	plc	Central Palawano	37
1267	1208	pbs	Central Pame	37
1268	1209	pst	Central Pashto	37
1269	1210	poo	Central Pomo	37
1270	1211	ncx	Central Puebla Nahuatl	37
1271	1212	sml	Central Sama	37
1272	1213	ess	Central Siberian Yupik	37
1273	1214	csm	Central Sierra Miwok	37
1274	1215	syb	Central Subanen	37
1275	1216	tgt	Central Tagbanwa	37
1276	1217	tar	Central Tarahumara	37
1277	1218	tuf	Central Tunebo	37
1278	1219	esu	Central Yupik	37
1279	1220	fuq	Central-Eastern Niger Fulfulde	37
1280	1221	cet	Centúúm	37
1281	1222	cme	Cerma	37
1282	1223	cxh	Cha'ari	37
1283	1224	sbf	Chabu	37
1284	1225	quk	Chachapoyas Quechua	37
1285	1226	cbi	Chachi	37
1286	1227	shu	Chadian Arabic	37
1287	1228	cds	Chadian Sign Language	37
1288	1229	cdy	Chadong	37
1289	1230	chg	Chagatai	37
1290	1231	ciy	Chaima	37
1291	1232	ckh	Chak	37
1292	1233	cli	Chakali	37
1293	1234	ckm	Chakavian	37
1294	1235	ccp	Chakma	37
1295	1236	cll	Chala	37
1296	1237	cld	Chaldean Neo-Aramaic	37
1297	1238	tgf	Chalikha	37
1298	1239	ceg	Chamacoco	37
1299	1240	cji	Chamalal	37
1300	1241	cdh	Chambeali	37
1301	1242	can	Chambri	37
1302	1243	ccc	Chamicuro	37
1303	1244	cha	Chamorro	37
1304	1245	nbc	Chang Naga	37
1305	1246	cga	Changriwa	37
1306	1247	cna	Changthang	37
1307	1248	chx	Chantyal	37
1308	1249	caj	Chané	37
1309	1250	cra	Chara	37
1310	1251	cdn	Chaudangsi	37
1311	1252	crv	Chaura	37
1312	1253	cbk	Chavacano	37
1313	1254	cbt	Chayahuita	37
1314	1255	mih	Chayuco Mixtec	37
1315	1256	xtb	Chazumba Mixtec	37
1316	1257	ruk	Che	37
1317	1258	che	Chechen	37
1318	1259	mrn	Cheke Holo	37
1319	1260	xch	Chemakum	37
1320	1261	cjn	Chenapian	37
1321	1262	cde	Chenchu	37
1322	1263	cnu	Chenoua	37
1323	1264	cdm	Chepang	37
1324	1265	ycp	Chepya	37
1325	1266	cpn	Cherepon	37
1326	1267	chr	Cherokee	37
1327	1268	ych	Chesu	37
1328	1269	ctc	Chetco	37
1329	1270	cwg	Chewong	37
1330	1271	chy	Cheyenne	37
1331	1272	hne	Chhattisgarhi	37
1332	1273	ctn	Chhintange	37
1333	1274	cur	Chhulung	37
1334	1275	csd	Chiangmai Sign Language	37
1335	1276	cip	Chiapanec	37
1336	1277	chb	Chibcha	37
1337	1278	trs	Chicahuaxtla Triqui	37
1338	1279	nya	Chichewa, Chewa, Nyanja	37
1339	1280	zpv	Chichicapan Zapotec	37
1340	1281	pei	Chichimeca-Jonaz	37
1341	1282	cic	Chickasaw	37
1342	1283	cob	Chicomuceltec	37
1343	1284	cgg	Chiga	37
1344	1285	mii	Chigmecatitlán Mixtec	37
1345	1286	clc	Chilcotin	37
1346	1287	csg	Chilean Sign Language	37
1347	1288	clh	Chilisso	37
1348	1289	csa	Chiltepec Chinantec	37
1349	1290	zoh	Chimalapa Zoque	37
1350	1291	cid	Chimariko	37
1351	1292	qug	Chimborazo Highland Quichua	37
1352	1293	cbg	Chimila	37
1353	1294	bxu	China Buriat	37
1354	1295	cih	Chinali	37
1355	1296	cnb	Chinbon Chin	37
1356	1297	qxc	Chincha Quechua	37
1357	1298	zho	Chinese	37
1358	1299	cpi	Chinese Pidgin English	37
1359	1300	csl	Chinese Sign Language	37
1360	1301	chh	Chinook	37
1361	1302	chn	Chinook jargon	37
1362	1303	cap	Chipaya	37
1363	1304	chp	Chipewyan	37
1364	1305	ciw	Chippewa	37
1365	1306	maq	Chiquihuitlán Mazatec	37
1366	1307	cax	Chiquitano	37
1367	1308	qxa	Chiquián Ancash Quechua	37
1368	1309	nhd	Chiripá	37
1369	1310	cdf	Chiru	37
1370	1311	ctm	Chitimacha	37
1371	1312	cik	Chitkuli Kinnauri	37
1372	1313	ctg	Chittagonian	37
1373	1314	the	Chitwania Tharu	37
1374	1315	zpc	Choapan Zapotec	37
1375	1316	cgk	Chocangacakha	37
1376	1317	coz	Chochotec	37
1377	1318	cho	Choctaw	37
1378	1319	cdi	Chodri	37
1379	1320	nri	Chokri Naga	37
1380	1321	cjk	Chokwe	37
1381	1322	ctu	Chol	37
1382	1323	cht	Cholón	37
1383	1324	cog	Chong	37
1384	1325	cda	Choni	37
1385	1326	coh	Chonyi-Dzihana-Kauma	37
1386	1327	cce	Chopi	37
1387	1328	xco	Chorasmian	37
1388	1329	caa	Chortí	37
1389	1330	nct	Chothe Naga	37
1390	1331	crw	Chrau	37
1391	1332	cje	Chru	37
1392	1333	cqd	Chuanqiandian Cluster Miao	37
1393	1334	cjv	Chuave	37
1394	1335	cvg	Chug	37
1395	1336	cac	Chuj	37
1396	1337	cuh	Chuka	37
1397	1338	ckt	Chukot	37
1398	1339	cuw	Chukwa	37
1399	1340	clw	Chulym	37
1400	1341	ncu	Chumburung	37
1401	1342	cnq	Chung	37
1402	1343	cdj	Churahi	37
1403	1344	scb	Chut	37
1404	1345	chk	Chuukese	37
1405	1346	xcv	Chuvantsy	37
1406	1347	chv	Chuvash	37
1407	1348	chw	Chuwabu	37
1408	1349	cao	Chácobo	37
1409	1350	cib	Ci Gbe	37
1410	1351	cia	Cia-Cia	37
1411	1352	ckl	Cibak	37
1412	1353	awc	Cicipu	37
1413	1354	cim	Cimbrian	37
1414	1355	cdr	Cinda-Regi-Tiyal	37
1415	1356	cie	Cineni	37
1416	1357	cin	Cinta Larga	37
1417	1358	xcg	Cisalpine Gaulish	37
1418	1359	asg	Cishingini	37
1419	1360	txt	Citak	37
1420	1361	tgd	Ciwogai	37
1421	1362	clm	Clallam	37
1422	1363	xcl	Classical Armenian	37
1423	1364	myz	Classical Mandaic	37
1424	1365	cmg	Classical Mongolian	37
1425	1366	nci	Classical Nahuatl	37
1426	1367	nwc	Classical Newari	37
1427	1368	qwc	Classical Quechua	37
1428	1369	cls	Classical Sanskrit	37
1429	1370	syc	Classical Syriac	37
1430	1371	xct	Classical Tibetan	37
1431	1372	xcw	Coahuilteco	37
1432	1373	csi	Coast Miwok	37
1433	1374	kjc	Coastal Konjo	37
1434	1375	zca	Coatecas Altas Zapotec	37
1435	1376	naz	Coatepec Nahuatl	37
1436	1377	mco	Coatlán Mixe	37
1437	1378	zps	Coatlán Zapotec	37
1438	1379	miz	Coatzospan Mixtec	37
1439	1380	cod	Cocama-Cocamilla	37
1440	1381	coj	Cochimi	37
1441	1382	coc	Cocopa	37
1442	1383	coa	Cocos Islands Malay	37
1443	1384	crd	Coeur d'Alene	37
1444	1385	con	Cofán	37
1445	1386	kog	Cogui	37
1446	1387	liw	Col	37
1447	1388	csn	Colombian Sign Language	37
1448	1389	gct	Colonia Tovar German	37
1449	1390	cof	Colorado	37
1450	1391	col	Columbia-Wenatchi	37
1451	1392	cco	Comaltepec Chinantec	37
1452	1393	com	Comanche	37
1453	1394	xcm	Comecrudo	37
1454	1395	cfg	Como Karim	37
1455	1396	coo	Comox	37
1456	1397	cno	Con	37
1457	1398	swc	Congo Swahili	37
1458	1399	csz	Coos	37
1459	1400	zoc	Copainalá Zoque	37
1460	1401	trc	Copala Triqui	37
1461	1402	cop	Coptic	37
1462	1403	coq	Coquille	37
1463	1404	cry	Cori	37
1464	1405	cor	Cornish	37
1465	1406	qwa	Corongo Ancash Quechua	37
1466	1407	cos	Corsican	37
1467	1408	csr	Costa Rican Sign Language	37
1468	1409	mta	Cotabato Manobo	37
1469	1410	xcn	Cotoname	37
1470	1411	cow	Cowlitz	37
1471	1412	pbf	Coyotepec Popoloca	37
1472	1413	toc	Coyutla Totonac	37
1473	1414	cre	Cree	37
1474	1415	mus	Creek	37
1475	1416	crh	Crimean Tatar	37
1476	1417	csq	Croatia Sign Language	37
1477	1418	hrv	Croatian	37
1478	1419	mfn	Cross River Mbembe	37
1479	1420	cro	Crow	37
1480	1421	crz	Cruzeño	37
1481	1422	cua	Cua	37
1482	1423	csf	Cuba Sign Language	37
1483	1424	cub	Cubeo	37
1484	1425	cui	Cuiba	37
1485	1426	cuy	Cuitlatec	37
1486	1427	cul	Culina	37
1487	1428	cuo	Cumanagoto	37
1488	1429	xcb	Cumbric	37
1489	1430	cuq	Cun	37
1490	1431	xlu	Cuneiform Luwian	37
1491	1432	cup	Cupeño	37
1492	1433	xcu	Curonian	37
1493	1434	kpc	Curripaco	37
1494	1435	quz	Cusco Quechua	37
1495	1436	ccl	Cutchi-Swahili	37
1496	1437	cuv	Cuvok	37
1497	1438	xtu	Cuyamecalco Mixtec	37
1498	1439	cyo	Cuyonon	37
1499	1440	bwy	Cwi Bwamu	37
1500	1441	acy	Cypriot Arabic	37
1501	1442	ces	Czech	37
1502	1443	cse	Czech Sign Language	37
1503	1444	cnc	Côông	37
1504	1445	kzf	Da'a Kaili	37
1505	1446	dao	Daai Chin	37
1506	1447	bpa	Daakaka	37
1507	1448	lni	Daantanai'	37
1508	1449	dsh	Daasanach	37
1509	1450	dtn	Daatsʼíin	37
1510	1451	dbq	Daba	37
1511	1452	dbr	Dabarre	37
1512	1453	dbe	Dabe	37
1513	1454	xdc	Dacian	37
1514	1455	dda	Dadi Dadi	37
1515	1456	mps	Dadibi	37
1516	1457	dbd	Dadiya	37
1517	1458	dgz	Daga	37
1518	1459	dgd	Dagaari Dioula	37
1519	1460	dgk	Dagba	37
1520	1461	dag	Dagbani	37
1521	1462	dec	Dagik	37
1522	1463	dgn	Dagoman	37
1523	1464	dlk	Dahalik	37
1524	1465	dal	Dahalo	37
1525	1466	das	Daho-Doo	37
1526	1467	dij	Dai	37
1527	1468	zhd	Dai Zhuang	37
1528	1469	drb	Dair	37
1529	1470	dkk	Dakka	37
1530	1471	dak	Dakota	37
1531	1472	dka	Dakpakha	37
1532	1473	ngk	Dalabon	37
1533	1474	dlm	Dalmatian	37
1534	1475	bev	Daloa Bété	37
1535	1476	dmm	Dama	37
1536	1477	dam	Damakawa	37
1537	1478	uhn	Damal	37
1538	1479	dac	Dambi	37
1539	1480	dml	Dameli	37
1540	1481	dms	Dampelas	37
1541	1482	dnj	Dan	37
1542	1483	dnr	Danaru	37
1543	1484	dnu	Danau	37
1544	1485	daq	Dandami Maria	37
1545	1486	daa	Dangaléat	37
1546	1487	thl	Dangaura Tharu	37
1547	1488	dan	Danish	37
1548	1489	dsl	Danish Sign Language	37
1549	1490	aso	Dano	37
1550	1491	dnv	Danu	37
1551	1492	daz	Dao	37
1552	1493	dnd	Daonda	37
1553	1494	djc	Dar Daju Daju	37
1554	1495	daj	Dar Fur Daju	37
1555	1496	dau	Dar Sila Daju	37
1556	1497	dry	Darai	37
1557	1498	dar	Dargwa	37
1558	1499	prs	Dari	37
1559	1500	xda	Darkinyung	37
1560	1501	dln	Darlong	37
1561	1502	drd	Darmiya	37
1562	1503	dro	Daro-Matu Melanau	37
1563	1504	dot	Dass	37
1564	1505	tcc	Datooga	37
1565	1506	dgw	Daungwurrung	37
1566	1507	dta	Daur	37
1567	1508	daw	Davawenyo	37
1568	1509	dww	Dawawa	37
1569	1510	ddw	Dawera-Daweloor	37
1570	1511	dwk	Dawik Kui	37
1571	1512	dwr	Dawro	37
1572	1513	dai	Day	37
1573	1514	dax	Dayi	37
1574	1515	dzd	Daza	37
1575	1516	dzg	Dazaga	37
1576	1517	dcc	Deccan	37
1577	1518	ded	Dedua	37
1578	1519	afn	Defaka	37
1579	1520	gbh	Defi Gbe	37
1580	1521	mzw	Deg	37
1581	1522	deg	Degema	37
1582	1523	dge	Degenan	37
1583	1524	ing	Degexit'an	37
1584	1525	dhv	Dehu	37
1585	1526	deh	Dehwari	37
1586	1527	dek	Dek	37
1587	1528	row	Dela-Oenale	37
1588	1529	del	Delaware	37
1589	1530	ntr	Delo	37
1590	1531	dem	Dem	37
1591	1532	dmx	Dema	37
1592	1533	dei	Demisa	37
1593	1534	dmy	Demta	37
1594	1535	ddn	Dendi (Benin)	37
1595	1536	deq	Dendi (Central African Republic)	37
1596	1537	dez	Dengese	37
1597	1538	dnk	Dengka	37
1598	1539	dbb	Deno	37
1599	1540	anv	Denya	37
1600	1541	dny	Dení	37
1601	1542	der	Deori	37
1602	1543	kbv	Dera (Indonesia)	37
1603	1544	kna	Dera (Nigeria)	37
1604	1545	des	Desano	37
1605	1546	dso	Desiya	37
1606	1547	dwz	Dewas Rai	37
1607	1548	dee	Dewoin	37
1608	1549	def	Dezfuli	37
1609	1550	dgh	Dghwede	37
1610	1551	dhs	Dhaiso	37
1611	1552	dhl	Dhalandji	37
1612	1553	dhg	Dhangu-Djangu	37
1613	1554	dhn	Dhanki	37
1614	1555	dhw	Dhanwar (Nepal)	37
1615	1556	nfa	Dhao	37
1616	1557	tbh	Dharawal	37
1617	1558	dhr	Dhargari	37
1618	1559	xdk	Dharuk	37
1619	1560	xgm	Dharumbal	37
1620	1561	mki	Dhatki	37
1621	1562	dhi	Dhimal	37
1622	1563	dho	Dhodia	37
1623	1564	adf	Dhofari Arabic	37
1624	1565	ddr	Dhudhuroa	37
1625	1566	dhd	Dhundari	37
1626	1567	dhx	Dhungaloo	37
1627	1568	dhu	Dhurga	37
1628	1569	dwu	Dhuwal	37
1629	1570	dwy	Dhuwaya	37
1630	1571	dia	Dia	37
1631	1572	mbd	Dibabawon Manobo	37
1632	1573	dby	Dibiyaso	37
1633	1574	dio	Dibo	37
1634	1575	bvx	Dibole	37
1635	1576	duy	Dicamay Agta	37
1636	1577	did	Didinga	37
1637	1578	ddo	Dido	37
1638	1579	dif	Dieri	37
1639	1580	mhu	Digaro-Mishmi	37
1640	1581	dig	Digo	37
1641	1582	dur	Dii	37
1642	1583	cfa	Dijim-Bwilim	37
1643	1584	dil	Dilling	37
1644	1585	jma	Dima	37
1645	1586	dis	Dimasa	37
1646	1587	dii	Dimbong	37
1647	1588	dim	Dime	37
1648	1589	diq	Dimli (individual language)	37
1649	1590	diz	Ding	37
1650	1591	din	Dinka	37
1651	1592	nzr	Dir-Nyamzak-Mbarimi	37
1652	1593	gdl	Dirasha	37
1653	1594	dwa	Diri	37
1654	1595	diu	Diriku	37
1655	1596	dir	Dirim	37
1656	1597	dsi	Disa	37
1657	1598	tbz	Ditammari	37
1658	1599	dtd	Ditidaht	37
1659	1600	diy	Diuwe	37
1660	1601	xtd	Diuxi-Tilantongo Mixtec	37
1661	1602	dix	Dixon Reef	37
1662	1603	mdx	Dizin	37
1663	1604	dyy	Djabugay	37
1664	1605	tjw	Djabwurrung	37
1665	1606	dja	Djadjawurrung	37
1666	1607	djr	Djambarrpuyngu	37
1667	1608	djd	Djamindjung	37
1668	1609	djf	Djangun	37
1669	1610	djw	Djawi	37
1670	1611	djj	Djeebbana	37
1671	1612	dyi	Djimini Senoufo	37
1672	1613	dji	Djinang	37
1673	1614	djb	Djinba	37
1674	1615	dze	Djiwarli	37
1675	1616	kvo	Dobel	37
1676	1617	dob	Dobu	37
1677	1618	doe	Doe	37
1678	1619	dgg	Doga	37
1679	1620	dgx	Doghoro	37
1680	1621	dgs	Dogoso	37
1681	1622	dos	Dogosé	37
1682	1623	dgo	Dogri (individual language)	37
1683	1624	doi	Dogri (macrolanguage)	37
1684	1625	dbg	Dogul Dom Dogon	37
1685	1626	dbi	Doka	37
1686	1627	uya	Doko-Uyanga	37
1687	1628	dsk	Dokshi	37
1688	1629	dlg	Dolgan	37
1689	1630	dre	Dolpo	37
1690	1631	doa	Dom	37
1691	1632	dmk	Domaaki	37
1692	1633	rmt	Domari	37
1693	1634	dov	Dombe	37
1694	1635	doq	Dominican Sign Language	37
1695	1636	doy	Dompo	37
1696	1637	dof	Domu	37
1697	1638	dev	Domung	37
1698	1639	dok	Dondo	37
1699	1640	doh	Dong	37
1700	1641	doo	Dongo	37
1701	1642	ddd	Dongotono	37
1702	1643	yik	Dongshanba Lalo	37
1703	1644	sce	Dongxiang	37
1704	1645	dds	Donno So Dogon	37
1705	1646	dde	Doondo	37
1706	1647	dor	Dori'o	37
1707	1648	kqc	Doromu-Koki	37
1708	1649	doz	Dorze	37
1709	1650	dol	Doso	37
1710	1651	dty	Dotyali	37
1711	1652	tds	Doutai	37
1712	1653	dow	Doyayo	37
1713	1654	drt	Drents	37
1714	1655	duu	Drung	37
1715	1656	dua	Duala	37
1716	1657	dup	Duano	37
1717	1658	dva	Duau	37
1718	1659	dub	Dubli	37
1719	1660	dmu	Dubu	37
1720	1661	ndu	Dugun	37
1721	1662	dbm	Duguri	37
1722	1663	dme	Dugwor	37
1723	1664	kbz	Duhwa	37
1724	1665	nke	Duke	37
1725	1666	dbo	Dulbu	37
1726	1667	duz	Duli-Gey	37
1727	1668	dma	Duma	37
1728	1669	duf	Dumbea	37
1729	1670	dus	Dumi	37
1730	1671	dmv	Dumpas	37
1731	1672	dui	Dumun	37
1732	1673	duc	Duna	37
1733	1674	dng	Dungan	37
1734	1675	raa	Dungmali	37
1735	1676	duh	Dungra Bhil	37
1736	1677	dbv	Dungu	37
1737	1678	duo	Dupaninan Agta	37
1738	1679	drq	Dura	37
1739	1680	mvp	Duri	37
1740	1681	dbn	Duriankere	37
1741	1682	krp	Durop	37
1742	1683	dug	Duruma	37
1743	1684	pci	Duruwa	37
1744	1685	dsn	Dusner	37
1745	1686	dun	Dusun Deyah	37
1746	1687	duq	Dusun Malang	37
1747	1688	duw	Dusun Witu	37
1748	1689	nld	Dutch	37
1749	1690	dse	Dutch Sign Language	37
1750	1691	dws	Dutton World Speedwords	37
1751	1692	dux	Duungooma	37
1752	1693	dae	Duupa	37
1753	1694	duv	Duvle	37
1754	1695	dbp	Duwai	37
1755	1696	gve	Duwet	37
1756	1697	ldb	Dũya	37
1757	1698	nnu	Dwang	37
1758	1699	dyb	Dyaberdyaber	37
1759	1700	dya	Dyan	37
1760	1701	dyn	Dyangadi	37
1761	1702	dyr	Dyarim	37
1762	1703	dbl	Dyirbal	37
1763	1704	dyd	Dyugun	37
1764	1705	dyu	Dyula	37
1765	1706	jen	Dza	37
1766	1707	dzl	Dzalakha	37
1767	1708	dzn	Dzando	37
1768	1709	bpn	Dzao Min	37
1769	1710	dzo	Dzongkha	37
1770	1711	dnn	Dzùùngoo	37
1771	1712	kwa	Dâw	37
1772	1713	eee	E	37
1773	1714	yzg	E'ma Buyang	37
1774	1715	pbh	E'ñapa Woromaipu	37
1775	1716	xtr	Early Tripuri	37
1776	1717	omb	East Ambae	37
1777	1718	zbe	East Berawan	37
1778	1719	dmr	East Damar	37
1779	1720	fud	East Futuna	37
1780	1721	kjs	East Kewa	37
1781	1722	lma	East Limba	37
1782	1723	mky	East Makian	37
1783	1724	vme	East Masela	37
1784	1725	nle	East Nyala	37
1785	1726	tre	East Tarangan	37
1786	1727	yuy	East Yugur	37
1787	1728	aaq	Eastern Abnaki	37
1788	1729	acp	Eastern Acipa	37
1789	1730	qve	Eastern Apurímac Quechua	37
1790	1731	aer	Eastern Arrernte	37
1791	1732	bgp	Eastern Balochi	37
1792	1733	gui	Eastern Bolivian Guaraní	37
1793	1734	ebk	Eastern Bontok	37
1794	1735	bru	Eastern Bru	37
1795	1736	ike	Eastern Canadian Inuktitut	37
1796	1737	cjm	Eastern Cham	37
1797	1738	azd	Eastern Durango Nahuatl	37
1798	1739	avl	Eastern Egyptian Bedawi Arabic	37
1799	1740	frs	Eastern Frisian	37
1800	1741	tge	Eastern Gorkha Tamang	37
1801	1742	cly	Eastern Highland Chatino	37
1802	1743	otm	Eastern Highland Otomi	37
1803	1744	zeh	Eastern Hongshuihe Zhuang	37
1804	1745	nhe	Eastern Huasteca Nahuatl	37
1805	1746	hme	Eastern Huishui Hmong	37
1806	1747	xrb	Eastern Karaboro	37
1807	1748	ktv	Eastern Katu	37
1808	1749	eky	Eastern Kayah	37
1809	1750	kee	Eastern Keres	37
1810	1751	cek	Eastern Khumi Chin	37
1811	1752	kqo	Eastern Krahn	37
1812	1753	yit	Eastern Lalu	37
1813	1754	lwl	Eastern Lawa	37
1814	1755	mgp	Eastern Magar	37
1815	1756	emk	Eastern Maninkakan	37
1816	1757	mhr	Eastern Mari	37
1817	1758	djk	Eastern Maroon Creole	37
1818	1759	emg	Eastern Meohang	37
1819	1760	emq	Eastern Minyag	37
1820	1761	mng	Eastern Mnong	37
1821	1762	emu	Eastern Muria	37
1822	1763	nea	Eastern Ngad'a	37
1823	1764	nos	Eastern Nisu	37
1824	1765	ojg	Eastern Ojibwa	37
1825	1766	hae	Eastern Oromo	37
1826	1767	kif	Eastern Parbate Kham	37
1827	1768	pez	Eastern Penan	37
1828	1769	peb	Eastern Pomo	37
1829	1770	hmq	Eastern Qiandong Miao	37
1830	1771	sfe	Eastern Subanen	37
1831	1772	taj	Eastern Tamang	37
1832	1773	bnj	Eastern Tawbuid	37
1833	1774	muq	Eastern Xiangxi Miao	37
1834	1775	gbx	Eastern Xwla Gbe	37
1835	1776	ydd	Eastern Yiddish	37
1836	1777	igb	Ebira	37
1837	1778	xeb	Eblan	37
1838	1779	ebr	Ebrié	37
1839	1780	ebg	Ebughu	37
1840	1781	ecs	Ecuadorian Sign Language	37
1841	1782	cbj	Ede Cabe	37
1842	1783	ica	Ede Ica	37
1843	1784	idd	Ede Idaca	37
1844	1785	ijj	Ede Ije	37
1845	1786	awy	Edera Awyu	37
1846	1787	etr	Edolo	37
1847	1788	xdm	Edomite	37
1848	1789	dbf	Edopi	37
1849	1790	efa	Efai	37
1850	1791	efe	Efe	37
1851	1792	efi	Efik	37
1852	1793	ofu	Efutop	37
1853	1794	ega	Ega	37
1854	1795	ego	Eggon	37
1855	1796	esl	Egypt Sign Language	37
1856	1797	egy	Egyptian (Ancient)	37
1857	1798	arz	Egyptian Arabic	37
1858	1799	ehu	Ehueun	37
1859	1800	eip	Eipomek	37
1860	1801	eit	Eitiep	37
1861	1802	etu	Ejagham	37
1862	1803	eja	Ejamat	37
1863	1804	cey	Ekai Chin	37
1864	1805	eka	Ekajuk	37
1865	1806	ekg	Ekari	37
1866	1807	eki	Eki	37
1867	1808	eke	Ekit	37
1868	1809	ekp	Ekpeye	37
1869	1810	zpp	El Alto Zapotec	37
1870	1811	elh	El Hugeirat	37
1871	1812	elo	El Molo	37
1872	1813	crn	El Nayar Cora	37
1873	1814	elx	Elamite	37
1874	1815	elm	Eleme	37
1875	1816	ele	Elepi	37
1876	1817	ovd	Elfdalian	37
1877	1818	ekm	Elip	37
1878	1819	elk	Elkei	37
1879	1820	zte	Elotepec Zapotec	37
1880	1821	afo	Eloyi	37
1881	1822	mrf	Elseng	37
1882	1823	elu	Elu	37
1883	1824	xly	Elymian	37
1884	1825	mmw	Emae	37
1885	1826	ema	Emai-Iuleha-Ora	37
1886	1827	emn	Eman	37
1887	1828	emb	Embaloh	37
1888	1829	bdc	Emberá-Baudó	37
1889	1830	cto	Emberá-Catío	37
1890	1831	cmi	Emberá-Chamí	37
1891	1832	tdc	Emberá-Tadó	37
1892	1833	ebu	Embu	37
1893	1834	eme	Emerillon	37
1894	1835	egl	Emilian	37
1895	1836	emw	Emplawas	37
1896	1837	enr	Emumu	37
1897	1838	enc	En	37
1898	1839	unk	Enawené-Nawé	37
1899	1840	end	Ende	37
1900	1841	enq	Enga	37
1901	1842	ngr	Engdewu	37
1902	1843	enn	Engenni	37
1903	1844	eno	Enggano	37
1904	1845	eng	English	37
1905	1846	enl	Enlhet	37
1906	1847	ptt	Enrekang	37
1907	1848	enu	Enu	37
1908	1849	enw	Enwan (Akwa Ibom State)	37
1909	1850	env	Enwan (Edo State)	37
1910	1851	enx	Enxet	37
1911	1852	gey	Enya	37
1912	1853	sja	Epena	37
1913	1854	xep	Epi-Olmec	37
1914	1855	epi	Epie	37
1915	1856	emy	Epigraphic Mayan	37
1916	1857	era	Eravallan	37
1917	1858	kjy	Erave	37
1918	1859	twp	Ere	37
1919	1860	ert	Eritai	37
1920	1861	erw	Erokwanas	37
1921	1862	err	Erre	37
1922	1863	emx	Erromintxela	37
1923	1864	ers	Ersu	37
1924	1865	erh	Eruwa	37
1925	1866	myv	Erzya	37
1926	1867	ish	Esan	37
1927	1868	mcq	Ese	37
1928	1869	ese	Ese Ejja	37
1929	1870	esh	Eshtehardi	37
1930	1871	ags	Esimbi	37
1931	1872	esy	Eskayan	37
1932	1873	epo	Esperanto	37
1933	1874	esq	Esselen	37
1934	1875	ots	Estado de México Otomi	37
1935	1876	est	Estonian	37
1936	1877	eso	Estonian Sign Language	37
1937	1878	esm	Esuma	37
1938	1879	etc	Etchemin	37
1939	1880	etb	Etebi	37
1940	1881	etx	Eten	37
1941	1882	ecr	Eteocretan	37
1942	1883	ecy	Eteocypriot	37
1943	1884	eth	Ethiopian Sign Language	37
1944	1885	ich	Etkywan	37
1945	1886	eto	Eton (Cameroon)	37
1946	1887	etn	Eton (Vanuatu)	37
1947	1888	ett	Etruscan	37
1948	1889	utr	Etulo	37
1949	1890	eud	Eudeve	37
1950	1891	bzz	Evant	37
1951	1892	eve	Even	37
1952	1893	evn	Evenki	37
1953	1894	gev	Eviya	37
1954	1895	nou	Ewage-Notu	37
1955	1896	ewe	Ewe	37
1956	1897	ewo	Ewondo	37
1957	1898	ext	Extremaduran	37
1958	1899	eya	Eyak	37
1959	1900	eza	Ezaa	37
1960	1901	fab	Fa d'Ambu	37
1961	1902	faf	Fagani	37
1962	1903	fif	Faifi	37
1963	1904	azt	Faire Atta	37
1964	1905	faj	Faita	37
1965	1906	fai	Faiwol	37
1966	1907	fax	Fala	37
1967	1908	cfm	Falam Chin	37
1968	1909	fli	Fali	37
1969	1910	xfa	Faliscan	37
1970	1911	fam	Fam	37
1971	1912	fng	Fanagalo	37
1972	1913	bjp	Fanamaket	37
1973	1914	fnb	Fanbak	37
1974	1915	fak	Fang (Cameroon)	37
1975	1916	fan	Fang (Equatorial Guinea)	37
1976	1917	fni	Fania	37
1977	1918	fat	Fanti	37
1978	1919	fmu	Far Western Muria	37
1979	1920	gur	Farefare	37
1980	1921	fao	Faroese	37
1981	1922	fqs	Fas	37
1982	1923	faa	Fasu	37
1983	1924	far	Fataleka	37
1984	1925	ddg	Fataluku	37
1985	1926	fau	Fayu	37
1986	1927	fmp	Fe'fe'	37
1987	1928	agl	Fembe	37
1988	1929	fpe	Fernando Po Creole English	37
1989	1930	fer	Feroge	37
1990	1931	hif	Fiji Hindi	37
1991	1932	fij	Fijian	37
1992	1933	fil	Filipino	37
1993	1934	tlp	Filomena Mata-Coahuitlán Totonac	37
1994	1935	fss	Finland-Swedish Sign Language	37
1995	1936	fin	Finnish	37
1996	1937	fse	Finnish Sign Language	37
1997	1938	fag	Finongan	37
1998	1939	fip	Fipa	37
1999	1940	fir	Firan	37
2000	1941	fiw	Fiwaga	37
2001	1942	fly	Flaaitaal	37
2002	1943	fln	Flinders Island	37
2003	1944	flh	Foau	37
2004	1945	foi	Foi	37
2005	1946	ffi	Foia Foia	37
2006	1947	ppo	Folopa	37
2007	1948	fom	Foma	37
2008	1949	fon	Fon	37
2009	1950	fgr	Fongoro	37
2010	1951	fod	Foodo	37
2011	1952	frq	Forak	37
2012	1953	frd	Fordata	37
2013	1954	for	Fore	37
2014	1955	enf	Forest Enets	37
2015	1956	frt	Fortsenal	37
2016	1957	zos	Francisco León Zoque	37
2017	1958	frk	Frankish	37
2018	1959	fra	French	37
2019	1960	fsl	French Sign Language	37
2020	1961	fur	Friulian	37
2021	1962	ful	Fula, Fulah	37
2022	1963	flr	Fuliiru	37
2023	1964	fun	Fulniô	37
2024	1965	fum	Fum	37
2025	1966	ula	Fungwa	37
2026	1967	fvr	Fur	37
2027	1968	fuu	Furu	37
2028	1969	fut	Futuna-Aniwa	37
2029	1970	fuy	Fuyug	37
2030	1971	fwe	Fwe	37
2031	1972	fwa	Fwâi	37
2032	1973	pym	Fyam	37
2033	1974	fie	Fyer	37
2034	1975	gaa	Ga	37
2035	1976	gqa	Ga'anda	37
2036	1977	gdg	Ga'dang	37
2037	1978	ttb	Gaa	37
2038	1979	tbi	Gaam	37
2039	1980	gbw	Gabi-Gabi	37
2040	1981	gab	Gabri	37
2041	1982	xgf	Gabrielino-Fernandeño	37
2042	1983	gdk	Gadang	37
2043	1984	gad	Gaddang	37
2044	1985	gbk	Gaddi	37
2045	1986	ged	Gade	37
2046	1987	gda	Gade Lohar	37
2047	1988	gdh	Gadjerawang	37
2048	1989	gaj	Gadsup	37
2049	1990	gla	Gaelic, Scottish Gaelic	37
2050	1991	gft	Gafat	37
2051	1992	gbu	Gagadu	37
2052	1993	gag	Gagauz	37
2053	1994	btg	Gagnoa Bété	37
2054	1995	ggu	Gagu	37
2055	1996	bfu	Gahri	37
2056	1997	gbf	Gaikundi	37
2057	1998	gic	Gail	37
2058	1999	gcn	Gaina	37
2059	2000	gap	Gal	37
2060	2001	glo	Galambu	37
2061	2002	xga	Galatian	37
2062	2003	gbi	Galela	37
2063	2004	gar	Galeya	37
2064	2005	car	Galibi Carib	37
2065	2006	gce	Galice	37
2066	2007	glg	Galician	37
2067	2008	xgl	Galindan	37
2068	2009	sdn	Gallurese Sardinian	37
2069	2010	adl	Galo	37
2070	2011	gal	Galolen	37
2071	2012	kgj	Gamale Kham	37
2072	2013	gma	Gambera	37
2073	2014	wof	Gambian Wolof	37
2074	2015	kld	Gamilaraay	37
2075	2016	gbl	Gamit	37
2076	2017	gak	Gamkonora	37
2077	2018	gmv	Gamo	37
2078	2019	bte	Gamo-Ningi	37
2079	2020	gan	Gan Chinese	37
2080	2021	gnq	Gana	37
2081	2022	gne	Ganang	37
2082	2023	lug	Ganda	37
2083	2024	gzn	Gane	37
2084	2025	gcd	Ganggalida	37
2085	2026	ggl	Ganglau	37
2086	2027	gnb	Gangte	37
2087	2028	gnl	Gangulu	37
2088	2029	gao	Gants	37
2089	2030	gza	Ganza	37
2090	2031	gnz	Ganzi	37
2091	2032	gga	Gao	37
2092	2033	pwg	Gapapaiwa	37
2093	2034	gbm	Garhwali	37
2094	2035	cab	Garifuna	37
2095	2036	ilg	Garig-Ilgar	37
2096	2037	xgi	Garingbal	37
2097	2038	gll	Garlali	37
2098	2039	grt	Garo	37
2099	2040	gex	Garre	37
2100	2041	wrk	Garrwa	37
2101	2042	gyb	Garus	37
2102	2043	xgr	Garza	37
2103	2044	gaq	Gata'	37
2104	2045	dmc	Gavak	37
2105	2046	gou	Gavar	37
2106	2047	gvo	Gavião Do Jiparaná	37
2107	2048	gwt	Gawar-Bati	37
2108	2049	gwc	Gawri	37
2109	2050	gwd	Gawwada	37
2110	2051	gyl	Gayil	37
2111	2052	gay	Gayo	37
2112	2053	gzi	Gazi	37
2113	2054	gie	Gaɓogbo	37
2114	2055	gbr	Gbagyi	37
2115	2056	gbv	Gbanu	37
2116	2057	gbg	Gbanziri	37
2117	2058	gby	Gbari	37
2118	2059	gba	Gbaya (Central African Republic)	37
2119	2060	krs	Gbaya (Sudan)	37
2120	2061	gbp	Gbaya-Bossangoa	37
2121	2062	gbq	Gbaya-Bozoum	37
2122	2063	gmm	Gbaya-Mbodomo	37
2123	2064	gyg	Gbayi	37
2124	2065	gbs	Gbesi Gbe	37
2125	2066	ggb	Gbii	37
2126	2067	xgb	Gbin	37
2127	2068	grh	Gbiri-Niragu	37
2128	2069	gec	Gboloo Grebo	37
2129	2070	hmj	Ge	37
2130	2071	kvq	Geba Karen	37
2131	2072	gei	Gebe	37
2132	2073	gdd	Gedaged	37
2133	2074	drs	Gedeo	37
2134	2075	gez	Geez	37
2135	2076	gyz	Geji	37
2136	2077	ghk	Geko Karen	37
2137	2078	nlg	Gela	37
2138	2079	geq	Geme	37
2139	2080	gej	Gen	37
2140	2081	gaf	Gende	37
2141	2082	geg	Gengle	37
2142	2083	kat	Georgian	37
2143	2084	ygp	Gepo	37
2144	2085	gew	Gera	37
2145	2086	gef	Gerai	37
2146	2087	deu	German	37
2147	2088	gsg	German Sign Language	37
2148	2089	gea	Geruma	37
2149	2090	ges	Geser-Gorom	37
2150	2091	gha	Ghadamès	37
2151	2092	gpe	Ghanaian Pidgin English	37
2152	2093	gse	Ghanaian Sign Language	37
2153	2094	gds	Ghandruk Sign Language	37
2154	2095	ghn	Ghanongga	37
2155	2096	gri	Ghari	37
2156	2097	bmk	Ghayavi	37
2157	2098	aln	Gheg Albanian	37
2158	2099	ghr	Ghera	37
2159	2100	gdo	Ghodoberi	37
2160	2101	gho	Ghomara	37
2161	2102	bbj	Ghomálá'	37
2162	2103	aaa	Ghotuo	37
2163	2104	ghl	Ghulfan	37
2164	2105	bgi	Giangan	37
2165	2106	gib	Gibanawa	37
2166	2107	gid	Gidar	37
2167	2108	kks	Giiwo	37
2168	2109	acd	Gikyode	37
2169	2110	glk	Gilaki	37
2170	2111	gil	Gilbertese	37
2171	2112	gix	Gilima	37
2172	2113	niv	Gilyak	37
2173	2114	gim	Gimi (Eastern Highlands)	37
2174	2115	gip	Gimi (West New Britain)	37
2175	2116	kmp	Gimme	37
2176	2117	gmn	Gimnime	37
2177	2118	gnm	Ginuman	37
2178	2119	ayg	Ginyanga	37
2179	2120	bbr	Girawa	37
2180	2121	gii	Girirra	37
2181	2122	nyf	Giryama	37
2182	2123	gih	Githabul	37
2183	2124	toh	Gitonga	37
2184	2125	ggt	Gitua	37
2185	2126	git	Gitxsan	37
2186	2127	giy	Giyug	37
2187	2128	tof	Gizrra	37
2188	2129	glr	Glaro-Twabo	37
2189	2130	glw	Glavda	37
2190	2131	oub	Glio-Oubi	37
2191	2132	gnu	Gnau	37
2192	2133	gom	Goan Konkani	37
2193	2134	gig	Goaria	37
2194	2135	goi	Gobasi	37
2195	2136	gox	Gobu	37
2196	2137	god	Godié	37
2197	2138	gdx	Godwari	37
2198	2139	ank	Goemai	37
2199	2140	gof	Gofa	37
2200	2141	gog	Gogo	37
2201	2142	ggw	Gogodala	37
2202	2143	gkn	Gokana	37
2203	2144	gol	Gola	37
2204	2145	gvf	Golin	37
2205	2146	lja	Golpa	37
2206	2147	gon	Gondi	37
2207	2148	goo	Gone Dau	37
2208	2149	goe	Gongduk	37
2209	2150	gjn	Gonja	37
2210	2151	gov	Goo	37
2211	2152	gni	Gooniyandi	37
2212	2153	gqr	Gor	37
2213	2154	goc	Gorakor	37
2214	2155	goq	Gorap	37
2215	2156	xgg	Goreng	37
2216	2157	gor	Gorontalo	37
2217	2158	grq	Gorovu	37
2218	2159	gow	Gorowa	37
2219	2160	got	Gothic	37
2220	2161	goy	Goundo	37
2221	2162	gux	Gourmanchéma	37
2222	2163	goj	Gowlan	37
2223	2164	gok	Gowli	37
2224	2165	gwf	Gowro	37
2225	2166	goz	Gozarkhani	37
2226	2167	nli	Grangali	37
2227	2168	kbk	Grass Koiari	37
2228	2169	grb	Grebo	37
2229	2170	ell	Greek (modern)	37
2230	2171	gss	Greek Sign Language	37
2231	2172	giq	Green Gelao	37
2232	2173	kal	Greenlandic, Kalaallisut	37
2233	2174	gcl	Grenadian Creole English	37
2234	2175	grs	Gresi	37
2235	2176	gro	Groma	37
2236	2177	gos	Gronings	37
2237	2178	ats	Gros Ventre	37
2238	2179	gwx	Gua	37
2239	2180	gcf	Guadeloupean Creole French	37
2240	2181	guh	Guahibo	37
2241	2182	gub	Guajajára	37
2242	2183	gvj	Guajá	37
2243	2184	gum	Guambiano	37
2244	2185	gqn	Guana (Brazil)	37
2245	2186	gva	Guana (Paraguay)	37
2246	2187	gvc	Guanano	37
2247	2188	gnc	Guanche	37
2248	2189	jiq	Guanyinqiao	37
2249	2190	grn	Guaraní	37
2250	2191	gyr	Guarayu	37
2251	2192	gae	Guarequena	37
2252	2193	gsm	Guatemalan Sign Language	37
2253	2194	gta	Guató	37
2254	2195	guo	Guayabero	37
2255	2196	xgd	Gudang	37
2256	2197	nji	Gudanji	37
2257	2198	gde	Gude	37
2258	2199	gdu	Gudu	37
2259	2200	gdf	Guduf-Gava	37
2260	2201	amu	Guerrero Amuzgo	37
2261	2202	ngu	Guerrero Nahuatl	37
2262	2203	zpg	Guevea De Humboldt Zapotec	37
2263	2204	ggd	Gugadj	37
2264	2205	gdc	Gugu Badhun	37
2265	2206	wrw	Gugu Warra	37
2266	2207	kkp	Gugubera	37
2267	2208	ghs	Guhu-Samane	37
2268	2209	gcr	Guianese Creole French	37
2269	2210	zgb	Guibei Zhuang	37
2270	2211	bet	Guiberoua Béte	37
2271	2212	zgn	Guibian Zhuang	37
2272	2213	gkp	Guinea Kpelle	37
2273	2214	lgs	Guinea-Bissau Sign Language	37
2274	2215	gus	Guinean Sign Language	37
2275	2216	gqi	Guiqiong	37
2276	2217	guj	Gujarati	37
2277	2218	gju	Gujari	37
2278	2219	kcm	Gula (Central African Republic)	37
2279	2220	glu	Gula (Chad)	37
2280	2221	glj	Gula Iro	37
2281	2222	gmb	Gula'alaa	37
2282	2223	gvl	Gulay	37
2283	2224	gly	Gule	37
2284	2225	afb	Gulf Arabic	37
2285	2226	gmu	Gumalu	37
2286	2227	gnn	Gumatj	37
2287	2228	gvs	Gumawana	37
2288	2229	guk	Gumuz	37
2289	2230	guw	Gun	37
2290	2231	gdi	Gundi	37
2291	2232	gjm	Gunditjmara	37
2292	2233	xrd	Gundungurra	37
2293	2234	gyf	Gungabula	37
2294	2235	rub	Gungu	37
2295	2236	gnt	Guntai	37
2296	2237	gup	Gunwinggu	37
2297	2238	gyy	Gunya	37
2298	2239	gpa	Gupa-Abawa	37
2299	2240	guf	Gupapuyngu	37
2300	2241	grz	Guramalum	37
2301	2242	hac	Gurani	37
2302	2243	gdj	Gurdjar	37
2303	2244	gnr	Gureng Gureng	37
2304	2245	ggg	Gurgula	37
2305	2246	grx	Guriaso	37
2306	2247	gue	Gurindji	37
2307	2248	gjr	Gurindji Kriol	37
2308	2249	gvm	Gurmana	37
2309	2250	goa	Guro	37
2310	2251	gge	Gurr-goni	37
2311	2252	gvr	Gurung	37
2312	2253	grd	Guruntum-Mbaaru	37
2313	2254	guz	Gusii	37
2314	2255	gsl	Gusilay	37
2315	2256	kky	Guugu Yimidhirr	37
2316	2257	xgw	Guwa	37
2317	2258	gwu	Guwamu	37
2318	2259	gka	Guya	37
2319	2260	gyn	Guyanese Creole English	37
2320	2261	gvy	Guyani	37
2321	2262	ngs	Gvoko	37
2322	2263	gwb	Gwa	37
2323	2264	dah	Gwahatike	37
2324	2265	jgk	Gwak	37
2325	2266	bga	Gwamhi-Wuri	37
2326	2267	gwn	Gwandara	37
2327	2268	grw	Gweda	37
2328	2269	gwe	Gweno	37
2329	2270	gwr	Gwere	37
2330	2271	gwi	Gwich'in	37
2331	2272	gyo	Gyalsumdo	37
2332	2273	gyi	Gyele	37
2333	2274	gye	Gyem	37
2334	2275	ztu	Güilá Zapotec	37
2335	2276	pgd	Gāndhārī	37
2336	2277	haq	Ha	37
2337	2278	hbu	Habu	37
2338	2279	hdy	Hadiyya	37
2339	2280	hoj	Hadothi	37
2340	2281	xhd	Hadrami	37
2341	2282	ayh	Hadrami Arabic	37
2342	2283	hts	Hadza	37
2343	2284	aek	Haeke	37
2344	2285	hah	Hahon	37
2345	2286	hai	Haida	37
2346	2287	hgw	Haigwai	37
2347	2288	haf	Haiphong Sign Language	37
2348	2289	has	Haisla	37
2349	2290	hat	Haitian Creole, Haitian	37
2350	2291	hvc	Haitian Vodoun Culture Language	37
2351	2292	hgm	Haiǁom	37
2352	2293	hji	Haji	37
2353	2294	haj	Hajong	37
2354	2295	cnh	Hakha Chin	37
2355	2296	hak	Hakka Chinese	37
2356	2297	hao	Hakö	37
2357	2298	hal	Halang	37
2358	2299	hld	Halang Doan	37
2359	2300	hlb	Halbi	37
2360	2301	khk	Halh Mongolian	37
2361	2302	hla	Halia	37
2362	2303	hur	Halkomelem	37
2363	2304	hmu	Hamap	37
2364	2305	hba	Hamba	37
2365	2306	amf	Hamer-Banna	37
2366	2307	hmt	Hamtai	37
2367	2308	haa	Han	37
2368	2309	hag	Hanga	37
2369	2310	wos	Hanga Hundi	37
2370	2311	han	Hangaza	37
2371	2312	hni	Hani	37
2372	2313	lml	Hano	37
2373	2314	hab	Hanoi Sign Language	37
2374	2315	hnn	Hanunoo	37
2375	2316	xha	Harami	37
2376	2317	har	Harari	37
2377	2318	kjo	Harijan Kinnauri	37
2378	2319	hro	Haroi	37
2379	2320	hss	Harsusi	37
2380	2321	tmd	Haruai	37
2381	2322	hrk	Haruku	37
2382	2323	bgc	Haryanvi	37
2383	2324	hrz	Harzani	37
2384	2325	ybj	Hasha	37
2385	2326	mey	Hassaniyya	37
2386	2327	had	Hatam	37
2387	2328	xht	Hattic	37
2388	2329	hau	Hausa	37
2389	2330	hsl	Hausa Sign Language	37
2390	2331	yuf	Havasupai-Walapai-Yavapai	37
2391	2332	hvk	Haveke	37
2392	2333	hav	Havu	37
2393	2334	hwc	Hawai'i Creole English	37
2394	2335	hps	Hawai'i Sign Language (HSL)	37
2395	2336	haw	Hawaiian	37
2396	2337	hay	Haya	37
2397	2338	haz	Hazaragi	37
2398	2339	xed	Hdi	37
2399	2340	heb	Hebrew (modern)	37
2400	2341	heh	Hehe	37
2401	2342	hbn	Heiban	37
2402	2343	hei	Heiltsuk	37
2403	2344	heg	Helong	37
2404	2345	nix	Hema	37
2405	2346	hem	Hemba	37
2406	2347	hed	Herdé	37
2407	2348	her	Herero	37
2408	2349	llf	Hermit	37
2409	2350	xhr	Hernican	37
2410	2351	ham	Hewa	37
2411	2352	auk	Heyo	37
2412	2353	ghc	Hiberno-Scottish Gaelic	37
2413	2354	hib	Hibito	37
2414	2355	hid	Hidatsa	37
2415	2356	hlu	Hieroglyphic Luwian	37
2416	2357	mba	Higaonon	37
2417	2358	kjk	Highland Konjo	37
2418	2359	chd	Highland Oaxaca Chontal	37
2419	2360	poi	Highland Popoluca	37
2420	2361	azz	Highland Puebla Nahuatl	37
2421	2362	tos	Highland Totonac	37
2422	2363	acw	Hijazi Arabic	37
2423	2364	hij	Hijuk	37
2424	2365	hil	Hiligaynon	37
2425	2366	hir	Himarimã	37
2426	2367	hin	Hindi	37
2427	2368	hii	Hinduri	37
2428	2369	gin	Hinukh	37
2429	2370	hmo	Hiri Motu	37
2430	2371	hit	Hittite	37
2431	2372	htu	Hitu	37
2432	2373	hiw	Hiw	37
2433	2374	hix	Hixkaryána	37
2434	2375	lic	Hlai	37
2435	2376	yhl	Hlepho Phowa	37
2436	2377	hle	Hlersu	37
2437	2378	hmr	Hmar	37
2438	2379	hmn	Hmong	37
2439	2380	mww	Hmong Daw	37
2440	2381	hmf	Hmong Don	37
2441	2382	hmv	Hmong Dô	37
2442	2383	hnj	Hmong Njua	37
2443	2384	hmz	Hmong Shua	37
2444	2385	mrk	Hmwaveke	37
2445	2386	hoc	Ho	37
2446	2387	hos	Ho Chi Minh City Sign Language	37
2447	2388	win	Ho-Chunk	37
2448	2389	hoa	Hoava	37
2449	2390	hoh	Hobyót	37
2450	2391	hhi	Hoia Hoia	37
2451	2392	hoi	Holikachuk	37
2452	2393	hoy	Holiya	37
2453	2394	hod	Holma	37
2454	2395	hoo	Holoholo	37
2455	2396	hol	Holu	37
2456	2397	hom	Homa	37
2457	2398	hds	Honduras Sign Language	37
2458	2399	hks	Hong Kong Sign Language	37
2459	2400	how	Honi	37
2460	2401	hop	Hopi	37
2461	2402	hrm	Horned Miao	37
2462	2403	hor	Horo	37
2463	2404	hoe	Horom	37
2464	2405	ero	Horpa	37
2465	2406	hot	Hote	37
2466	2407	hti	Hoti	37
2467	2408	hov	Hovongan	37
2468	2409	hhy	Hoyahoya	37
2469	2410	hoz	Hozo	37
2470	2411	hpo	Hpon	37
2471	2412	hra	Hrangkhol	37
2472	2413	hre	Hre	37
2473	2414	hru	Hruso	37
2474	2415	huo	Hu	37
2475	2416	hug	Huachipaeri	37
2476	2417	qub	Huallaga Huánuco Quechua	37
2477	2418	qvh	Huamalíes-Dos de Mayo Huánuco Quechua	37
2478	2419	hub	Huambisa	37
2479	2420	var	Huarijio	37
2480	2421	hus	Huastec	37
2481	2422	hud	Huaulu	37
2482	2423	mau	Huautla Mazatec	37
2483	2424	nhq	Huaxcaleca Nahuatl	37
2484	2425	qwh	Huaylas Ancash Quechua	37
2485	2426	qvw	Huaylla Wanca Quechua	37
2486	2427	hbb	Huba	37
2487	2428	tee	Huehuetla Tepehua	37
2488	2429	hch	Huichol	37
2489	2430	huh	Huilliche	37
2490	2431	mxs	Huitepec Mixtec	37
2491	2432	czh	Huizhou Chinese	37
2492	2433	huw	Hukumina	37
2493	2434	hul	Hula	37
2494	2435	huy	Hulaulá	37
2495	2436	hui	Huli	37
2496	2437	huk	Hulung	37
2497	2438	hmb	Humburi Senni Songhay	37
2498	2439	huf	Humene	37
2499	2440	hut	Humla	37
2500	2441	hke	Hunde	37
2501	2442	hnu	Hung	37
2502	2443	hum	Hungana	37
2503	2444	hun	Hungarian	37
2504	2445	hsh	Hungarian Sign Language	37
2505	2446	hng	Hungu	37
2506	2447	hkk	Hunjara-Kaina Ke	37
2507	2448	xhc	Hunnic	37
2508	2449	hrx	Hunsrik	37
2509	2450	huz	Hunzib	37
2510	2451	hup	Hupa	37
2511	2452	jup	Hupdë	37
2512	2453	hap	Hupla	37
2513	2454	xhu	Hurrian	37
2514	2455	geh	Hutterite German	37
2515	2456	hwo	Hwana	37
2516	2457	hya	Hya	37
2517	2458	jab	Hyam	37
2518	2459	scp	Hyolmo	37
2519	2460	hrt	Hértevin	37
2520	2461	juh	Hõne	37
2521	2462	iwk	I-Wak	37
2522	2463	iai	Iaai	37
2523	2464	yml	Iamalele	37
2524	2465	ian	Iatmul	37
2525	2466	tmu	Iau	37
2526	2467	tek	Ibali Teke	37
2527	2468	ibl	Ibaloi	37
2528	2469	iba	Iban	37
2529	2470	ibg	Ibanag	37
2530	2471	iby	Ibani	37
2531	2472	ivb	Ibatan	37
2532	2473	xib	Iberian	37
2533	2474	ibb	Ibibio	37
2534	2475	ibn	Ibino	37
2535	2476	ibu	Ibu	37
2536	2477	ibr	Ibuoro	37
2537	2478	isl	Icelandic	37
2538	2479	icl	Icelandic Sign Language	37
2539	2480	bec	Iceve-Maci	37
2540	2481	dbj	Ida'an	37
2541	2482	ida	Idakho-Isukha-Tiriki	37
2542	2483	idt	Idaté	37
2543	2484	ide	Idere	37
2544	2485	ids	Idesa	37
2545	2486	idi	Idi	37
2546	2487	ido	Ido	37
2547	2488	idu	Idoma	37
2548	2489	idc	Idon	37
2549	2490	clk	Idu-Mishmi	37
2550	2491	viv	Iduna	37
2551	2492	iff	Ifo	37
2552	2493	ife	Ifè	37
2553	2494	igl	Igala	37
2554	2495	igg	Igana	37
2555	2496	ibo	Igbo	37
2556	2497	ige	Igede	37
2557	2498	ign	Ignaciano	37
2558	2499	ahl	Igo	37
2559	2500	nar	Iguta	37
2560	2501	igw	Igwe	37
2561	2502	ihp	Iha	37
2562	2503	ihb	Iha Based Pidgin	37
2563	2504	ihi	Ihievbe	37
2564	2505	ikx	Ik	37
2565	2506	ikk	Ika	37
2566	2507	ikr	Ikaranggal	37
2567	2508	ikh	Ikhin-Arokho	37
2568	2509	ikz	Ikizu	37
2569	2510	iki	Iko	37
2570	2511	meb	Ikobi	37
2571	2512	ntk	Ikoma-Nata-Isenye	37
2572	2513	txi	Ikpeng	37
2573	2514	ikp	Ikpeshi	37
2574	2515	kpo	Ikposo	37
2575	2516	ikv	Iku-Gora-Ankwa	37
2576	2517	ikl	Ikulu	37
2577	2518	ikw	Ikwere	37
2578	2519	iqw	Ikwo	37
2579	2520	ilb	Ila	37
2580	2521	ila	Ile Ape	37
2581	2522	ili	Ili Turki	37
2582	2523	ilu	Ili'uun	37
2583	2524	mbi	Ilianen Manobo	37
2584	2525	xil	Illyrian	37
2585	2526	ilo	Iloko	37
2586	2527	ilk	Ilongot	37
2587	2528	ilv	Ilue	37
2588	2529	mlk	Ilwana	37
2589	2530	qvi	Imbabura Highland Quichua	37
2590	2531	imo	Imbongu	37
2591	2532	imn	Imonda	37
2592	2533	imt	Imotong	37
2593	2534	imr	Imroing	37
2594	2535	abx	Inabaknon	37
2595	2536	mzu	Inapang	37
2596	2537	smn	Inari Sami	37
2597	2538	ins	Indian Sign Language	37
2598	2539	idb	Indo-Portuguese	37
2599	2540	ind	Indonesian	37
2600	2541	bdl	Indonesian Bajau	37
2601	2542	inl	Indonesian Sign Language	37
2602	2543	idr	Indri	37
2603	2544	mvy	Indus Kohistani	37
2604	2545	xiv	Indus Valley Language	37
2605	2546	oin	Inebu One	37
2606	2547	inz	Ineseño	37
2607	2548	inb	Inga	37
2608	2549	izh	Ingrian	37
2609	2550	inh	Ingush	37
2610	2551	iti	Inlaod Itneg	37
2611	2552	moe	Innu	37
2612	2553	ino	Inoke-Yate	37
2613	2554	loc	Inonhan	37
2614	2555	ior	Inor	37
2615	2556	nkf	Inpui Naga	37
2616	2557	igs	Interglossa	37
2617	2558	ina	Interlingua	37
2618	2559	ile	Interlingue	37
2619	2560	ils	International Sign	37
2620	2561	isv	Interslavic	37
2621	2562	int	Intha	37
2622	2563	ikt	Inuinnaqtun	37
2623	2564	iks	Inuit Sign Language	37
2624	2565	iku	Inuktitut	37
2625	2566	ipk	Inupiaq	37
2626	2567	iow	Iowa-Oto	37
2627	2568	azm	Ipalapa Amuzgo	37
2628	2569	ipo	Ipiko	37
2629	2570	ipi	Ipili	37
2630	2571	ass	Ipulo	37
2631	2572	iqu	Iquito	37
2632	2573	irr	Ir	37
2633	2574	pes	Iranian Persian	37
2634	2575	psc	Iranian Sign Language	37
2635	2576	ilm	Iranun (Malaysia)	37
2636	2577	ilp	Iranun (Philippines)	37
2637	2578	irk	Iraqw	37
2638	2579	irh	Irarutu	37
2639	2580	iry	Iraya	37
2640	2581	ire	Iresim	37
2641	2582	gle	Irish	37
2642	2583	isg	Irish Sign Language	37
2643	2584	iru	Irula	37
2644	2585	irn	Irántxe	37
2645	2586	isa	Isabi	37
2646	2587	isn	Isanzu	37
2647	2588	agk	Isarog Agta	37
2648	2589	isc	Isconahua	37
2649	2590	igo	Isebe	37
2650	2591	its	Isekiri	37
2651	2592	isk	Ishkashimi	37
2652	2593	inn	Isinai	37
2653	2594	srl	Isirawa	37
2654	2595	crb	Island Carib	37
2655	2596	icr	Islander Creole English	37
2656	2597	isd	Isnag	37
2657	2598	iso	Isoko	37
2658	2599	isr	Israeli Sign Language	37
2659	2600	mir	Isthmus Mixe	37
2660	2601	zai	Isthmus Zapotec	37
2661	2602	nhk	Isthmus-Cosoleacaque Nahuatl	37
2662	2603	nhx	Isthmus-Mecayapan Nahuatl	37
2663	2604	nhp	Isthmus-Pajapan Nahuatl	37
2664	2605	ist	Istriot	37
2665	2606	ruo	Istro Romanian	37
2666	2607	szv	Isu (Fako Division)	37
2667	2608	isu	Isu (Menchum Division)	37
2668	2609	ita	Italian	37
2669	2610	ise	Italian Sign Language	37
2670	2611	itv	Itawit	37
2671	2612	itl	Itelmen	37
2672	2613	ite	Itene	37
2673	2614	itr	Iteri	37
2674	2615	itx	Itik	37
2675	2616	itw	Ito	37
2676	2617	ito	Itonama	37
2677	2618	itm	Itu Mbon Uzo	37
2678	2619	mce	Itundujia Mixtec	37
2679	2620	itz	Itzá	37
2680	2621	ium	Iu Mien	37
2681	2622	ivv	Ivatan	37
2682	2623	atg	Ivbie North-Okpela-Arhe	37
2683	2624	ibd	Iwaidja	37
2684	2625	kbm	Iwal	37
2685	2626	iwm	Iwam	37
2686	2627	iwo	Iwur	37
2687	2628	ixc	Ixcatec	37
2688	2629	mzi	Ixcatlán Mazatec	37
2689	2630	ixl	Ixil	37
2690	2631	vmj	Ixtayutla Mixtec	37
2691	2632	otz	Ixtenco Otomi	37
2692	2633	iya	Iyayu	37
2693	2634	uiv	Iyive	37
2694	2635	nca	Iyo	37
2695	2636	crq	Iyo'wujwa Chorote	37
2696	2637	crt	Iyojwa'ja Chorote	37
2697	2638	izr	Izere	37
2698	2639	izz	Izii	37
2699	2640	ijc	Izon	37
2700	2641	cbo	Izora	37
2701	2642	inp	Iñapari	37
2702	2643	jbt	Jabutí	37
2703	2644	jda	Jad	37
2704	2645	jdg	Jadgali	37
2705	2646	jah	Jah Hut	37
2706	2647	jad	Jahanka	37
2707	2648	awv	Jair Awyu	37
2708	2649	xjt	Jaitmatang	37
2709	2650	jat	Jakati	37
2710	2651	jrt	Jakattoe	37
2711	2652	jak	Jakun	37
2712	2653	maj	Jalapa De Díaz Mazatec	37
2713	2654	bxl	Jalkunan	37
2714	2655	jcs	Jamaican Country Sign Language	37
2715	2656	jam	Jamaican Creole English	37
2716	2657	jls	Jamaican Sign Language	37
2717	2658	jaa	Jamamadí	37
2718	2659	jax	Jambi Malay	37
2719	2660	mxt	Jamiltepec Mixtec	37
2720	2661	djm	Jamsay Dogon	37
2721	2662	jan	Jandai	37
2722	2663	jnd	Jandavra	37
2723	2664	djo	Jangkang	37
2724	2665	jna	Jangshung	37
2725	2666	jni	Janji	37
2726	2667	jpn	Japanese	37
2727	2668	jsl	Japanese Sign Language	37
2728	2669	jru	Japrería	37
2729	2670	jqr	Jaqaru	37
2730	2671	jaf	Jara	37
2731	2672	jra	Jarai	37
2732	2673	anq	Jarawa (India)	37
2733	2674	ddj	Jaru	37
2734	2675	qxw	Jauja Wanca Quechua	37
2735	2676	jns	Jaunsari	37
2736	2677	jav	Javanese	37
2737	2678	jvd	Javindo	37
2738	2679	jaz	Jawe	37
2739	2680	djn	Jawoyn	37
2740	2681	jyy	Jaya	37
2741	2682	jeb	Jebero	37
2742	2683	jeh	Jeh	37
2743	2684	jhi	Jehai	37
2744	2685	pzn	Jejara Naga	37
2745	2686	jje	Jejueo	37
2746	2687	tow	Jemez	37
2747	2688	bze	Jenaama Bozo	37
2748	2689	xuj	Jennu Kurumba	37
2749	2690	jer	Jere	37
2750	2691	jek	Jeri Kuo	37
2751	2692	jee	Jerung	37
2752	2693	tmr	Jewish Babylonian Aramaic (ca. 200-1200 CE)	37
2753	2694	jpa	Jewish Palestinian Aramaic	37
2754	2695	jhs	Jhankot Sign Language	37
2755	2696	jio	Jiamao	37
2756	2697	jya	Jiarong	37
2757	2698	juo	Jiba	37
2758	2699	jib	Jibu	37
2759	2700	apj	Jicarilla Apache	37
2760	2701	jii	Jiiddu	37
2761	2702	jie	Jilbe	37
2762	2703	jil	Jilim	37
2763	2704	jim	Jimi (Cameroon)	37
2764	2705	jmi	Jimi (Nigeria)	37
2765	2706	jia	Jina	37
2766	2707	jig	Jingulu	37
2767	2708	cjy	Jinyu Chinese	37
2768	2709	pnu	Jiongnai Bunu	37
2769	2710	jul	Jirel	37
2770	2711	jrr	Jiru	37
2771	2712	jit	Jita	37
2772	2713	kaj	Jju	37
2773	2714	job	Joba	37
2774	2715	jbr	Jofotek-Bromnya	37
2775	2716	jog	Jogi	37
2776	2717	dyo	Jola-Fonyi	37
2777	2718	csk	Jola-Kasa	37
2778	2719	jeu	Jonkor Bourmataguil	37
2779	2720	jos	Jordanian Sign Language	37
2780	2721	jor	Jorá	37
2781	2722	jow	Jowulu	37
2782	2723	juu	Ju	37
2783	2724	jun	Juang	37
2784	2725	jrb	Judeo-Arabic	37
2785	2726	jbe	Judeo-Berber	37
2786	2727	jge	Judeo-Georgian	37
2787	2728	yhd	Judeo-Iraqi Arabic	37
2788	2729	itk	Judeo-Italian	37
2789	2730	aju	Judeo-Moroccan Arabic	37
2790	2731	jpr	Judeo-Persian	37
2791	2732	jdt	Judeo-Tat	37
2792	2733	yud	Judeo-Tripolitanian Arabic	37
2793	2734	jye	Judeo-Yemeni Arabic	37
2794	2735	jbu	Jukun Takum	37
2795	2736	jum	Jumjum	37
2796	2737	jus	Jumla Sign Language	37
2797	2738	jml	Jumli	37
2798	2739	inj	Jungle Inga	37
2799	2740	mxq	Juquila Mixe	37
2800	2741	bex	Jur Modo	37
2801	2742	juy	Juray	37
2802	2743	juc	Jurchen	37
2803	2744	jur	Jurúna	37
2804	2745	jut	Jutish	37
2805	2746	mwb	Juwal	37
2806	2747	vmc	Juxtlahuaca Mixtec	37
2807	2748	ktz	Juǀ'hoan	37
2808	2749	jwi	Jwira-Pepesa	37
2809	2750	nrf	Jèrriais	37
2810	2751	jua	Júma	37
2811	2752	quc	K'iche'	37
2812	2753	xku	Kaamba	37
2813	2754	ldl	Kaan	37
2814	2755	ckn	Kaang Chin	37
2815	2756	gna	Kaansa	37
2816	2757	ksp	Kaba	37
2817	2758	kvf	Kabalai	37
2818	2759	kbd	Kabardian	37
2819	2760	xkp	Kabatei	37
2820	2761	kbp	Kabiyè	37
2821	2762	klz	Kabola	37
2822	2763	onk	Kabore One	37
2823	2764	lkb	Kabras	37
2824	2765	uka	Kaburi	37
2825	2766	kbu	Kabutra	37
2826	2767	kea	Kabuverdianu	37
2827	2768	cwa	Kabwa	37
2828	2769	kcw	Kabwari	37
2829	2770	kab	Kabyle	37
2830	2771	kcx	Kachama-Ganjule	37
2831	2772	xac	Kachari	37
2832	2773	kfr	Kachhi	37
2833	2774	gjk	Kachi Koli	37
2834	2775	kac	Kachin	37
2835	2776	xkk	Kachok	37
2836	2777	koe	Kacipo-Bale Suri	37
2837	2778	kzd	Kadai	37
2838	2779	kej	Kadar	37
2839	2780	kdu	Kadaru	37
2840	2781	dtp	Kadazan Dusun	37
2841	2782	kbc	Kadiwéu	37
2842	2783	zkd	Kadu	37
2843	2784	dkg	Kadung	37
2844	2785	ktp	Kaduo	37
2845	2786	kkq	Kaeku	37
2846	2787	jka	Kaera	37
2847	2788	kbr	Kafa	37
2848	2789	kpu	Kafoa	37
2849	2790	kll	Kagan Kalagan	37
2850	2791	syw	Kagate	37
2851	2792	cgc	Kagayanen	37
2852	2793	kdm	Kagoma	37
2853	2794	xkg	Kagoro	37
2854	2795	kki	Kagulu	37
2855	2796	hka	Kahe	37
2856	2797	agw	Kahua	37
2857	2798	kct	Kaian	37
2858	2799	kzb	Kaibobo	37
2859	2800	kzp	Kaidipang	37
2860	2801	kbw	Kaiep	37
2861	2802	kep	Kaikadi	37
2862	2803	kjv	Kaikavian Literary Language	37
2863	2804	kzq	Kaike	37
2864	2805	zka	Kaimbulawa	37
2865	2806	xai	Kaimbé	37
2866	2807	kgp	Kaingang	37
2867	2808	ckr	Kairak	37
2868	2809	kxa	Kairiru	37
2869	2810	krd	Kairui-Midiki	37
2870	2811	kzm	Kais	37
2871	2812	xdq	Kaitag	37
2872	2813	kce	Kaivi	37
2873	2814	kgk	Kaiwá	37
2874	2815	tcq	Kaiy	37
2875	2816	ckq	Kajakse	37
2876	2817	xkj	Kajali	37
2877	2818	kag	Kajaman	37
2878	2819	kqf	Kakabai	37
2879	2820	kke	Kakabe	37
2880	2821	kka	Kakanda	37
2881	2822	tbd	Kaki Ae	37
2882	2823	kkj	Kako	37
2883	2824	keo	Kakwa	37
2884	2825	mwp	Kala Lagaw Ya	37
2885	2826	lkm	Kalaamaya	37
2886	2827	kve	Kalabakan	37
2887	2828	ijn	Kalabari	37
2888	2829	kzz	Kalabra	37
2889	2830	kqe	Kalagan	37
2890	2831	kkf	Kalaktang Monpa	37
2891	2832	kmh	Kalam	37
2892	2833	knz	Kalamsé	37
2893	2834	wkl	Kalanadi	37
2894	2835	kck	Kalanga	37
2895	2836	kak	Kalanguya	37
2896	2837	kly	Kalao	37
2897	2838	kyl	Kalapuya	37
2898	2839	kba	Kalarko	37
2899	2840	kls	Kalasha	37
2900	2841	kln	Kalenjin	37
2901	2842	fla	Kalispel-Pend d'Oreille	37
2902	2843	xka	Kalkoti	37
2903	2844	ktg	Kalkutung	37
2904	2845	xal	Kalmyk	37
2905	2846	rmf	Kalo Finnish Romani	37
2906	2847	ywa	Kalou	37
2907	2848	bco	Kaluli	37
2908	2849	kli	Kalumpang	37
2909	2850	kdx	Kam	37
2910	2851	vkm	Kamakan	37
2911	2852	woi	Kamang	37
2912	2853	kbq	Kamano	37
2913	2854	kci	Kamantan	37
2914	2855	keq	Kamar	37
2915	2856	jmr	Kamara	37
2916	2857	kzx	Kamarian	37
2917	2858	kgx	Kamaru	37
2918	2859	xas	Kamas	37
2919	2860	klp	Kamasa	37
2920	2861	kms	Kamasau	37
2921	2862	kyk	Kamayo	37
2922	2863	kay	Kamayurá	37
2923	2864	kam	Kamba (Kenya)	37
2924	2865	ktb	Kambaata	37
2925	2866	kyy	Kambaira	37
2926	2867	xbr	Kambera	37
2927	2868	irx	Kamberau	37
2928	2869	xbw	Kambiwá	37
2929	2870	kmi	Kami (Nigeria)	37
2930	2871	kcu	Kami (Tanzania)	37
2931	2872	kcq	Kamo	37
2932	2873	kgq	Kamoro	37
2933	2874	xmu	Kamu	37
2934	2875	xla	Kamula	37
2935	2876	xvi	Kamviri	37
2936	2877	hig	Kamwe	37
2937	2878	xnb	Kanakanabu	37
2938	2879	knm	Kanamarí	37
2939	2880	zkn	Kanan	37
2940	2881	xns	Kanashi	37
2941	2882	soq	Kanasi	37
2942	2883	bjj	Kanauji	37
2943	2884	kqw	Kandas	37
2944	2885	gam	Kandawo	37
2945	2886	kbs	Kande	37
2946	2887	kbl	Kanembu	37
2947	2888	kyp	Kang	37
2948	2889	kcp	Kanga	37
2949	2890	kkv	Kangean	37
2950	2891	igm	Kanggape	37
2951	2892	kxs	Kangjia	37
2952	2893	kty	Kango (Bas-Uélé District)	37
2953	2894	kzy	Kango (Tshopo District)	37
2954	2895	xnr	Kangri	37
2955	2896	ktk	Kaniet	37
2956	2897	kev	Kanikkaran	37
2957	2898	kdp	Kaningdon-Nindem	37
2958	2899	kzo	Kaningi	37
2959	2900	knr	Kaningra	37
2960	2901	wat	Kaninuwa	37
2961	2902	kmu	Kanite	37
2962	2903	kft	Kanjari	37
2963	2904	kbe	Kanju	37
2964	2905	kne	Kankanaey	37
2965	2906	kan	Kannada	37
2966	2907	kfi	Kannada Kurumba	37
2967	2908	kxn	Kanowit-Tanjong Melanau	37
2968	2909	kxo	Kanoé	37
2969	2910	ksk	Kansa	37
2970	2911	xkt	Kantosi	37
2971	2912	khx	Kanu	37
2972	2913	kni	Kanufi	37
2973	2914	kau	Kanuri	37
2974	2915	kny	Kanyok	37
2975	2916	kax	Kao	37
2976	2917	kqn	Kaonde	37
2977	2918	ykm	Kap	37
2978	2919	tbx	Kapin	37
2979	2920	xpn	Kapinawá	37
2980	2921	kpg	Kapingamarangi	37
2981	2922	khp	Kapori	37
2982	2923	dju	Kapriman	37
2983	2924	kbi	Kaptiau	37
2984	2925	klo	Kapya	37
2985	2926	cak	Kaqchikel	37
2986	2927	kah	Kara (Central African Republic)	37
2987	2928	zra	Kara (Korea)	37
2988	2929	leu	Kara (Papua New Guinea)	37
2989	2930	reg	Kara (Tanzania)	37
2990	2931	kaa	Kara-Kalpak	37
2991	2932	krc	Karachay-Balkar	37
2992	2933	kim	Karagas	37
2993	2934	kdr	Karaim	37
2994	2935	gbd	Karajarri	37
2995	2936	kpj	Karajá	37
2996	2937	xqa	Karakhanid	37
2997	2938	xar	Karami	37
2998	2939	kdj	Karamojong	37
2999	2940	kzr	Karang	37
3000	2941	kth	Karanga	37
3001	2942	zkk	Karankawa	37
3002	2943	kyj	Karao	37
3003	2944	kgv	Karas	37
3004	2945	kpt	Karata	37
3005	2946	xrw	Karawa	37
3006	2947	mjw	Karbi	37
3007	2948	kbn	Kare (Central African Republic)	37
3008	2949	kmf	Kare (Papua New Guinea)	37
3009	2950	kai	Karekare	37
3010	2951	krl	Karelian	37
3011	2952	eaa	Karenggapa	37
3012	2953	kyd	Karey	37
3013	2954	kbj	Kari	37
3014	2955	kgn	Karingani	37
3015	2956	kuq	Karipuna	37
3016	2957	kmv	Karipúna Creole French	37
3017	2958	kzw	Karirí-Xocó	37
3018	2959	ktn	Karitiâna	37
3019	2960	kil	Kariya	37
3020	2961	vka	Kariyarra	37
3021	2962	yuj	Karkar-Yuri	37
3022	2963	krb	Karkin	37
3023	2964	kko	Karko	37
3024	2965	bbv	Karnai	37
3025	2966	arr	Karo (Brazil)	37
3026	2967	kxh	Karo (Ethiopia)	37
3027	2968	kyh	Karok	37
3028	2969	krx	Karon	37
3029	2970	kgw	Karon Dori	37
3030	2971	xkx	Karore	37
3031	2972	rxw	Karuwali	37
3032	2973	ccj	Kasanga	37
3033	2974	xsm	Kasem	37
3034	2975	kju	Kashaya	37
3035	2976	kas	Kashmiri	37
3036	2977	csb	Kashubian	37
3037	2978	ksn	Kasiguranin	37
3038	2979	kkz	Kaska	37
3039	2980	zsk	Kaskean	37
3040	2981	khs	Kasua	37
3041	2982	ktq	Katabaga	37
3042	2983	xat	Katawixi	37
3043	2984	tmb	Katbol	37
3044	2985	xtc	Katcha-Kadugli-Miri	37
3045	2986	tkt	Kathoriya Tharu	37
3046	2987	ykt	Kathu	37
3047	2988	bsh	Kati	37
3048	2989	kfu	Katkari	37
3049	2990	kcr	Katla	37
3050	2991	ktw	Kato	37
3051	2992	kaf	Katso	37
3052	2993	kta	Katua	37
3053	2994	kav	Katukína	37
3054	2995	pss	Kaulong	37
3055	2996	vkk	Kaur	37
3056	2997	bpp	Kaure	37
3057	2998	zku	Kaurna	37
3058	2999	xau	Kauwera	37
3059	3000	ckv	Kavalan	37
3060	3001	krv	Kavet	37
3061	3002	kcb	Kawacha	37
3062	3003	xaw	Kawaiisu	37
3063	3004	kgb	Kawe	37
3064	3005	kaw	Kawi	37
3065	3006	ktx	Kaxararí	37
3066	3007	kbb	Kaxuiâna	37
3067	3008	kyz	Kayabí	37
3068	3009	kyt	Kayagar	37
3069	3010	pdu	Kayan	37
3070	3011	xay	Kayan Mahakam	37
3071	3012	xkn	Kayan River Kayan	37
3072	3013	txu	Kayapó	37
3073	3014	gyd	Kayardild	37
3074	3015	kvl	Kayaw	37
3075	3016	kzl	Kayeli	37
3076	3017	kxy	Kayong	37
3077	3018	kyv	Kayort	37
3078	3019	gbb	Kaytetye	37
3079	3020	kzu	Kayupulau	37
3080	3021	kaz	Kazakh	37
3081	3022	kzk	Kazukuru	37
3082	3023	xxk	Ke'o	37
3083	3024	keh	Keak	37
3084	3025	khz	Keapara	37
3085	3026	meo	Kedah Malay	37
3086	3027	ksx	Kedang	37
3087	3028	kdy	Keder	37
3088	3029	wkr	Keerray-Woorroong	37
3089	3030	khh	Kehu	37
3090	3031	kei	Kei	37
3091	3032	kec	Keiga	37
3092	3033	bmh	Kein	37
3093	3034	eyo	Keiyo	37
3094	3035	kek	Kekchí	37
3095	3036	kel	Kela (Democratic Republic of Congo)	37
3096	3037	kcl	Kela (Papua New Guinea)	37
3097	3038	kzi	Kelabit	37
3098	3039	khy	Kele (Democratic Republic of Congo)	37
3099	3040	sbc	Kele (Papua New Guinea)	37
3100	3041	ify	Keley-I Kallahan	37
3101	3042	kbo	Keliko	37
3102	3043	xel	Kelo	37
3103	3044	kyo	Kelon	37
3104	3045	kem	Kemak	37
3105	3046	xem	Kembayan	37
3106	3047	bzp	Kemberano	37
3107	3048	xkw	Kembra	37
3108	3049	dmo	Kemedzung	37
3109	3050	sjk	Kemi Sami	37
3110	3051	kfj	Kemiehua	37
3111	3052	kmt	Kemtuik	37
3112	3053	xbn	Kenaboi	37
3113	3054	gat	Kenati	37
3114	3055	knx	Kendayan	37
3115	3056	klf	Kendeje	37
3116	3057	kvm	Kendem	37
3117	3058	kyq	Kenga	37
3118	3059	kxi	Keningau Murut	37
3119	3060	knl	Keninjal	37
3120	3061	kns	Kensiu	37
3121	3062	ndb	Kenswei Nsei	37
3122	3063	xki	Kenyan Sign Language	37
3123	3064	ken	Kenyang	37
3124	3065	lke	Kenyi	37
3125	3066	xnz	Kenzi	37
3126	3067	xeu	Keoru-Ahia	37
3127	3068	kpn	Kepkiriwát	37
3128	3069	kuk	Kepo'	37
3129	3070	ker	Kera	37
3130	3071	hhr	Kerak	37
3131	3072	xke	Kereho	37
3132	3073	krk	Kerek	37
3133	3074	ked	Kerewe	37
3134	3075	kxz	Kerewo	37
3135	3076	kvr	Kerinci	37
3136	3077	xes	Kesawai	37
3137	3078	ket	Ket	37
3138	3079	kae	Ketangalan	37
3139	3080	kcv	Kete	37
3140	3081	xte	Ketengban	37
3141	3082	ktt	Ketum	37
3142	3083	kyg	Keyagana	37
3143	3084	xkv	Kgalagadi	37
3144	3085	hkh	Khah	37
3145	3086	kjh	Khakas	37
3146	3087	klj	Khalaj	37
3147	3088	klr	Khaling	37
3148	3089	kbg	Khamba	37
3149	3090	ykh	Khamnigan Mongol	37
3150	3091	khg	Khams Tibetan	37
3151	3092	kht	Khamti	37
3152	3093	ksu	Khamyang	37
3153	3094	ogo	Khana	37
3154	3095	khn	Khandesi	37
3155	3096	kca	Khanty	37
3156	3097	xao	Khao	37
3157	3098	kfw	Kharam Naga	37
3158	3099	khr	Kharia	37
3159	3100	ksy	Kharia Thar	37
3160	3101	kha	Khasi	37
3161	3102	lko	Khayo	37
3162	3103	zkz	Khazar	37
3163	3104	kqg	Khe	37
3164	3105	tlx	Khehek	37
3165	3106	xkf	Khengkha	37
3166	3107	xhe	Khetrani	37
3167	3108	nkh	Khezha Naga	37
3168	3109	kix	Khiamniungan Naga	37
3169	3110	kjj	Khinalugh	37
3170	3111	kwx	Khirwar	37
3171	3112	kqm	Khisa	37
3172	3113	ykl	Khlula	37
3173	3114	khm	Khmer	37
3174	3115	kjg	Khmu	37
3175	3116	xkc	Kho'ini	37
3176	3117	naq	Khoekhoe	37
3177	3118	nkb	Khoibu Naga	37
3178	3119	ktc	Kholok	37
3179	3120	kmz	Khorasani Turkish	37
3180	3121	zkh	Khorezmian	37
3181	3122	kho	Khotanese	37
3182	3123	khw	Khowar	37
3183	3124	xhv	Khua	37
3184	3125	khf	Khuen	37
3185	3126	cnk	Khumi Chin	37
3186	3127	kfm	Khunsari	37
3187	3128	khv	Khvarshi	37
3188	3129	kjm	Kháng	37
3189	3130	kkh	Khün	37
3190	3131	blv	Kibala	37
3191	3132	kie	Kibet	37
3192	3133	prm	Kibiri	37
3193	3134	kic	Kickapoo	37
3194	3135	gia	Kija	37
3195	3136	kzg	Kikai	37
3196	3137	kik	Kikuyu, Gikuyu	37
3197	3138	sjd	Kildin Sami	37
3198	3139	kij	Kilivila	37
3199	3140	klb	Kiliwa	37
3200	3141	kih	Kilmeri	37
3201	3142	kia	Kim	37
3202	3143	mji	Kim Mun	37
3203	3144	kig	Kimaama	37
3204	3145	kqr	Kimaragang	37
3205	3146	kiv	Kimbu	37
3206	3147	kmb	Kimbundu	37
3207	3148	sbt	Kimki	37
3208	3149	kqp	Kimré	37
3209	3150	cbw	Kinabalian	37
3210	3151	kco	Kinalakna	37
3211	3152	mkx	Kinamiging Manobo	37
3212	3153	krj	Kinaray-A	37
3213	3154	zga	Kinga	37
3214	3155	kfk	Kinnauri	37
3215	3156	knq	Kintaq	37
3216	3157	kkd	Kinuku	37
3217	3158	kin	Kinyarwanda	37
3218	3159	ues	Kioko	37
3219	3160	kkm	Kiong	37
3220	3161	xko	Kiorr	37
3221	3162	kio	Kiowa	37
3222	3163	apk	Kiowa Apache	37
3223	3164	sgc	Kipsigis	37
3224	3165	kyi	Kiput	37
3225	3166	kkr	Kir-Balar	37
3226	3167	geb	Kire	37
3227	3168	kir	Kirghiz	37
3228	3169	okr	Kirike	37
3229	3170	kiy	Kirikiri	37
3230	3171	kiu	Kirmanjki (individual language)	37
3231	3172	run	Kirundi	37
3232	3173	fkk	Kirya-Konzəl	37
3233	3174	kis	Kis	37
3234	3175	lks	Kisa	37
3235	3176	xis	Kisan	37
3236	3177	kqh	Kisankasa	37
3237	3178	kje	Kisar	37
3238	3179	kiz	Kisi	37
3239	3180	gru	Kistane	37
3240	3181	mwk	Kita Maninkakan	37
3241	3182	zkt	Kitan	37
3242	3183	kii	Kitsai	37
3243	3184	mkw	Kituba (Congo)	37
3244	3185	ktu	Kituba (Democratic Republic of Congo)	37
3245	3186	wei	Kiunum	37
3246	3187	izm	Kizamani	37
3247	3188	lda	Kla-Dan	37
3248	3189	kla	Klamath-Modoc	37
3249	3190	klu	Klao	37
3250	3191	kqt	Klias River Kadazan	37
3251	3192	tlh	Klingon	37
3252	3193	czk	Knaanic	37
3253	3194	fuj	Ko	37
3254	3195	kib	Koalib	37
3255	3196	cku	Koasati	37
3256	3197	kpd	Koba	37
3257	3198	kcj	Kobiana	37
3258	3199	okc	Kobo	37
3259	3200	kgu	Kobol	37
3260	3201	kpw	Kobon	37
3261	3202	kdq	Koch	37
3262	3203	thq	Kochila Tharu	37
3263	3204	cdz	Koda	37
3264	3205	ksz	Kodaku	37
3265	3206	kfa	Kodava	37
3266	3207	vko	Kodeoha	37
3267	3208	kod	Kodi	37
3268	3209	kwp	Kodia	37
3269	3210	kcs	Koenoem	37
3270	3211	kso	Kofa	37
3271	3212	kpi	Kofei	37
3272	3213	kwl	Kofyar	37
3273	3214	zkg	Koguryo	37
3274	3215	kkx	Kohin	37
3275	3216	plk	Kohistani Shina	37
3276	3217	kpm	Koho	37
3277	3218	bcs	Kohumono	37
3278	3219	kkt	Koi	37
3279	3220	nkd	Koireng	37
3280	3221	kqi	Koitabu	37
3281	3222	kxt	Koiwat	37
3282	3223	trp	Kok Borok	37
3283	3224	gko	Kok-Nar	37
3284	3225	ktd	Kokata	37
3285	3226	kou	Koke	37
3286	3227	nxk	Koki Naga	37
3287	3228	okg	Koko Babangk	37
3288	3229	xod	Kokoda	37
3289	3230	kzn	Kokola	37
3290	3231	kkk	Kokota	37
3291	3232	ekl	Kol (Bangladesh)	37
3292	3233	biw	Kol (Cameroon)	37
3293	3234	kol	Kol (Papua New Guinea)	37
3294	3235	kvv	Kola	37
3295	3236	klc	Kolbila	37
3296	3237	skn	Kolibugan Subanon	37
3297	3238	klx	Koluwawa	37
3298	3239	bkm	Kom (Cameroon)	37
3299	3240	kmm	Kom (India)	37
3300	3241	kmy	Koma	37
3301	3242	kpf	Komba	37
3302	3243	tyn	Kombai	37
3303	3244	xbi	Kombio	37
3304	3245	kge	Komering	37
3305	3246	kom	Komi	37
3306	3247	koi	Komi-Permyak	37
3307	3248	kpv	Komi-Zyrian	37
3308	3249	xoi	Kominimung	37
3309	3250	kmw	Komo (Democratic Republic of Congo)	37
3310	3251	xom	Komo (Sudan)	37
3311	3252	kvh	Komodo	37
3312	3253	kvp	Kompane	37
3313	3254	kzv	Komyandaret	37
3314	3255	kkn	Kon Keu	37
3315	3256	kxw	Konai	37
3316	3257	knd	Konda	37
3317	3258	kfc	Konda-Dora	37
3318	3259	kdw	Koneraw	37
3319	3260	kon	Kongo	37
3320	3261	knn	Konkani (individual language)	37
3321	3262	kok	Konkani (macrolanguage)	37
3322	3263	xon	Konkomba	37
3323	3264	kma	Konni	37
3324	3265	knu	Kono (Guinea)	37
3325	3266	klk	Kono (Nigeria)	37
3326	3267	kno	Kono (Sierra Leone)	37
3327	3268	koa	Konomala	37
3328	3269	kcz	Konongo	37
3329	3270	kxc	Konso	37
3330	3271	nbe	Konyak Naga	37
3331	3272	mku	Konyanka Maninka	37
3332	3273	koo	Konzo	37
3333	3274	kng	Koongo	37
3334	3275	ozm	Koonzime	37
3335	3276	kqy	Koorete	37
3336	3277	xop	Kopar	37
3337	3278	opk	Kopkaka	37
3338	3279	kpr	Korafe-Yegha	37
3339	3280	koz	Korak	37
3340	3281	kqz	Korana	37
3341	3282	kcy	Korandje	37
3342	3283	kor	Korean	37
3343	3284	kvk	Korean Sign Language	37
3344	3285	coe	Koreguaje	37
3345	3286	okh	Koresh-e Rostam	37
3346	3287	kfq	Korku	37
3347	3288	vkp	Korlai Creole Portuguese	37
3348	3289	kfo	Koro (Côte d'Ivoire)	37
3349	3290	jkr	Koro (India)	37
3350	3291	kxr	Koro (Papua New Guinea)	37
3351	3292	krf	Koro (Vanuatu)	37
3352	3293	vkn	Koro Nulu	37
3353	3294	bqv	Koro Wachi	37
3354	3295	vkz	Koro Zuba	37
3355	3296	kfz	Koromfé	37
3356	3297	kqj	Koromira	37
3357	3298	bpr	Koronadal Blaan	37
3358	3299	xkq	Koroni	37
3359	3300	xxr	Koropó	37
3360	3301	ktl	Koroshi	37
3361	3302	khe	Korowai	37
3362	3303	kfd	Korra Koraga	37
3363	3304	xor	Korubo	37
3364	3305	kpq	Korupun-Sela	37
3365	3306	kfp	Korwa	37
3366	3307	kpy	Koryak	37
3367	3308	kiq	Kosadle	37
3368	3309	kkl	Kosarek Yale	37
3369	3310	kze	Kosena	37
3370	3311	kid	Koshin	37
3371	3312	kos	Kosraean	37
3372	3313	koq	Kota (Gabon)	37
3373	3314	kfe	Kota (India)	37
3374	3315	mqg	Kota Bangun Kutai Malay	37
3375	3316	grm	Kota Marudu Talantang	37
3376	3317	kqk	Kotafon Gbe	37
3377	3318	avk	Kotava	37
3378	3319	eko	Koti	37
3379	3320	zko	Kott	37
3380	3321	snz	Kou	37
3381	3322	kyf	Kouya	37
3382	3323	kqb	Kovai	37
3383	3324	kvc	Kove	37
3384	3325	xow	Kowaki	37
3385	3326	kwh	Kowiai	37
3386	3327	kqd	Koy Sanjaq Surat	37
3387	3328	kff	Koya	37
3388	3329	kga	Koyaga	37
3389	3330	koh	Koyo	37
3390	3331	khq	Koyra Chiini Songhay	37
3391	3332	ses	Koyraboro Senni Songhai	37
3392	3333	koy	Koyukon	37
3393	3334	kuw	Kpagua	37
3394	3335	kpl	Kpala	37
3395	3336	kpk	Kpan	37
3396	3337	pbn	Kpasam	37
3397	3338	koc	Kpati	37
3398	3339	kym	Kpatili	37
3399	3340	cpo	Kpeego	37
3400	3341	kpe	Kpelle	37
3401	3342	kef	Kpessi	37
3402	3343	kph	Kplang	37
3403	3344	kye	Krache	37
3404	3345	xra	Krahô	37
3405	3346	rka	Kraol	37
3406	3347	kqq	Krenak	37
3407	3348	zkv	Krevinian	37
3408	3349	xre	Kreye	37
3409	3350	ngt	Kriang	37
3410	3351	xri	Krikati-Timbira	37
3411	3352	kri	Krio	37
3412	3353	rop	Kriol	37
3413	3354	ksi	Krisa	37
3414	3355	kxb	Krobu	37
3415	3356	kgo	Krongo	37
3416	3357	krr	Krung	37
3417	3358	jct	Krymchak	37
3418	3359	kry	Kryts	37
3419	3360	tyu	Kua	37
3420	3361	ykn	Kua-nsi	37
3421	3362	yku	Kuamasi	37
3422	3363	uan	Kuan	37
3423	3364	xnh	Kuanhua	37
3424	3365	ksd	Kuanua	37
3425	3366	kua	Kuanyama, Kwanyama	37
3426	3367	ugh	Kubachi	37
3427	3368	kgf	Kube	37
3428	3369	kof	Kubi	37
3429	3370	jko	Kubo	37
3430	3371	kvb	Kubu	37
3431	3372	lkc	Kucong	37
3432	3373	kfg	Kudiya	37
3433	3374	kyw	Kudmali	37
3434	3375	kov	Kudu-Camo	37
3435	3376	sqx	Kufr Qassem Sign Language (KQSL)	37
3436	3377	kow	Kugama	37
3437	3378	kes	Kugbo	37
3438	3379	xmh	Kugu-Muminh	37
3439	3380	uki	Kui (India)	37
3440	3381	kvd	Kui (Indonesia)	37
3441	3382	dkr	Kuijau	37
3442	3383	kui	Kuikúro-Kalapálo	37
3443	3384	vkj	Kujarge	37
3444	3385	kfn	Kuk	37
3445	3386	kux	Kukatja	37
3446	3387	ght	Kuke	37
3447	3388	kez	Kukele	37
3448	3389	kex	Kukna	37
3449	3390	ukv	Kuku	37
3450	3391	xmq	Kuku-Mangk	37
3451	3392	xmp	Kuku-Mu'inh	37
3452	3393	ugb	Kuku-Ugbanh	37
3453	3394	uwa	Kuku-Uwanh	37
3454	3395	gvn	Kuku-Yalanji	37
3455	3396	tpg	Kula	37
3456	3397	kul	Kulere	37
3457	3398	kxj	Kulfa	37
3458	3399	xpk	Kulina Pano	37
3459	3400	vkl	Kulisusu	37
3460	3401	kfx	Kullu Pahari	37
3461	3402	uon	Kulon	37
3462	3403	kle	Kulung (Nepal)	37
3463	3404	bbu	Kulung (Nigeria)	37
3464	3405	ksl	Kumalu	37
3465	3406	kdi	Kumam	37
3466	3407	kue	Kuman (Papua New Guinea)	37
3467	3408	qwm	Kuman (Russia)	37
3468	3409	kfy	Kumaoni	37
3469	3410	kmj	Kumarbhag Paharia	37
3470	3411	ksm	Kumba	37
3471	3412	kgs	Kumbainggar	37
3472	3413	wkb	Kumbaran	37
3473	3414	xks	Kumbewaha	37
3474	3415	kra	Kumhali	37
3475	3416	dih	Kumiai	37
3476	3417	kuo	Kumukio	37
3477	3418	kum	Kumyk	37
3478	3419	zum	Kumzari	37
3479	3420	kun	Kunama	37
3480	3421	wlg	Kunbarlang	37
3481	3422	kdn	Kunda	37
3482	3423	shd	Kundal Shahi	37
3483	3424	wku	Kunduvadi	37
3484	3425	kfl	Kung	37
3485	3426	knw	Kung-Ekoka	37
3486	3427	ggk	Kungarakany	37
3487	3428	gdt	Kungardutyi	37
3488	3429	kgl	Kunggari	37
3489	3430	lku	Kungkari	37
3490	3431	kse	Kuni	37
3491	3432	kvg	Kuni-Boazi	37
3492	3433	xug	Kunigami	37
3493	3434	kup	Kunimaipa	37
3494	3435	pep	Kunja	37
3495	3436	kjn	Kunjen	37
3496	3437	njx	Kunyi	37
3497	3438	kuz	Kunza	37
3498	3439	xuo	Kuo	37
3499	3440	kto	Kuot	37
3500	3441	kug	Kupa	37
3501	3442	mkn	Kupang Malay	37
3502	3443	key	Kupia	37
3503	3444	kpz	Kupsabiny	37
3504	3445	kuv	Kur	37
3505	3446	nqk	Kura Ede Nago	37
3506	3447	krh	Kurama	37
3507	3448	knk	Kuranko	37
3508	3449	kur	Kurdish	37
3509	3450	nbn	Kuri	37
3510	3451	kuj	Kuria	37
3511	3452	kfh	Kurichiya	37
3512	3453	kfv	Kurmukar	37
3513	3454	unn	Kurnai	37
3514	3455	vku	Kurrama	37
3515	3456	ktm	Kurti	37
3516	3457	xkz	Kurtokha	37
3517	3458	kjr	Kurudu	37
3518	3459	kru	Kurukh	37
3519	3460	kyr	Kuruáya	37
3520	3461	kus	Kusaal	37
3521	3462	ksg	Kusaghe	37
3522	3463	kuh	Kushi	37
3523	3464	ksv	Kusu	37
3524	3465	kgg	Kusunda	37
3525	3466	kut	Kutenai	37
3526	3467	kub	Kutep	37
3527	3468	xut	Kuthant	37
3528	3469	skm	Kutong	37
3529	3470	kpa	Kutto	37
3530	3471	kdc	Kutu	37
3531	3472	khj	Kuturmi	37
3532	3473	thd	Kuuk Thaayorre	37
3533	3474	uky	Kuuk-Yak	37
3534	3475	kuy	Kuuku-Ya'u	37
3535	3476	olu	Kuvale	37
3536	3477	kxv	Kuvi	37
3537	3478	blh	Kuwaa	37
3538	3479	cwt	Kuwaataay	37
3539	3480	woa	Kuwema	37
3540	3481	kdt	Kuy	37
3541	3482	fkv	Kven Finnish	37
3542	3483	wka	Kw'adza	37
3543	3484	kwb	Kwa	37
3544	3485	bko	Kwa'	37
3545	3486	ksq	Kwaami	37
3546	3487	kwz	Kwadi	37
3547	3488	kwd	Kwaio	37
3548	3489	kdz	Kwaja	37
3549	3490	kwk	Kwakiutl	37
3550	3491	kwu	Kwakum	37
3551	3492	qwt	Kwalhioqua-Tlatskanai	37
3552	3493	kmq	Kwama	37
3553	3494	kwm	Kwambi	37
3554	3495	tnk	Kwamera	37
3555	3496	ktf	Kwami	37
3556	3497	okk	Kwamtim One	37
3557	3498	xdo	Kwandu	37
3558	3499	kvi	Kwang	37
3559	3500	kwj	Kwanga	37
3560	3501	kwn	Kwangali	37
3561	3502	knp	Kwanja	37
3562	3503	kwf	Kwara'ae	37
3563	3504	nmg	Kwasio	37
3564	3505	kya	Kwaya	37
3565	3506	xwa	Kwaza	37
3566	3507	xwg	Kwegu	37
3567	3508	kwr	Kwer	37
3568	3509	kwe	Kwerba	37
3569	3510	xwr	Kwerba Mamberamo	37
3570	3511	cwe	Kwere	37
3571	3512	kkb	Kwerisa	37
3572	3513	kws	Kwese	37
3573	3514	kwt	Kwesten	37
3574	3515	gww	Kwini	37
3575	3516	kuc	Kwinsu	37
3576	3517	kww	Kwinti	37
3577	3518	kmo	Kwoma	37
3578	3519	kwo	Kwomtari	37
3579	3520	xuu	Kxoe	37
3580	3521	bka	Kyak	37
3581	3522	kyc	Kyaka	37
3582	3523	nqq	Kyan-Karyaw Naga	37
3583	3524	tye	Kyanga	37
3584	3525	kql	Kyenele	37
3585	3526	kgy	Kyerung	37
3586	3527	kmg	Kâte	37
3587	3528	keb	Kélé	37
3588	3529	ksh	Kölsch	37
3589	3530	bzx	Kɛlɛngaxo Bozo	37
3590	3531	lbi	La'bi	37
3591	3532	gdm	Laal	37
3592	3533	ldi	Laari	37
3593	3534	loh	Laarim	37
3594	3535	lau	Laba	37
3595	3536	lbb	Label	37
3596	3537	jku	Labir	37
3597	3538	mwi	Labo	37
3598	3539	ypb	Labo Phowa	37
3599	3540	lbu	Labu	37
3600	3541	dtb	Labuk-Kinabatangan Kadazan	37
3601	3542	lac	Lacandon	37
3602	3543	lbt	Lachi	37
3603	3544	zpa	Lachiguiri Zapotec	37
3604	3545	zpl	Lachixío Zapotec	37
3605	3546	lbj	Ladakhi	37
3606	3547	lld	Ladin	37
3607	3548	lad	Ladino	37
3608	3549	llj	Ladji Ladji	37
3609	3550	lkl	Laeko-Libuat	37
3610	3551	laf	Lafofa	37
3611	3552	lgb	Laghu	37
3612	3553	lgh	Laghuu	37
3613	3554	kot	Lagwan	37
3614	3555	lhh	Laha (Indonesia)	37
3615	3556	lha	Laha (Viet Nam)	37
3616	3557	lhn	Lahanan	37
3617	3558	lah	Lahnda	37
3618	3559	kvt	Lahta Karen	37
3619	3560	lhu	Lahu	37
3620	3561	lhi	Lahu Shi	37
3621	3562	lhl	Lahul Lohar	37
3622	3563	lmx	Laimbue	37
3623	3564	clj	Laitu Chin	37
3624	3565	lji	Laiyolo	37
3625	3566	lbe	Lak	37
3626	3567	lap	Laka (Chad)	37
3627	3568	lka	Lakalei	37
3628	3569	lmw	Lake Miwok	37
3629	3570	lkh	Lakha	37
3630	3571	lki	Laki	37
3631	3572	lbc	Lakkia	37
3632	3573	lkn	Lakon	37
3633	3574	lkd	Lakondê	37
3634	3575	lkt	Lakota	37
3635	3576	dic	Lakota Dida	37
3636	3577	lxm	Lakurumau	37
3637	3578	nrz	Lala	37
3638	3579	leb	Lala-Bisa	37
3639	3580	lla	Lala-Roba	37
3640	3581	cnl	Lalana Chinantec	37
3641	3582	lal	Lalia	37
3642	3583	las	Lama (Togo)	37
3643	3584	lay	Lama Bai	37
3644	3585	slp	Lamaholot	37
3645	3586	lby	Lamalama	37
3646	3587	lmr	Lamalera	37
3647	3588	hia	Lamang	37
3648	3589	lmq	Lamatuka	37
3649	3590	lam	Lamba	37
3650	3591	lmn	Lambadi	37
3651	3592	quf	Lambayeque Quechua	37
3652	3593	lmh	Lambichhong	37
3653	3594	lmy	Lamboya	37
3654	3595	lai	Lambya	37
3655	3596	bma	Lame	37
3656	3597	lmu	Lamenu	37
3657	3598	ldh	Lamja-Dengsa-Tola	37
3658	3599	lmk	Lamkang	37
3659	3600	lev	Lamma	37
3660	3601	lns	Lamnso'	37
3661	3602	lmg	Lamogai	37
3662	3603	ljp	Lampung Api	37
3663	3604	abl	Lampung Nyo	37
3664	3605	llh	Lamu	37
3665	3606	ruu	Lanas Lobu	37
3666	3607	ldm	Landoma	37
3667	3608	yne	Lang'e	37
3668	3609	lnm	Langam	37
3669	3610	lna	Langbashe	37
3670	3611	yln	Langnian Buyang	37
3671	3612	lgo	Lango (South Sudan)	37
3672	3613	laj	Lango (Uganda)	37
3673	3614	lng	Langobardic	37
3674	3615	sfb	Langue des signes de Belgique Francophone	37
3675	3616	lnw	Lanima	37
3676	3617	lnh	Lanoh	37
3677	3618	lao	Lao	37
3678	3619	nlq	Lao Naga	37
3679	3620	lwm	Laomian	37
3680	3621	lbg	Laopang	37
3681	3622	lso	Laos Sign Language	37
3682	3623	ztl	Lapaguía-Guivini Zapotec	37
3683	3624	lrg	Laragia	37
3684	3625	lrt	Larantuka Malay	37
3685	3626	lbz	Lardil	37
3686	3627	lrv	Larevat	37
3687	3628	hmd	Large Flowery Miao	37
3688	3629	lrl	Lari	37
3689	3630	alo	Larike-Wakasihu	37
3690	3631	lro	Laro	37
3691	3632	lar	Larteh	37
3692	3633	lan	Laru	37
3693	3634	zcd	Las Delicias Zapotec	37
3694	3635	llm	Lasalimu	37
3695	3636	lsa	Lasgerdi	37
3696	3637	lsi	Lashi	37
3697	3638	lss	Lasi	37
3698	3639	ltc	Late Middle Chinese	37
3699	3640	ltg	Latgalian	37
3700	3641	lat	Latin	37
3701	3642	ltu	Latu	37
3702	3643	ltn	Latundê	37
3703	3644	lav	Latvian	37
3704	3645	lsl	Latvian Sign Language	37
3705	3646	llu	Lau	37
3706	3647	luf	Laua	37
3707	3648	llx	Lauan	37
3708	3649	law	Lauje	37
3709	3650	lur	Laura	37
3710	3651	lre	Laurentian	37
3711	3652	clt	Lautu Chin	37
3712	3653	lbv	Lavatbura-Lamusong	37
3713	3654	lbo	Laven	37
3714	3655	lvi	Lavi	37
3715	3656	lvk	Lavukaleve	37
3716	3657	lbx	Lawangan	37
3717	3658	lwu	Lawu	37
3718	3659	tgi	Lawunuia	37
3719	3660	lya	Layakha	37
3720	3661	lzz	Laz	37
3721	3662	cle	Lealao Chinantec	37
3722	3663	lec	Leco	37
3723	3664	lew	Ledo Kaili	37
3724	3665	ldk	Leelau	37
3725	3666	lfa	Lefa	37
3726	3667	lgm	Lega-Mwenga	37
3727	3668	lea	Lega-Shabunda	37
3728	3669	agb	Legbo	37
3729	3670	lcc	Legenyem	37
3730	3671	tql	Lehali	37
3731	3672	urr	Lehalurup	37
3732	3673	cae	Lehar	37
3733	3674	lzn	Leinong Naga	37
3734	3675	lek	Leipon	37
3735	3676	llk	Lelak	37
3736	3677	lln	Lele (Chad)	37
3737	3678	lel	Lele (Democratic Republic of Congo)	37
3738	3679	llc	Lele (Guinea)	37
3739	3680	lle	Lele (Papua New Guinea)	37
3740	3681	lef	Lelemi	37
3741	3682	lpa	Lelepa	37
3742	3683	leq	Lembena	37
3743	3684	lrz	Lemerig	37
3744	3685	lei	Lemio	37
3745	3686	xle	Lemnian	37
3746	3687	ley	Lemolang	37
3747	3688	ldj	Lemoro	37
3748	3689	tnl	Lenakel	37
3749	3690	len	Lenca	37
3750	3691	led	Lendu	37
3751	3692	lgi	Lengilu	37
3752	3693	lgr	Lengo	37
3753	3694	lej	Lengola	37
3754	3695	lnj	Leningitij	37
3755	3696	leh	Lenje	37
3756	3697	ler	Lenkau	37
3757	3698	ldg	Lenyima	37
3758	3699	lep	Lepcha	37
3759	3700	lpe	Lepki	37
3760	3701	xlp	Lepontic	37
3761	3702	gnh	Lere	37
3762	3703	les	Lese	37
3763	3704	let	Lesing-Gelimi	37
3764	3705	nms	Letemboi	37
3765	3706	leo	Leti (Cameroon)	37
3766	3707	lti	Leti (Indonesia)	37
3767	3708	apc	Levantine Arabic	37
3768	3709	lvu	Levuka	37
3769	3710	lww	Lewo	37
3770	3711	lwe	Lewo Eleng	37
3771	3712	lwt	Lewotobi	37
3772	3713	ayi	Leyigha	37
3773	3714	lez	Lezghian	37
3774	3715	lhp	Lhokpu	37
3775	3716	lhm	Lhomi	37
3776	3717	ljl	Li'o	37
3777	3718	lix	Liabuku	37
3778	3719	ste	Liana-Seti	37
3779	3720	njn	Liangmai Naga	37
3780	3721	zln	Lianshan Zhuang	37
3781	3722	xpe	Liberia Kpelle	37
3782	3723	lir	Liberian English	37
3783	3724	liq	Libido	37
3784	3725	liz	Libinza	37
3785	3726	lbl	Libon Bikol	37
3786	3727	xli	Liburnian	37
3787	3728	ayl	Libyan Arabic	37
3788	3729	lbs	Libyan Sign Language	37
3789	3730	add	Lidzonka	37
3790	3731	lig	Ligbi	37
3791	3732	lgz	Ligenza	37
3792	3733	lij	Ligurian	37
3793	3734	xlg	Ligurian (Ancient)	37
3794	3735	lih	Lihir	37
3795	3736	mgi	Lijili	37
3796	3737	lik	Lika	37
3797	3738	lio	Liki	37
3798	3739	lie	Likila	37
3799	3740	kxx	Likuba	37
3800	3741	lib	Likum	37
3801	3742	kwc	Likwala	37
3802	3743	lll	Lilau	37
3803	3744	lil	Lillooet	37
3804	3745	bme	Limassa	37
3805	3746	lif	Limbu	37
3806	3747	lmp	Limbum	37
3937	3878	lut	Lushootseed	37
3807	3748	lim	Limburgan, Limburger, Limburgish	37
3808	3749	ylm	Limi	37
3809	3750	lmc	Limilngan	37
3810	3751	kmk	Limos Kalinga	37
3811	3752	lab	Linear A	37
3812	3753	lin	Lingala	37
3813	3754	onb	Lingao	37
3814	3755	lgk	Lingarak	37
3815	3756	pml	Lingua Franca	37
3816	3757	lfn	Lingua Franca Nova	37
3817	3758	apl	Lipan Apache	37
3818	3759	lpo	Lipo	37
3819	3760	lcs	Lisabata-Nuniali	37
3820	3761	lcl	Lisela	37
3821	3762	lsh	Lish	37
3822	3763	lsd	Lishana Deni	37
3823	3764	aij	Lishanid Noshan	37
3824	3765	trg	Lishán Didán	37
3825	3766	lis	Lisu	37
3826	3767	lzh	Literary Chinese	37
3827	3768	lit	Lithuanian	37
3828	3769	lls	Lithuanian Sign Language	37
3829	3770	lzl	Litzlitz	37
3830	3771	zlj	Liujiang Zhuang	37
3831	3772	zlq	Liuqian Zhuang	37
3832	3773	liv	Liv	37
3833	3774	olo	Livvi	37
3834	3775	lht	Lo-Toga	37
3835	3776	lrk	Loarki	37
3836	3777	loq	Lobala	37
3837	3778	lob	Lobi	37
3838	3779	lbm	Lodhi	37
3839	3780	lgq	Logba	37
3840	3781	lqr	Logir	37
3841	3782	log	Logo	37
3842	3783	lof	Logol	37
3843	3784	rag	Logooli	37
3844	3785	liu	Logorik	37
3845	3786	lbr	Lohorung	37
3846	3787	qvj	Loja Highland Quichua	37
3847	3788	jbo	Lojban	37
3848	3789	yaz	Lokaa	37
3849	3790	loy	Loke	37
3850	3791	lok	Loko	37
3851	3792	lky	Lokoya	37
3852	3793	lcd	Lola	37
3853	3794	llq	Lolak	37
3854	3795	llg	Lole	37
3855	3796	llb	Lolo	37
3856	3797	loa	Loloda	37
3857	3798	ycl	Lolopo	37
3858	3799	loi	Loma (Côte d'Ivoire)	37
3859	3800	lom	Loma (Liberia)	37
3860	3801	lmv	Lomaiviti	37
3861	3802	rmi	Lomavren	37
3862	3803	lmo	Lombard	37
3863	3804	lmi	Lombi	37
3864	3805	loo	Lombo	37
3865	3806	ngl	Lomwe	37
3866	3807	lce	Loncong	37
3867	3808	lpn	Long Phuri Naga	37
3868	3809	ttw	Long Wat	37
3869	3810	lgu	Longgu	37
3870	3811	wok	Longto	37
3871	3812	lnu	Longuda	37
3872	3813	los	Loniu	37
3873	3814	crc	Lonwolwol	37
3874	3815	lnz	Lonzo	37
3875	3816	ldo	Loo	37
3876	3817	lop	Lopa	37
3877	3818	lov	Lopi	37
3878	3819	lpx	Lopit	37
3879	3820	lrn	Lorang	37
3880	3821	lnn	Lorediakarkar	37
3881	3822	spq	Loreto-Ucayali Spanish	37
3882	3823	uvl	Lote	37
3883	3824	njh	Lotha Naga	37
3884	3825	dtr	Lotud	37
3885	3826	loj	Lou	37
3886	3827	lou	Louisiana Creole	37
3887	3828	lox	Loun	37
3888	3829	xlo	Loup A	37
3889	3830	xlb	Loup B	37
3890	3831	nds	Low German	37
3891	3832	xbb	Lower Burdekin	37
3892	3833	cea	Lower Chehalis	37
3893	3834	dni	Lower Grand Valley Dani	37
3894	3835	nsb	Lower Nossob	37
3895	3836	sli	Lower Silesian	37
3896	3837	dsb	Lower Sorbian	37
3897	3838	axl	Lower Southern Aranda	37
3898	3839	tto	Lower Ta'oih	37
3899	3840	taa	Lower Tanana	37
3900	3841	clo	Lowland Oaxaca Chontal	37
3901	3842	tac	Lowland Tarahumara	37
3902	3843	ztp	Loxicha Zapotec	37
3903	3844	loz	Lozi	37
3904	3845	lex	Luang	37
3905	3846	lub	Luba-Katanga	37
3906	3847	lua	Luba-Lulua	37
3907	3848	kcc	Lubila	37
3908	3849	lcf	Lubu	37
3909	3850	knb	Lubuagan Kalinga	37
3910	3851	lch	Luchazi	37
3911	3852	luq	Lucumi	37
3912	3853	lud	Ludian	37
3913	3854	ldq	Lufu	37
3914	3855	lgg	Lugbara	37
3915	3856	ruf	Luguru	37
3916	3857	lcq	Luhu	37
3917	3858	lum	Luimbi	37
3918	3859	lui	Luiseno	37
3919	3860	dop	Lukpa	37
3920	3861	ule	Lule	37
3921	3862	smj	Lule Sami	37
3922	3863	luu	Lumba-Yakkha	37
3923	3864	lup	Lumbu	37
3924	3865	lmd	Lumun	37
3925	3866	luj	Luna	37
3926	3867	luk	Lunanakha	37
3927	3868	lun	Lunda	37
3928	3869	lnd	Lundayeh	37
3929	3870	vmg	Lungalunga	37
3930	3871	lga	Lungga	37
3931	3872	luw	Luo (Cameroon)	37
3932	3873	luo	Luo (Kenya and Tanzania)	37
3933	3874	hml	Luopohe Hmong	37
3934	3875	ldd	Luri	37
3935	3876	lse	Lusengo	37
3936	3877	lus	Lushai	37
3938	3879	khl	Lusi	37
3939	3880	xls	Lusitanian	37
3940	3881	ndy	Lutos	37
3941	3882	lue	Luvale	37
3942	3883	luv	Luwati	37
3943	3884	lwo	Luwo	37
3944	3885	ltz	Luxembourgish, Letzeburgesch	37
3945	3886	lyn	Luyana	37
3946	3887	luy	Luyia	37
3947	3888	lwa	Lwalu	37
3948	3889	lvl	Lwel	37
3949	3890	xlc	Lycian	37
3950	3891	xld	Lydian	37
3951	3892	lyg	Lyngngam	37
3952	3893	lee	Lyélé	37
3953	3894	ldn	Láadan	37
3954	3895	bwj	Láá Láá Bwamu	37
3955	3896	khb	Lü	37
3956	3897	msj	Ma (Democratic Republic of Congo)	37
3957	3898	mjn	Ma (Papua New Guinea)	37
3958	3899	skc	Ma Manda	37
3959	3900	mhy	Ma'anyan	37
3960	3901	mhi	Ma'di	37
3961	3902	slz	Ma'ya	37
3962	3903	cma	Maa	37
3963	3904	mew	Maaka	37
3964	3905	ffm	Maasina Fulfulde	37
3965	3906	ymm	Maay	37
3966	3907	mde	Maba (Chad)	37
3967	3908	mqa	Maba (Indonesia)	37
3968	3909	mmz	Mabaale	37
3969	3910	mfz	Mabaan	37
3970	3911	kkg	Mabaka Valley Kalinga	37
3971	3912	muj	Mabire	37
3972	3913	mca	Maca	37
3973	3914	mcl	Macaguaje	37
3974	3915	mbn	Macaguán	37
3975	3916	mzs	Macanese	37
3976	3917	rup	Macedo-Romanian	37
3977	3918	mkd	Macedonian	37
3978	3919	jmc	Machame	37
3979	3920	mcb	Machiguenga	37
3980	3921	mpd	Machinere	37
3981	3922	mvw	Machinga	37
3982	3923	wpc	Maco	37
3983	3924	myy	Macuna	37
3984	3925	mbc	Macushi	37
3985	3926	mxu	Mada (Cameroon)	37
3986	3927	mda	Mada (Nigeria)	37
3987	3928	mzc	Madagascar Sign Language	37
3988	3929	mmx	Madak	37
3989	3930	dmd	Madhi Madhi	37
3990	3931	grg	Madi	37
3991	3932	mad	Madurese	37
3992	3933	mme	Mae	37
3993	3934	hmk	Maek	37
3994	3935	itt	Maeng Itneg	37
3995	3936	maf	Mafa	37
3996	3937	mkv	Mafea	37
3997	3938	blx	Mag-Indi Ayta	37
3998	3939	sgb	Mag-antsi Ayta	37
3999	3940	mag	Magahi	37
4000	3941	ayt	Magbukun Ayta	37
4001	3942	xtm	Magdalena Peñasco Mixtec	37
4002	3943	gmx	Magoma	37
4003	3944	zgr	Magori	37
4004	3945	mdh	Maguindanaon	37
4005	3946	gkd	Magi (Madang Province)	37
4006	3947	gmg	Magiyi	37
4007	3948	mjx	Mahali	37
4008	3949	bfz	Mahasu Pahari	37
4009	3950	mjy	Mahican	37
4010	3951	mhb	Mahongwe	37
4011	3952	mxx	Mahou	37
4012	3953	ayz	Mai Brat	37
4013	3954	sks	Maia	37
4014	3955	mzz	Maiadomu	37
4015	3956	tnh	Maiani	37
4016	3957	mmm	Maii	37
4017	3958	mgu	Mailu	37
4018	3959	cwb	Maindo	37
4019	3960	vmf	Mainfränkisch	37
4020	3961	xkl	Mainstream Kenyah	37
4021	3962	zrs	Mairasi	37
4022	3963	mbq	Maisin	37
4023	3964	mai	Maithili	37
4024	3965	wmm	Maiwa (Indonesia)	37
4025	3966	mti	Maiwa (Papua New Guinea)	37
4026	3967	mum	Maiwala	37
4027	3968	mpe	Majang	37
4028	3969	xmj	Majera	37
4029	3970	mjz	Majhi	37
4030	3971	mmj	Majhwar	37
4031	3972	kmd	Majukayang Kalinga	37
4032	3973	mkg	Mak (China)	37
4033	3974	pbl	Mak (Nigeria)	37
4034	3975	mcp	Makaa	37
4035	3976	myh	Makah	37
4036	3977	mjb	Makalero	37
4037	3978	mkz	Makasae	37
4038	3979	mak	Makasar	37
4039	3980	mfp	Makassar Malay	37
4040	3981	aup	Makayam	37
4041	3982	vmw	Makhuwa	37
4042	3983	xmc	Makhuwa-Marrevone	37
4043	3984	mgh	Makhuwa-Meetto	37
4044	3985	mhm	Makhuwa-Moniga	37
4045	3986	xsq	Makhuwa-Saka	37
4046	3987	vmk	Makhuwa-Shirima	37
4047	3988	mgf	Maklew	37
4048	3989	zmh	Makolkol	37
4049	3990	kde	Makonde	37
4050	3991	lva	Maku'a	37
4051	3992	jmn	Makuri Naga	37
4052	3993	mpu	Makuráp	37
4053	3994	ymk	Makwe	37
4054	3995	umn	Makyan Naga	37
4055	3996	mlf	Mal	37
4056	3997	mkb	Mal Paharia	37
4057	3998	ruy	Mala (Nigeria)	37
4058	3999	ped	Mala (Papua New Guinea)	37
4059	4000	ima	Mala Malasar	37
4060	4001	ccm	Malaccan Creole Malay	37
4061	4002	mcm	Malaccan Creole Portuguese	37
4062	4003	mlg	Malagasy	37
4063	4004	mpb	Malak Malak	37
4064	4005	mmt	Malalamai	37
4065	4006	mln	Malango	37
4066	4007	mjo	Malankuravan	37
4067	4008	mjp	Malapandaram	37
4068	4009	mjq	Malaryan	37
4069	4010	mkr	Malas	37
4070	4011	ymr	Malasar	37
4071	4012	mjr	Malavedan	37
4072	4013	lon	Malawi Lomwe	37
4073	4014	swk	Malawi Sena	37
4074	4015	lws	Malawian Sign Language	37
4075	4016	msa	Malay	37
4076	4017	zlm	Malay (individual language)	37
4077	4018	mal	Malayalam	37
4078	4019	xdy	Malayic Dayak	37
4079	4020	mlz	Malaynon	37
4080	4021	mbp	Malayo	37
4081	4022	xml	Malaysian Sign Language	37
4082	4023	bfo	Malba Birifor	37
4083	4024	div	Maldivian, Dhivehi, Divehi	37
4084	4025	mdy	Male (Ethiopia)	37
4085	4026	mdc	Male (Papua New Guinea)	37
4086	4027	pqm	Malecite-Passamaquoddy	37
4087	4028	pkt	Maleng	37
4088	4029	mgl	Maleu-Kilenge	37
4089	4030	mlx	Malfaxal	37
4090	4031	vml	Malgana	37
4091	4032	mxf	Malgbe	37
4092	4033	gcc	Mali	37
4093	4034	mgq	Malila	37
4094	4035	mzd	Malimba	37
4095	4036	mli	Malimpung	37
4096	4037	tcf	Malinaltepec Me'phaa	37
4097	4038	mla	Malo	37
4098	4039	mbk	Malol	37
4099	4040	mlt	Maltese	37
4100	4041	mdl	Maltese Sign Language	37
4101	4042	mll	Malua Bay	37
4102	4043	mup	Malvi	37
4103	4044	yga	Malyangapa	37
4104	4045	gut	Maléku Jaíka	37
4105	4046	mam	Mam	37
4106	4047	mma	Mama	37
4107	4048	mhf	Mamaa	37
4108	4049	wmd	Mamaindé	37
4109	4050	mmn	Mamanwa	37
4110	4051	myk	Mamara Senoufo	37
4111	4052	mqj	Mamasa	37
4112	4053	mgm	Mambae	37
4113	4054	mcs	Mambai	37
4114	4055	mvd	Mamboru	37
4115	4056	mgr	Mambwe-Lungu	37
4116	4057	maw	Mampruli	37
4117	4058	mqx	Mamuju	37
4118	4059	emm	Mamulique	37
4119	4060	kdf	Mamusi	37
4120	4061	mdi	Mamvu	37
4121	4062	mml	Man Met	37
4122	4063	xmm	Manado Malay	37
4123	4064	mva	Manam	37
4124	4065	mle	Manambu	37
4125	4066	nmm	Manangba	37
4126	4067	znk	Manangkari	37
4127	4068	mnc	Manchu	37
4128	4069	zma	Manda (Australia)	37
4129	4070	mha	Manda (India)	37
4130	4071	mgs	Manda (Tanzania)	37
4131	4072	mht	Mandahuaca	37
4132	4073	mid	Mandaic	37
4133	4074	mhq	Mandan	37
4134	4075	zmk	Mandandanyi	37
4135	4076	mdr	Mandar	37
4136	4077	tbf	Mandara	37
4137	4078	mqu	Mandari	37
4138	4079	cmn	Mandarin Chinese	37
4139	4080	mry	Mandaya	37
4140	4081	mjl	Mandeali	37
4141	4082	mqr	Mander	37
4142	4083	man	Mandingo	37
4143	4084	mnk	Mandinka	37
4144	4085	mfv	Mandjak	37
4145	4086	aax	Mandobo Atas	37
4146	4087	bwp	Mandobo Bawah	37
4147	4088	jet	Manem	37
4148	4089	zng	Mang	37
4149	4090	kby	Manga Kanuri	37
4150	4091	mem	Mangala	37
4151	4092	mrv	Mangareva	37
4152	4093	mpc	Mangarrayi	37
4153	4094	zns	Mangas	37
4154	4095	myj	Mangayat	37
4155	4096	mdj	Mangbetu	37
4156	4097	mdk	Mangbutu	37
4157	4098	zme	Mangerr	37
4158	4099	mmo	Mangga Buang	37
4159	4100	mqy	Manggarai	37
4160	4101	mge	Mango	37
4161	4102	mqc	Mangole	37
4162	4103	mbh	Mangseng	37
4163	4104	mom	Mangue	37
4164	4105	xmn	Manichaean Middle Persian	37
4165	4106	abd	Manide	37
4166	4107	mnx	Manikion	37
4167	4108	mqp	Manipa	37
4168	4109	mni	Manipuri	37
4169	4110	knf	Mankanya	37
4170	4111	nlm	Mankiyali	37
4171	4112	mju	Manna-Dora	37
4172	4113	mjv	Mannan	37
4173	4114	mev	Mano	37
4174	4115	woo	Manombai	37
4175	4116	msk	Mansaka	37
4176	4117	mns	Mansi	37
4177	4118	msw	Mansoanka	37
4178	4119	myg	Manta	37
4179	4120	nty	Mantsi	37
4180	4121	kxf	Manumanaw Karen	37
4181	4122	glv	Manx	37
4182	4123	mzj	Manya	37
4183	4124	mny	Manyawa	37
4184	4125	mxc	Manyika	37
4185	4126	mzv	Manza	37
4186	4127	nbi	Mao Naga	37
4187	4128	mmd	Maonan	37
4188	4129	swb	Maore Comorian	37
4189	4130	mlh	Mape	37
4190	4131	mnm	Mapena	37
4191	4132	mpy	Mapia	37
4192	4133	mpw	Mapidian	37
4193	4134	bzh	Mapos Buang	37
4194	4135	mcg	Mapoyo	37
4195	4136	arn	Mapudungun	37
4196	4137	sjm	Mapun	37
4197	4138	mch	Maquiritari	37
4198	4139	mrh	Mara Chin	37
4199	4140	lri	Marachi	37
4200	4141	vmh	Maraghei	37
4201	4142	mrs	Maragus	37
4202	4143	nma	Maram Naga	37
4203	4144	lrm	Marama	37
4204	4145	mrw	Maranao	37
4205	4146	zmr	Maranunggu	37
4206	4147	mgb	Mararit	37
4207	4148	mar	Marathi (Marāṭhī)	37
4208	4149	mvr	Marau	37
4209	4150	mpg	Marba	37
4210	4151	dsz	Mardin Sign Language	37
4211	4152	mrx	Maremgi	37
4212	4153	vmr	Marenje	37
4213	4154	mvu	Marfa	37
4214	4155	zmc	Margany	37
4215	4156	mrt	Marghi Central	37
4216	4157	mfm	Marghi South	37
4217	4158	qvm	Margos-Yarowilca-Lauricocha Quechua	37
4218	4159	mhg	Margu	37
4219	4160	mbx	Mari (East Sepik Province)	37
4220	4161	hob	Mari (Madang Province)	37
4221	4162	chm	Mari (Russia)	37
4222	4163	mrr	Maria (India)	37
4223	4164	mds	Maria (Papua New Guinea)	37
4224	4165	mrc	Maricopa	37
4225	4166	zmd	Maridan	37
4226	4167	zmj	Maridjabin	37
4227	4168	dad	Marik	37
4228	4169	zmm	Marimanindji	37
4229	4170	mrz	Marind	37
4230	4171	mbw	Maring	37
4231	4172	nng	Maring Naga	37
4232	4173	zmt	Maringarr	37
4233	4174	mrb	Marino	37
4234	4175	mqi	Mariri	37
4235	4176	nsr	Maritime Sign Language	37
4236	4177	msp	Maritsauá	37
4237	4178	zmy	Mariyedi	37
4238	4179	rkm	Marka	37
4239	4180	enb	Markweeta	37
4240	4181	rmz	Marma	37
4241	4182	mvo	Marovo	37
4242	4183	mec	Marra	37
4243	4184	xru	Marriammu	37
4244	4185	mfr	Marrithiyel	37
4245	4186	umc	Marrucinian	37
4246	4187	mah	Marshallese	37
4247	4188	ims	Marsian	37
4248	4189	mre	Martha's Vineyard Sign Language	37
4249	4190	zmg	Marti Ke	37
4250	4191	mpj	Martu Wangka	37
4251	4192	vma	Martuyhunira	37
4252	4193	mhx	Maru	37
4253	4194	mwr	Marwari	37
4254	4195	rwr	Marwari (India)	37
4255	4196	mve	Marwari (Pakistan)	37
4256	4197	mzr	Marúbo	37
4257	4198	myx	Masaaba	37
4258	4199	tis	Masadiit Itneg	37
4259	4200	mas	Masai	37
4260	4201	mls	Masalit	37
4261	4202	mcn	Masana	37
4262	4203	msb	Masbatenyo	37
4263	4204	cuj	Mashco Piro	37
4264	4205	jms	Mashi (Nigeria)	37
4265	4206	mho	Mashi (Zambia)	37
4266	4207	msh	Masikoro Malagasy	37
4267	4208	ism	Masimasi	37
4268	4209	bnf	Masiwang	37
4269	4210	klv	Maskelynes	37
4270	4211	msv	Maslam	37
4271	4212	mes	Masmaje	37
4272	4213	mdg	Massalat	37
4273	4214	mvs	Massep	37
4274	4215	mtn	Matagalpa	37
4275	4216	mfh	Matal	37
4276	4217	wtb	Matambwe	37
4277	4218	xmt	Matbat	37
4278	4219	mgv	Matengo	37
4279	4220	mqe	Matepi	37
4280	4221	mbt	Matigsalug Manobo	37
4281	4222	mzo	Matipuhy	37
4282	4223	zml	Matngala	37
4283	4224	met	Mato	37
4284	4225	axg	Mato Grosso Arára	37
4285	4226	mtm	Mator	37
4286	4227	mcf	Matsés	37
4287	4228	mvb	Mattole	37
4288	4229	hlt	Matu Chin	37
4289	4230	mjk	Matukar	37
4290	4231	mgw	Matumbi	37
4291	4232	stj	Matya Samo	37
4292	4233	mpq	Matís	37
4293	4234	mph	Maung	37
4294	4235	lsy	Mauritian Sign Language	37
4295	4236	mhl	Mauwake	37
4296	4237	mcw	Mawa (Chad)	37
4297	4238	wma	Mawa (Nigeria)	37
4298	4239	mjj	Mawak	37
4299	4240	mcz	Mawan	37
4300	4241	mzx	Mawayana	37
4301	4242	mke	Mawchi	37
4302	4243	mgk	Mawes	37
4303	4244	mbl	Maxakalí	37
4304	4245	mxl	Maxi Gbe	37
4305	4246	sym	Maya Samo	37
4306	4247	xmy	Mayaguduna	37
4307	4248	yan	Mayangna	37
4308	4249	yxa	Mayawali	37
4309	4250	myc	Mayeka	37
4310	4251	xyk	Mayi-Kulan	37
4311	4252	xyt	Mayi-Thakurti	37
4312	4253	xyj	Mayi-Yapi	37
4313	4254	mfy	Mayo	37
4314	4255	mdm	Mayogo	37
4315	4256	ifu	Mayoyao Ifugao	37
4316	4257	dkx	Mazagway	37
4317	4258	zpy	Mazaltepec Zapotec	37
4318	4259	mzn	Mazanderani	37
4319	4260	vmz	Mazatlán Mazatec	37
4320	4261	mzl	Mazatlán Mixe	37
4321	4262	mfc	Mba	37
4322	4263	mdp	Mbala	37
4323	4264	lnb	Mbalanhu	37
4324	4265	zmz	Mbandja	37
4325	4266	mxg	Mbangala	37
4326	4267	mgn	Mbangi	37
4327	4268	zmn	Mbangwe	37
4328	4269	mvl	Mbara (Australia)	37
4329	4270	mpk	Mbara (Chad)	37
4330	4271	zmv	Mbariman-Gudhinma	37
4331	4272	mdn	Mbati	37
4332	4273	gwa	Mbato	37
4333	4274	myb	Mbay	37
4334	4275	mfo	Mbe	37
4335	4276	mtk	Mbe'	37
4336	4277	mql	Mbelime	37
4337	4278	mdt	Mbere	37
4338	4279	zms	Mbesa	37
4339	4280	emz	Mbessa	37
4340	4281	mbo	Mbo (Cameroon)	37
4341	4282	zmw	Mbo (Democratic Republic of Congo)	37
4342	4283	moi	Mboi	37
4343	4284	mdu	Mboko	37
4344	4285	mdq	Mbole	37
4345	4286	xmb	Mbonga	37
4346	4287	bgu	Mbongno	37
4347	4288	mdw	Mbosi	37
4348	4289	mxo	Mbowe	37
4349	4290	mka	Mbre	37
4350	4291	xmd	Mbudum	37
4351	4292	mhd	Mbugu	37
4352	4293	mgz	Mbugwe	37
4353	4294	bpc	Mbuk	37
4354	4295	mqb	Mbuko	37
4355	4296	mhw	Mbukushu	37
4356	4297	mna	Mbula	37
4357	4298	mbu	Mbula-Bwazza	37
4358	4299	mlb	Mbule	37
4359	4300	mbv	Mbulungish	37
4360	4301	mdd	Mbum	37
4361	4302	mck	Mbunda	37
4362	4303	mgy	Mbunga	37
4363	4304	bbt	Mburku	37
4364	4305	mfu	Mbwela	37
4365	4306	gun	Mbyá Guaraní	37
4366	4307	mym	Me'en	37
4367	4308	mjm	Medebur	37
4368	4309	dmf	Medefaidrin	37
4369	4310	mue	Media Lengua	37
4370	4311	xme	Median	37
4371	4312	mud	Mednyj Aleut	37
4372	4313	byv	Medumba	37
4373	4314	mfj	Mefele	37
4374	4315	mef	Megam	37
4375	4316	ruq	Megleno Romanian	37
4376	4317	nux	Mehek	37
4377	4318	mmh	Mehináku	37
4378	4319	gdq	Mehri	37
4379	4320	mek	Mekeo	37
4380	4321	mvk	Mekmek	37
4381	4322	msf	Mekwei	37
4382	4323	hkn	Mel-Khaonh	37
4383	4324	mxe	Mele-Fila	37
4384	4325	mfx	Melo	37
4385	4326	med	Melpa	37
4386	4327	mby	Memoni	37
4387	4328	xkd	Mendalam Kayan	37
4388	4329	mfd	Mendankwe-Nkwen	37
4389	4330	sim	Mende (Papua New Guinea)	37
4390	4331	men	Mende (Sierra Leone)	37
4391	4332	xmg	Mengaka	37
4392	4333	mee	Mengen	37
4393	4334	mct	Mengisa	37
4394	4335	mea	Menka	37
4395	4336	mez	Menominee	37
4396	4337	mwv	Mentawai	37
4397	4338	mcr	Menya	37
4398	4339	mvx	Meoswar	37
4399	4340	mnu	Mer	37
4400	4341	mxm	Meramera	37
4401	4342	lmb	Merei	37
4402	4343	meq	Merey	37
4403	4344	ulk	Meriam Mir	37
4404	4345	mrm	Merlav	37
4405	4346	xmr	Meroitic	37
4406	4347	mer	Meru	37
4407	4348	wry	Merwari	37
4408	4349	iyo	Mesaka	37
4409	4350	apm	Mescalero-Chiricahua Apache	37
4410	4351	mci	Mese	37
4411	4352	sac	Meskwaki	37
4412	4353	zim	Mesme	37
4413	4354	mys	Mesmes	37
4414	4355	acm	Mesopotamian Arabic	37
4415	4356	mvz	Mesqan	37
4416	4357	cms	Messapic	37
4417	4358	mgo	Meta'	37
4418	4359	mxv	Metlatónoc Mixtec	37
4419	4360	mtr	Mewari	37
4420	4361	wtm	Mewati	37
4421	4362	mfs	Mexican Sign Language	37
4422	4363	mej	Meyah	37
4423	4364	pbe	Mezontla Popoloca	37
4424	4365	ote	Mezquital Otomi	37
4425	4366	zmf	Mfinu	37
4426	4367	nfu	Mfumte	37
4427	4368	gmz	Mgbolizhia	37
4428	4369	mic	Mi'kmaq	37
4429	4370	zam	Miahuatlán Zapotec	37
4430	4371	mia	Miami	37
4431	4372	mpt	Mian	37
4432	4373	pla	Miani	37
4433	4374	crg	Michif	37
4434	4375	cmm	Michigamea	37
4435	4376	mmc	Michoacán Mazahua	37
4436	4377	ncl	Michoacán Nahuatl	37
4437	4378	dnt	Mid Grand Valley Dani	37
4438	4379	bjo	Mid-Southern Banda	37
4439	4380	axm	Middle Armenian	37
4440	4381	xbm	Middle Breton	37
4441	4382	cnx	Middle Cornish	37
4442	4383	dum	Middle Dutch (ca. 1050-1350)	37
4443	4384	enm	Middle English (1100-1500)	37
4444	4385	frm	Middle French (ca. 1400-1600)	37
4445	4386	gmh	Middle High German (ca. 1050-1500)	37
4446	4387	htx	Middle Hittite	37
4447	4388	mga	Middle Irish (900-1200)	37
4448	4389	xhm	Middle Khmer (1400 to 1850 CE)	37
4449	4390	okm	Middle Korean (10th-16th cent.)	37
4450	4391	gml	Middle Low German	37
4451	4392	xng	Middle Mongolian	37
4452	4393	nwx	Middle Newar	37
4453	4394	mpl	Middle Watut	37
4454	4395	wlm	Middle Welsh	37
4455	4396	mei	Midob	37
4456	4397	mmy	Migaama	37
4457	4398	mpp	Migabac	37
4458	4399	klm	Migum	37
4459	4400	mxj	Miju-Mishmi	37
4460	4401	mik	Mikasuki	37
4461	4402	ymh	Mili	37
4462	4403	mlj	Miltu	37
4463	4404	iml	Miluk	37
4464	4405	imy	Milyan	37
4465	4406	mnp	Min Bei Chinese	37
4466	4407	cdo	Min Dong Chinese	37
4467	4408	nan	Min Nan Chinese	37
4468	4409	czo	Min Zhong Chinese	37
4469	4410	hna	Mina (Cameroon)	37
4470	4411	inm	Minaean	37
4471	4412	xrg	Minang	37
4472	4413	min	Minangkabau	37
4473	4414	mcv	Minanibai	37
4474	4415	mvn	Minaveha	37
4475	4416	drc	Minderico	37
4476	4417	mpn	Mindiri	37
4477	4418	mko	Mingang Doso	37
4478	4419	xmf	Mingrelian	37
4479	4420	hto	Minica Huitoto	37
4480	4421	wii	Minidien	37
4481	4422	xjb	Minjungbal	37
4482	4423	xxm	Minkin	37
4483	4424	omn	Minoan	37
4484	4425	mqq	Minokok	37
4485	4426	mnq	Minriq	37
4486	4427	mzt	Mintil	37
4487	4428	zgm	Minz Zhuang	37
4488	4429	yiq	Miqie	37
4489	4430	mwl	Mirandese	37
4490	4431	rbl	Miraya Bikol	37
4491	4432	zrg	Mirgan	37
4492	4433	mmv	Miriti	37
4493	4434	mep	Miriwoong	37
4494	4435	rsm	Miriwoong Sign Language	37
4495	4436	gmr	Mirning	37
4496	4437	mjs	Miship	37
4497	4438	mpx	Misima-Panaeati	37
4498	4439	mrg	Mising	37
4499	4440	zaw	Mitla Zapotec	37
4500	4441	vmm	Mitlatongo Mixtec	37
4501	4442	mwu	Mittu	37
4502	4443	zmq	Mituku	37
4503	4444	mpo	Miu	37
4504	4445	vmi	Miwa	37
4505	4446	gac	Mixed Great Andamanese	37
4506	4447	mix	Mixtepec Mixtec	37
4507	4448	zpm	Mixtepec Zapotec	37
4508	4449	mkf	Miya	37
4509	4450	mvi	Miyako	37
4510	4451	ehs	Miyakubo Sign Language	37
4511	4452	soy	Miyobe	37
4512	4453	mra	Mlabri	37
4513	4454	lhs	Mlahsö	37
4514	4455	kja	Mlap	37
4515	4456	mlo	Mlomp	37
4516	4457	mmu	Mmaala	37
4517	4458	bfm	Mmen	37
4518	4459	gbn	Mo'da	37
4519	4460	obm	Moabite	37
4520	4461	mfq	Moba	37
4521	4462	mod	Mobilian	37
4522	4463	ahm	Mobumrin Aizi	37
4523	4464	jkm	Mobwa Karen	37
4524	4465	old	Mochi	37
4525	4466	omc	Mochica	37
4526	4467	mhc	Mocho	37
4527	4468	moc	Mocoví	37
4528	4469	mxd	Modang	37
4529	4470	mqo	Modole	37
4530	4471	mvq	Moere	37
4531	4472	mif	Mofu-Gudur	37
4532	4473	mhj	Mogholi	37
4533	4474	mfg	Mogofin	37
4534	4475	mou	Mogum	37
4535	4476	mov	Mohave	37
4536	4477	moh	Mohawk	37
4537	4478	xpq	Mohegan-Pequot	37
4538	4479	mow	Moi (Congo)	37
4539	4480	mxn	Moi (Indonesia)	37
4540	4481	mkp	Moikodi	37
4541	4482	mwz	Moingi	37
4542	4483	ymi	Moji	37
4543	4484	mqt	Mok	37
4544	4485	wnb	Mokati	37
4545	4486	mwt	Moken	37
4546	4487	mft	Mokerang	37
4547	4488	mkj	Mokilese	37
4548	4489	mkm	Moklen	37
4549	4490	mkl	Mokole	37
4550	4491	bri	Mokpwe	37
4551	4492	vms	Moksela	37
4552	4493	mdf	Moksha	37
4553	4494	mbe	Molale	37
4554	4495	pwm	Molbog	37
4555	4496	vsi	Moldova Sign Language	37
4556	4497	bxc	Molengue	37
4557	4498	mox	Molima	37
4558	4499	aun	Molmo One	37
4559	4500	zmo	Molo	37
4560	4501	msl	Molof	37
4561	4502	mlw	Moloko	37
4562	4503	ver	Mom Jango	37
4563	4504	myl	Moma	37
4564	4505	msz	Momare	37
4565	4506	dmb	Mombo Dogon	37
4566	4507	mso	Mombum	37
4567	4508	mmb	Momina	37
4568	4509	mqf	Momuna	37
4569	4510	mnw	Mon	37
4570	4511	mzg	Monastic Sign Language	37
4571	4512	npn	Mondropolon	37
4572	4513	mnd	Mondé	37
4573	4514	lol	Mongo	37
4574	4515	mgt	Mongol	37
4575	4516	bxm	Mongolia Buriat	37
4576	4517	mon	Mongolian	37
4577	4518	msr	Mongolian Sign Language	37
4578	4519	mog	Mongondow	37
4579	4520	mnz	Moni	37
4580	4521	mru	Mono (Cameroon)	37
4581	4522	mnh	Mono (Democratic Republic of Congo)	37
4582	4523	mte	Mono (Solomon Islands)	37
4583	4524	mnr	Mono (USA)	37
4584	4525	moo	Monom	37
4585	4526	nmh	Monsang Naga	37
4586	4527	cnr	Montenegrin	37
4587	4528	mtl	Montol	37
4588	4529	mxk	Monumbo	37
4589	4530	moj	Monzombo	37
4590	4531	gwg	Moo	37
4591	4532	crm	Moose Cree	37
4592	4533	mop	Mopán Maya	37
4593	4534	moq	Mor (Bomberai Peninsula)	37
4594	4535	mhz	Mor (Mor Islands)	37
4595	4536	msg	Moraid	37
4596	4537	mze	Morawa	37
4597	4538	nhm	Morelos Nahuatl	37
4598	4539	xmo	Morerebi	37
4599	4540	msx	Moresada	37
4600	4541	mzq	Mori Atas	37
4601	4542	xmz	Mori Bawah	37
4602	4543	mdb	Morigi	37
4603	4544	rrm	Moriori	37
4604	4545	mfe	Morisyen	37
4605	4546	mor	Moro	37
4606	4547	ary	Moroccan Arabic	37
4607	4548	xms	Moroccan Sign Language	37
4608	4549	mgc	Morokodo	37
4609	4550	bdo	Morom	37
4610	4551	mqn	Moronene	37
4611	4552	mok	Morori	37
4612	4553	mrp	Morouas	37
4613	4554	umg	Morrobalama	37
4614	4555	mrl	Mortlockese	37
4615	4556	mgd	Moru	37
4616	4557	mqv	Mosimo	37
4617	4558	mtj	Moskona	37
4618	4559	mos	Mossi	37
4619	4560	mtt	Mota	37
4620	4561	mlv	Motlav	37
4621	4562	meu	Motu	37
4622	4563	mwh	Mouk-Aria	37
4623	4564	cty	Moundadan Chetty	37
4624	4565	kpx	Mountain Koiali	37
4625	4566	jmw	Mouwase	37
4626	4567	mzp	Movima	37
4627	4568	ity	Moyadan Itneg	37
4628	4569	nmo	Moyon Naga	37
4629	4570	mzy	Mozambican Sign Language	37
4630	4571	mxi	Mozarabic	37
4631	4572	mpi	Mpade	37
4632	4573	xpj	Mpalitjanh	37
4633	4574	mpz	Mpi	37
4634	4575	mcx	Mpiemo	37
4635	4576	pnd	Mpinda	37
4636	4577	mpa	Mpoto	37
4637	4578	mvt	Mpotovoro	37
4638	4579	mgg	Mpumpong	37
4639	4580	zmp	Mpuono	37
4640	4581	akc	Mpur	37
4641	4582	cmr	Mro-Khimi Chin	37
4642	4583	mro	Mru	37
4643	4584	kqx	Mser	37
4644	4585	atl	Mt. Iraya Agta	37
4645	4586	agz	Mt. Iriga Agta	37
4646	4587	ukk	Muak Sa-aak	37
4647	4588	mtd	Mualang	37
4648	4589	tsx	Mubami	37
4649	4590	mub	Mubi	37
4650	4591	ymd	Muda	37
4651	4592	dmw	Mudburra	37
4652	4593	gau	Mudhili Gadaba	37
4653	4594	vmd	Mudu Koraga	37
4654	4595	udg	Muduga	37
4655	4596	aoj	Mufian	37
4656	4597	muk	Mugom	37
4657	4598	bmr	Muinane	37
4658	4599	mmk	Mukha-Dora	37
4659	4600	moz	Mukulu	37
4660	4601	mfw	Mulaha	37
4661	4602	mlm	Mulam	37
4662	4603	giu	Mulao	37
4663	4604	mvh	Mulgi	37
4664	4605	kpb	Mullu Kurumba	37
4665	4606	mul	Multiple languages	37
4666	4607	vmu	Muluridyi	37
4667	4608	kqa	Mum	37
4668	4609	mzm	Mumuye	37
4669	4610	mnb	Muna	37
4670	4611	unx	Munda	37
4671	4612	boe	Mundabli	37
4672	4613	mua	Mundang	37
4673	4614	mnf	Mundani	37
4674	4615	unr	Mundari	37
4675	4616	mmf	Mundat	37
4676	4617	myu	Mundurukú	37
4677	4618	mhk	Mungaka	37
4678	4619	mth	Munggui	37
4679	4620	mpv	Mungkip	37
4680	4621	myr	Muniche	37
4681	4622	mtc	Munit	37
4682	4623	mnj	Munji	37
4683	4624	umu	Munsee	37
4684	4625	mtq	Muong	37
4685	4626	tkv	Mur Pano	37
4686	4627	asx	Muratayak	37
4687	4628	mxr	Murik (Malaysia)	37
4688	4629	mtf	Murik (Papua New Guinea)	37
4689	4630	rmh	Murkim	37
4690	4631	mur	Murle	37
4691	4632	mwf	Murrinh-Patha	37
4692	4633	muz	Mursi	37
4693	4634	huu	Murui Huitoto	37
4694	4635	mqw	Murupi	37
4695	4636	zmu	Muruwari	37
4696	4637	mmq	Musak	37
4697	4638	mmi	Musar	37
4698	4639	smm	Musasa	37
4699	4640	mse	Musey	37
4700	4641	mug	Musgu	37
4701	4642	xma	Mushungulu	37
4702	4643	mui	Musi	37
4703	4644	mje	Muskum	37
4704	4645	ttt	Muslim Tat	37
4705	4646	msu	Musom	37
4706	4647	emi	Mussau-Emira	37
4707	4648	muv	Muthuvan	37
4708	4649	tuc	Mutu	37
4709	4650	muy	Muyang	37
4710	4651	myw	Muyuw	37
4711	4652	ymz	Muzi	37
4712	4653	mcj	Mvanip	37
4713	4654	mxh	Mvuba	37
4714	4655	sur	Mwaghavul	37
4715	4656	wlc	Mwali Comorian	37
4716	4657	moa	Mwan	37
4717	4658	wmw	Mwani	37
4718	4659	mwa	Mwatebu	37
4719	4660	mwe	Mwera (Chimwera)	37
4720	4661	mjh	Mwera (Nyasa)	37
4721	4662	mws	Mwimbi-Muthambi	37
4722	4663	ysm	Myanmar Sign Language	37
4723	4664	gmy	Mycenaean Greek	37
4724	4665	mye	Myene	37
4725	4666	yms	Mysian	37
4726	4667	nme	Mzieme Naga	37
4727	4668	gmd	Mághdì	37
4728	4669	xak	Máku	37
4729	4670	tnr	Ménik	37
4730	4671	miq	Mískito	37
4731	4672	mhn	Mócheno	37
4732	4673	mwq	Mün Chin	37
4733	4674	muh	Mündü	37
4734	4675	pmh	Māhārāṣṭri Prākrit	37
4735	4676	mri	Māori	37
4736	4677	nqo	N'Ko	37
4737	4678	nbt	Na	37
4738	4679	nck	Na-kara	37
4739	4680	nao	Naaba	37
4740	4681	bzv	Naami	37
4741	4682	nas	Naasioi	37
4742	4683	mne	Naba	37
4743	4684	naf	Nabak	37
4744	4685	mty	Nabi	37
4745	4686	ncd	Nachering	37
4746	4687	ndf	Nadruvian	37
4747	4688	mbj	Nadëb	37
4748	4689	nfr	Nafaanra	37
4749	4690	srf	Nafi	37
4750	4691	nxx	Nafri	37
4751	4692	jbn	Nafusi	37
4752	4693	nag	Naga Pidgin	37
4753	4694	nbg	Nagarchal	37
4754	4695	nxe	Nage	37
4755	4696	ngv	Nagumi	37
4756	4697	nlx	Nahali	37
4757	4698	nhh	Nahari	37
4758	4699	bio	Nai	37
4759	4700	ars	Najdi Arabic	37
4760	4701	nae	Naka'ela	37
4761	4702	nkj	Nakai	37
4762	4703	nib	Nakame	37
4763	4704	nak	Nakanai	37
4764	4705	nbk	Nake	37
4765	4706	mff	Naki	37
4766	4707	nax	Nakwi	37
4767	4708	nlc	Nalca	37
4768	4709	nss	Nali	37
4769	4710	nal	Nalik	37
4770	4711	naj	Nalu	37
4771	4712	ylo	Naluo Yi	37
4772	4713	nlz	Nalögo	37
4773	4714	nmx	Nama (Papua New Guinea)	37
4774	4715	nmk	Namakura	37
4775	4716	nkm	Namat	37
4776	4717	ncm	Nambo	37
4777	4718	nmq	Nambya	37
4778	4719	nnm	Namia	37
4779	4720	nvm	Namiae	37
4780	4721	nbs	Namibian Sign Language	37
4781	4722	naa	Namla	37
4782	4723	mxw	Namo	37
4783	4724	nmt	Namonuito	37
4784	4725	bwb	Namosi-Naitasiri-Serua	37
4785	4726	nmy	Namuyi	37
4786	4727	gld	Nanai	37
4787	4728	nnc	Nancere	37
4788	4729	nnb	Nande	37
4789	4730	niq	Nandi	37
4790	4731	sen	Nanerigé Sénoufo	37
4791	4732	nzz	Nanga Dama Dogon	37
4792	4733	nnk	Nankina	37
4793	4734	cox	Nanti	37
4794	4735	nnt	Nanticoke	37
4795	4736	afk	Nanubae	37
4796	4737	qvo	Napo Lowland Quechua	37
4797	4738	npy	Napu	37
4798	4739	npa	Nar Phu	37
4799	4740	nrb	Nara	37
4800	4741	nac	Narak	37
4801	4742	nrg	Narango	37
4802	4743	rnr	Nari Nari	37
4803	4744	nhr	Naro	37
4804	4745	nrm	Narom	37
4805	4746	xnt	Narragansett	37
4806	4747	nru	Narua	37
4807	4748	nnr	Narungga	37
4808	4749	nsy	Nasal	37
4809	4750	nvh	Nasarian	37
4810	4751	nsk	Naskapi	37
4811	4752	ntz	Natanzi	37
4812	4753	ncz	Natchez	37
4813	4754	ntm	Nateni	37
4814	4755	nte	Nathembo	37
4815	4756	nti	Natioro	37
4816	4757	ntu	Natügu	37
4817	4758	nxa	Nauete	37
4818	4759	ynk	Naukan Yupik	37
4819	4760	ncn	Nauna	37
4820	4761	nwo	Nauo	37
4821	4762	nau	Nauru	37
4822	4763	nav	Navajo, Navaho	37
4823	4764	nsw	Navut	37
4824	4765	nwr	Nawaru	37
4825	4766	nwa	Nawathinehena	37
4826	4767	nmz	Nawdm	37
4827	4768	naw	Nawuri	37
4828	4769	nxq	Naxi	37
4829	4770	noz	Nayi	37
4830	4771	nyq	Nayini	37
4831	4772	ncr	Ncane	37
4832	4773	nlu	Nchumbulu	37
4833	4774	nnz	Nda'nda'	37
4834	4775	gke	Ndai	37
4835	4776	ndk	Ndaka	37
4836	4777	ndh	Ndali	37
4837	4778	ndm	Ndam	37
4838	4779	ndj	Ndamba	37
4839	4780	nxo	Ndambomo	37
4840	4781	nda	Ndasa	37
4841	4782	ndc	Ndau	37
4842	4783	ned	Nde-Gbite	37
4843	4784	ndd	Nde-Nsele-Nta	37
4844	4785	nml	Ndemli	37
4845	4786	dne	Ndendeule	37
4846	4787	ndg	Ndengereko	37
4847	4788	eli	Nding	37
4848	4789	ndp	Ndo	37
4849	4790	ndw	Ndobo	37
4850	4791	nbb	Ndoe	37
4851	4792	ndz	Ndogo	37
4852	4793	ndl	Ndolo	37
4853	4794	nqm	Ndom	37
4854	4795	ndq	Ndombe	37
4855	4796	njd	Ndonde Hamba	37
4856	4797	ndo	Ndonga	37
4857	4798	ndr	Ndoola	37
4858	4799	dgt	Ndra'ngith	37
4859	4800	dno	Ndrulo	37
4860	4801	ndx	Nduga	37
4861	4802	nmd	Ndumu	37
4862	4803	nuh	Ndunda	37
4863	4804	ndt	Ndunga	37
4864	4805	ndv	Ndut	37
4865	4806	nww	Ndwewe	37
4866	4807	njt	Ndyuka-Trio Pidgin	37
4867	4808	wni	Ndzwani Comorian	37
4868	4809	nap	Neapolitan	37
4869	4810	nec	Nedebang	37
4870	4811	nef	Nefamese	37
4871	4812	dcr	Negerhollands	37
4872	4813	zmi	Negeri Sembilan Malay	37
4873	4814	neg	Negidal	37
4874	4815	nsn	Nehan	37
4875	4816	nif	Nek	37
4876	4817	nkg	Nekgini	37
4877	4818	nej	Neko	37
4878	4819	nek	Neku	37
4879	4820	gsn	Nema	37
4880	4821	nex	Neme	37
4881	4822	nem	Nemi	37
4882	4823	nqn	Nen	37
4883	4824	anh	Nend	37
4884	4825	yrk	Nenets	37
4885	4826	nen	Nengone	37
4886	4827	neu	Neo	37
4887	4828	nei	Neo-Hittite	37
4888	4829	nsp	Nepalese Sign Language	37
4889	4830	nep	Nepali	37
4890	4831	npi	Nepali (individual language)	37
4891	4832	net	Nete	37
4892	4833	jas	New Caledonian Javanese	37
4893	4834	nzs	New Zealand Sign Language	37
4894	4835	new	Newari	37
4895	4836	ney	Neyo	37
4896	4837	nez	Nez Perce	37
4897	4838	ntj	Ngaanyatjarra	37
4898	4839	nxg	Ngad'a	37
4899	4840	nju	Ngadjunmaya	37
4900	4841	jui	Ngadjuri	37
4901	4842	nnf	Ngaing	37
4902	4843	nij	Ngaju	37
4903	4844	nud	Ngala	37
4904	4845	nig	Ngalakgan	37
4905	4846	szb	Ngalum	37
4906	4847	nmc	Ngam	37
4907	4848	nbv	Ngamambo	37
4908	4849	sba	Ngambay	37
4909	4850	nmv	Ngamini	37
4910	4851	nbh	Ngamo	37
4911	4852	nam	Ngan'gityemerri	37
4912	4853	xnk	Nganakarti	37
4913	4854	nio	Nganasan	37
4914	4855	nid	Ngandi	37
4915	4856	ngd	Ngando (Central African Republic)	37
4916	4857	nxd	Ngando (Democratic Republic of Congo)	37
4917	4858	nne	Ngandyera	37
4918	4859	gng	Ngangam	37
4919	4860	ntg	Ngantangarra	37
4920	4861	nyx	Nganyaywana	37
4921	4862	rxd	Ngardi	37
4922	4863	xni	Ngarigu	37
4923	4864	ung	Ngarinyin	37
4924	4865	nbj	Ngarinyman	37
4925	4866	nrk	Ngarla	37
4926	4867	nrl	Ngarluma	37
4927	4868	nay	Ngarrindjeri	37
4928	4869	anc	Ngas	37
4929	4870	nsg	Ngasa	37
4930	4871	ngm	Ngatik Men's Creole	37
4931	4872	cnw	Ngawn Chin	37
4932	4873	nxn	Ngawun	37
4933	4874	nwg	Ngayawung	37
4934	4875	zdj	Ngazidja Comorian	37
4935	4876	nga	Ngbaka	37
4936	4877	nbm	Ngbaka Ma'bo	37
4937	4878	ngg	Ngbaka Manza	37
4938	4879	jgb	Ngbee	37
4939	4880	nbd	Ngbinda	37
4940	4881	nuu	Ngbundu	37
4941	4882	agh	Ngelima	37
4942	4883	nge	Ngemba	37
4943	4884	gnj	Ngen	37
4944	4885	nql	Ngendelengo	37
4945	4886	nnn	Ngete	37
4946	4887	nbq	Nggem	37
4947	4888	ngx	Nggwahyi	37
4948	4889	ngj	Ngie	37
4949	4890	nnh	Ngiemboon	37
4950	4891	jle	Ngile	37
4951	4892	nnq	Ngindo	37
4952	4893	niy	Ngiti	37
4953	4894	ngi	Ngizim	37
4954	4895	kcd	Ngkâlmpw Kanum	37
4955	4896	nra	Ngom	37
4956	4897	jgo	Ngomba	37
4957	4898	nla	Ngombale	37
4958	4899	nmj	Ngombe (Central African Republic)	37
4959	4900	ngc	Ngombe (Democratic Republic of Congo)	37
4960	4901	noq	Ngongo	37
4961	4902	xnq	Ngoni (Mozambique)	37
4962	4903	xnj	Ngoni (Tanzania)	37
4963	4904	nsh	Ngoshie	37
4964	4905	nlo	Ngul	37
4965	4906	ngp	Ngulu	37
4966	4907	nuw	Nguluwan	37
4967	4908	xnm	Ngumbarl	37
4968	4909	nui	Ngumbi	37
4969	4910	xul	Ngunawal	37
4970	4911	ndn	Ngundi	37
4971	4912	nue	Ngundu	37
4972	4913	ngz	Ngungwel	37
4973	4914	ngq	Ngurimi	37
4974	4915	nrx	Ngurmbur	37
4975	4916	nuo	Nguôn	37
4976	4917	ngw	Ngwaba	37
4977	4918	nwe	Ngwe	37
4978	4919	ngn	Ngwo	37
4979	4920	gym	Ngäbere	37
4980	4921	nha	Nhanda	37
4981	4922	yrl	Nhengatu	37
4982	4923	hrp	Nhirrpi	37
4983	4924	nhf	Nhuwala	37
4984	4925	nia	Nias	37
4985	4926	bzk	Nicaragua Creole English	37
4986	4927	ncs	Nicaraguan Sign Language	37
4987	4928	nie	Niellim	37
4988	4929	mzk	Nigeria Mambila	37
4989	4930	fuv	Nigerian Fulfulde	37
4990	4931	pcm	Nigerian Pidgin	37
4991	4932	nsi	Nigerian Sign Language	37
4992	4933	nll	Nihali	37
4993	4934	nii	Nii	37
4994	4935	gbe	Niksek	37
4995	4936	nil	Nila	37
4996	4937	nim	Nilamba	37
4997	4938	noe	Nimadi	37
4998	4939	nmp	Nimanbur	37
4999	4940	nmr	Nimbari	37
5000	4941	nir	Nimboran	37
5001	4942	nis	Nimi	37
5002	4943	niw	Nimo	37
5003	4944	nmw	Nimoa	37
5004	4945	shb	Ninam	37
5005	4946	nxi	Nindi	37
5006	4947	nby	Ningera	37
5007	4948	nxr	Ninggerum	37
5008	4949	niz	Ningil	37
5009	4950	nlk	Ninia Yali	37
5010	4951	nin	Ninzo	37
5011	4952	nps	Nipsan	37
5012	4953	njs	Nisa	37
5013	4954	nsz	Nisenan	37
5014	4955	ncg	Nisga'a	37
5015	4956	yso	Nisi (China)	37
5016	4957	num	Niuafo'ou	37
5017	4958	nkp	Niuatoputapu	37
5018	4959	niu	Niuean	37
5019	4960	cag	Nivaclé	37
5020	4961	hrc	Niwer Mil	37
5021	4962	njl	Njalgulgule	37
5022	4963	nzb	Njebi	37
5023	4964	njj	Njen	37
5024	4965	njr	Njerep	37
5025	4966	njy	Njyem	37
5026	4967	nkq	Nkami	37
5027	4968	nkn	Nkangala	37
5028	4969	nkz	Nkari	37
5029	4970	isi	Nkem-Nkum	37
5030	4971	khu	Nkhumbi	37
5031	4972	nkc	Nkongho	37
5032	4973	nko	Nkonya	37
5033	4974	nkx	Nkoroo	37
5034	4975	nka	Nkoya	37
5035	4976	nbo	Nkukoli	37
5036	4977	nkw	Nkutu	37
5037	4978	nbp	Nnam	37
5038	4979	zxx	No linguistic content	37
5039	4980	fia	Nobiin	37
5040	4981	gaw	Nobonob	37
5041	4982	njb	Nocte Naga	37
5042	4983	nog	Nogai	37
5043	4984	npx	Noipx	37
5044	4985	noi	Noiri	37
5045	4986	nkk	Nokuku	37
5046	4987	lem	Nomaande	37
5047	4988	nof	Nomane	37
5048	4989	not	Nomatsiguenga	37
5049	4990	nol	Nomlaki	37
5050	4991	noh	Nomu	37
5051	4992	zhn	Nong Zhuang	37
5052	4993	noj	Nonuya	37
5053	4994	nok	Nooksack	37
5054	4995	snf	Noon	37
5055	4996	nhu	Noone	37
5056	4997	cya	Nopala Chatino	37
5057	4998	nrc	Noric	37
5058	4999	nrn	Norn	37
5059	5000	nrr	Norra	37
5060	5001	esi	North Alaskan Inupiatun	37
5061	5002	mmg	North Ambrym	37
5062	5003	nks	North Asmat	37
5063	5004	yir	North Awyu	37
5064	5005	azj	North Azerbaijani	37
5065	5006	bcd	North Babar	37
5066	5007	qul	North Bolivian Quechua	37
5067	5008	neq	North Central Mixe	37
5068	5009	llp	North Efate	37
5069	5010	fll	North Fali	37
5070	5011	gis	North Giziga	37
5071	5012	qvn	North Junín Quechua	37
5072	5013	mrq	North Marquesan	37
5073	5014	ayp	North Mesopotamian Arabic	37
5074	5015	xph	North Midlands Tasmanian	37
5075	5016	mfk	North Mofu	37
5076	5017	max	North Moluccan Malay	37
5077	5018	kti	North Muyu	37
5078	5019	nni	North Nuaulu	37
5079	5020	nrp	North Picene	37
5080	5021	scs	North Slavey	37
5081	5022	tbg	North Tairora	37
5082	5023	tnn	North Tanna	37
5083	5024	whg	North Wahgi	37
5084	5025	una	North Watut	37
5085	5026	kiw	Northeast Kiwai	37
5086	5027	nmu	Northeast Maidu	37
5087	5028	aee	Northeast Pashai	37
5088	5029	dip	Northeastern Dinka	37
5089	5030	pef	Northeastern Pomo	37
5090	5031	xpb	Northeastern Tasmanian	37
5091	5032	tts	Northeastern Thai	37
5092	5033	aqn	Northern Alta	37
5093	5034	atv	Northern Altai	37
5094	5035	ryn	Northern Amami-Oshima	37
5095	5036	bmm	Northern Betsimisaraka Malagasy	37
5096	5037	kyn	Northern Binukidnon	37
5097	5038	bbo	Northern Bobo Madaré	37
5098	5039	rbk	Northern Bontok	37
5099	5040	cts	Northern Catanduanes Bikol	37
5100	5041	qxn	Northern Conchucos Ancash Quechua	37
5101	5042	dgi	Northern Dagara	37
5102	5043	doc	Northern Dong	37
5103	5044	crl	Northern East Cree	37
5104	5045	emp	Northern Emberá	37
5105	5046	frr	Northern Frisian	37
5106	5047	ghh	Northern Ghale	37
5107	5048	gno	Northern Gondi	37
5108	5049	gbo	Northern Grebo	37
5109	5050	huj	Northern Guiyang Hmong	37
5110	5051	hdn	Northern Haida	37
5111	5052	hno	Northern Hindko	37
5112	5053	hmi	Northern Huishui Hmong	37
5113	5054	nrt	Northern Kalapuya	37
5114	5055	xnn	Northern Kankanay	37
5115	5056	ncq	Northern Katang	37
5116	5057	kxm	Northern Khmer	37
5117	5058	kqs	Northern Kissi	37
5118	5059	kmr	Northern Kurdish	37
5119	5060	lrc	Northern Luri	37
5120	5061	hmp	Northern Mashan Hmong	37
5121	5062	ymx	Northern Muji	37
5122	5063	xkb	Northern Nago	37
5123	5064	nde	Northern Ndebele	37
5124	5065	ngb	Northern Ngbandi	37
5125	5066	yiv	Northern Nisu	37
5126	5067	nuv	Northern Nuni	37
5127	5068	nhy	Northern Oaxaca Nahuatl	37
5128	5069	cst	Northern Ohlone	37
5129	5070	onr	Northern One	37
5130	5071	pao	Northern Paiute	37
5131	5072	pmq	Northern Pame	37
5132	5073	pbu	Northern Pashto	37
5133	5074	qvz	Northern Pastaza Quichua	37
5134	5075	cnp	Northern Ping Chinese	37
5135	5076	pej	Northern Pomo	37
5136	5077	ncj	Northern Puebla Nahuatl	37
5137	5078	pmi	Northern Pumi	37
5138	5079	hea	Northern Qiandong Miao	37
5139	5080	cng	Northern Qiang	37
5140	5081	nnl	Northern Rengma Naga	37
5141	5082	rog	Northern Roglai	37
5142	5083	sme	Northern Sami	37
5143	5084	nsq	Northern Sierra Miwok	37
5144	5085	bks	Northern Sorsoganon	37
5145	5086	stb	Northern Subanen	37
5146	5087	thh	Northern Tarahumara	37
5147	5088	xpv	Northern Tasmanian	37
5148	5089	ntp	Northern Tepehuan	37
5149	5090	nod	Northern Thai	37
5150	5091	ntd	Northern Tidung	37
5151	5092	twf	Northern Tiwa	37
5152	5093	xtn	Northern Tlaxiaco Mixtec	37
5153	5094	tsp	Northern Toussian	37
5154	5095	tji	Northern Tujia	37
5155	5096	ttm	Northern Tutchone	37
5156	5097	uzn	Northern Uzbek	37
5157	5098	ykg	Northern Yukaghir	37
5158	5099	esk	Northwest Alaska Inupiatun	37
5159	5100	gya	Northwest Gbaya	37
5160	5101	mjd	Northwest Maidu	37
5161	5102	mxa	Northwest Oaxaca Mixtec	37
5162	5103	glh	Northwest Pashai	37
5163	5104	diw	Northwestern Dinka	37
5164	5105	faz	Northwestern Fars	37
5165	5106	kfb	Northwestern Kolami	37
5166	5107	nsf	Northwestern Nisu	37
5167	5108	ojb	Northwestern Ojibwa	37
5168	5109	xpw	Northwestern Tasmanian	37
5169	5110	nor	Norwegian	37
5170	5111	nob	Norwegian Bokmål	37
5171	5112	nno	Norwegian Nynorsk	37
5172	5113	nsl	Norwegian Sign Language	37
5173	5114	bly	Notre	37
5174	5115	ncf	Notsi	37
5175	5116	ntw	Nottoway	37
5176	5117	nwy	Nottoway-Meherrin	37
5177	5118	nov	Novial	37
5178	5119	noy	Noy	37
5179	5120	nse	Nsenga	37
5180	5121	nsc	Nshi	37
5181	5122	nsx	Nsongo	37
5182	5123	bud	Ntcham	37
5183	5124	nqt	Nteng	37
5184	5125	nto	Ntomba	37
5185	5126	baf	Nubaca	37
5186	5127	kcn	Nubi	37
5187	5128	kte	Nubri	37
5188	5129	nus	Nuer	37
5189	5130	nnv	Nugunu (Australia)	37
5190	5131	yas	Nugunu (Cameroon)	37
5191	5132	noc	Nuk	37
5192	5133	mbr	Nukak Makú	37
5193	5134	klt	Nukna	37
5194	5135	nuc	Nukuini	37
5195	5136	nuq	Nukumanu	37
5196	5137	xnu	Nukunul	37
5197	5138	nkr	Nukuoro	37
5198	5139	nur	Nukuria	37
5199	5140	nbr	Numana	37
5200	5141	nop	Numanggang	37
5201	5142	sij	Numbami	37
5202	5143	tgs	Nume	37
5203	5144	nxm	Numidian	37
5204	5145	kdk	Numèè	37
5205	5146	nut	Nung (Viet Nam)	37
5206	5147	nug	Nungali	37
5207	5148	nuy	Nunggubuyu	37
5208	5149	rin	Nungu	37
5209	5150	iii	Nuosu	37
5210	5151	npb	Nupbikha	37
5211	5152	nup	Nupe-Nupe-Tako	37
5212	5153	nul	Nusa Laut	37
5213	5154	nuf	Nusu	37
5214	5155	nuk	Nuu-chah-nulth	37
5215	5156	nwb	Nyabwa	37
5216	5157	nev	Nyaheun	37
5217	5158	cbn	Nyahkur	37
5218	5159	nyy	Nyakyusa-Ngonde	37
5219	5160	nlj	Nyali	37
5220	5161	nmi	Nyam	37
5221	5162	nly	Nyamal	37
5222	5163	now	Nyambo	37
5223	5164	nwm	Nyamusa-Molo	37
5224	5165	mwn	Nyamwanga	37
5225	5166	nym	Nyamwezi	37
5226	5167	nyk	Nyaneka	37
5227	5168	nyp	Nyang'i	37
5228	5169	nyj	Nyanga	37
5229	5170	nyc	Nyanga-li	37
5230	5171	nnj	Nyangatom	37
5231	5172	nyb	Nyangbo	37
5232	5173	nny	Nyangga	37
5233	5174	nna	Nyangumarta	37
5234	5175	nyn	Nyankole	37
5235	5176	yes	Nyankpa	37
5236	5177	sev	Nyarafolo Senoufo	37
5237	5178	rim	Nyaturu	37
5238	5179	nyw	Nyaw	37
5239	5180	nyt	Nyawaygi	37
5240	5181	nba	Nyemba	37
5241	5182	nye	Nyengo	37
5242	5183	neh	Nyenkha	37
5243	5184	nyl	Nyeu	37
5244	5185	nyr	Nyiha (Malawi)	37
5245	5186	nih	Nyiha (Tanzania)	37
5246	5187	nkv	Nyika (Malawi and Zambia)	37
5247	5188	nkt	Nyika (Tanzania)	37
5248	5189	nyh	Nyikina	37
5249	5190	lid	Nyindrou	37
5250	5191	nyg	Nyindu	37
5251	5192	njz	Nyishi	37
5252	5193	xny	Nyiyaparli	37
5253	5194	nvo	Nyokon	37
5254	5195	nuj	Nyole	37
5255	5196	muo	Nyong	37
5256	5197	nyd	Nyore	37
5257	5198	nyo	Nyoro	37
5258	5199	nyv	Nyulnyul	37
5259	5200	nys	Nyungar	37
5260	5201	nyu	Nyungwe	37
5261	5202	yly	Nyâlayu	37
5262	5203	nzd	Nzadi	37
5263	5204	nzy	Nzakambay	37
5264	5205	nzk	Nzakara	37
5265	5206	nja	Nzanyi	37
5266	5207	nzi	Nzima	37
5267	5208	neo	Ná-Meo	37
5268	5209	nee	Nêlêmwa-Nixumwak	37
5269	5210	hux	Nüpode Huitoto	37
5270	5211	ngh	Nǁng	37
5271	5212	xoc	O'chi'chi'	37
5272	5213	tyh	O'du	37
5273	5214	bzy	Obanliku	37
5274	5215	obi	Obispeño	37
5275	5216	obl	Oblo	37
5276	5217	obo	Obo Manobo	37
5277	5218	afz	Obokuitai	37
5278	5219	ann	Obolo	37
5279	5220	obu	Obulom	37
5280	5221	oca	Ocaina	37
5281	5222	oci	Occitan	37
5282	5223	mie	Ocotepec Mixtec	37
5283	5224	zac	Ocotlán Zapotec	37
5284	5225	odk	Od	37
5285	5226	ory	Odia	37
5286	5227	bhf	Odiai	37
5287	5228	kkc	Odoodee	37
5288	5229	odu	Odual	37
5289	5230	oda	Odut	37
5290	5231	opy	Ofayé	37
5291	5232	arc	Official Aramaic (700-300 BCE)	37
5292	5233	ofo	Ofo	37
5293	5234	ogc	Ogbah	37
5294	5235	ogb	Ogbia	37
5295	5236	ogg	Ogbogolo	37
5296	5237	ogu	Ogbronuagum	37
5297	5238	eri	Ogea	37
5298	5239	oia	Oirata	37
5299	5240	oji	Ojibwe, Ojibwa	37
5300	5241	chj	Ojitlán Chinantec	37
5301	5242	oka	Okanagan	37
5302	5243	okn	Oki-No-Erabu	37
5303	5244	oki	Okiek	37
5304	5245	oks	Oko-Eni-Osayen	37
5305	5246	okj	Oko-Juwoi	37
5306	5247	okb	Okobo	37
5307	5248	okd	Okodia	37
5308	5249	oie	Okolie	37
5309	5250	kqv	Okolod	37
5310	5251	opa	Okpamheri	37
5311	5252	okx	Okpe (Northwestern Edo)	37
5312	5253	oke	Okpe (Southwestern Edo)	37
5313	5254	opm	Oksapmin	37
5314	5255	oku	Oku	37
5315	5256	oar	Old Aramaic (up to 700 BCE)	37
5316	5257	oav	Old Avar	37
5317	5258	obt	Old Breton	37
5318	5259	obr	Old Burmese	37
5319	5260	ocm	Old Cham	37
5320	5261	och	Old Chinese	37
5321	5262	chu	Old Church Slavonic	37
5322	5263	oco	Old Cornish	37
5323	5264	odt	Old Dutch	37
5324	5265	ang	Old English (ca. 450-1100)	37
5325	5266	fro	Old French (842-ca. 1400)	37
5326	5267	ofs	Old Frisian	37
5327	5268	oge	Old Georgian	37
5328	5269	goh	Old High German (ca. 750-1050)	37
5329	5270	oht	Old Hittite	37
5330	5271	ohu	Old Hungarian	37
5331	5272	sga	Old Irish (to 900)	37
5332	5273	ojp	Old Japanese	37
5333	5274	okl	Old Kentish Sign Language	37
5334	5275	okz	Old Khmer	37
5335	5276	oko	Old Korean (3rd-9th cent.)	37
5336	5277	olt	Old Lithuanian	37
5337	5278	omy	Old Malay	37
5338	5279	omp	Old Manipuri	37
5339	5280	omr	Old Marathi	37
5340	5281	omx	Old Mon	37
5341	5282	non	Old Norse	37
5342	5283	onw	Old Nubian	37
5343	5284	oos	Old Ossetic	37
5344	5285	peo	Old Persian (ca. 600-400 B.C.)	37
5345	5286	pro	Old Provençal (to 1500)	37
5346	5287	orv	Old Russian	37
5347	5288	osx	Old Saxon	37
5348	5289	osp	Old Spanish	37
5349	5290	osn	Old Sundanese	37
5350	5291	oty	Old Tamil	37
5351	5292	otb	Old Tibetan	37
5352	5293	otk	Old Turkish	37
5353	5294	oui	Old Uighur	37
5354	5295	owl	Old Welsh	37
5355	5296	ole	Olekha	37
5356	5297	olk	Olkol	37
5357	5298	ong	Olo	37
5358	5299	olm	Oloma	37
5359	5300	olr	Olrat	37
5360	5301	lul	Olu'bo	37
5361	5302	iko	Olulumo-Ikom	37
5362	5303	plo	Oluta Popoluca	37
5363	5304	omg	Omagua	37
5364	5305	oma	Omaha-Ponca	37
5365	5306	acx	Omani Arabic	37
5366	5307	mbm	Ombamba	37
5367	5308	oml	Ombo	37
5368	5309	nht	Ometepec Nahuatl	37
5369	5310	omi	Omi	37
5370	5311	omk	Omok	37
5371	5312	omt	Omotik	37
5372	5313	omu	Omurano	37
5373	5314	ona	Ona	37
5374	5315	one	Oneida	37
5375	5316	oog	Ong	37
5376	5317	oni	Onin	37
5377	5318	onx	Onin Based Pidgin	37
5378	5319	onj	Onjob	37
5379	5320	ons	Ono	37
5380	5321	onn	Onobasulu	37
5381	5322	ono	Onondaga	37
5382	5323	ont	Ontenu	37
5383	5324	ojv	Ontong Java	37
5384	5325	oor	Oorlams	37
5385	5326	opo	Opao	37
5386	5327	opt	Opata	37
5387	5328	orn	Orang Kanaq	37
5388	5329	ors	Orang Seletar	37
5389	5330	sdr	Oraon Sadri	37
5390	5331	ore	Orejón	37
5391	5332	org	Oring	37
5392	5333	ori	Oriya	37
5393	5334	nlv	Orizaba Nahuatl	37
5394	5335	orc	Orma	37
5395	5336	orz	Ormu	37
5396	5337	oru	Ormuri	37
5397	5338	orx	Oro	37
5398	5339	orw	Oro Win	37
5399	5340	oac	Oroch	37
5400	5341	ora	Oroha	37
5401	5342	oaa	Orok	37
5402	5343	okv	Orokaiva	37
5403	5344	bdu	Oroko	37
5404	5345	oro	Orokolo	37
5405	5346	orm	Oromo	37
5406	5347	orh	Oroqen	37
5407	5348	bpk	Orowe	37
5408	5349	orr	Oruma	37
5409	5350	ury	Orya	37
5410	5351	osa	Osage	37
5411	5352	ost	Osatu	37
5412	5353	osc	Oscan	37
5413	5354	osi	Osing	37
5414	5355	oso	Ososo	37
5415	5356	oss	Ossetian, Ossetic	37
5416	5357	otd	Ot Danum	37
5417	5358	uta	Otank	37
5418	5359	oti	Oti	37
5419	5360	otr	Otoro	37
5420	5361	otw	Ottawa	37
5421	5362	ota	Ottoman Turkish (1500-1928)	37
5422	5363	lot	Otuho	37
5423	5364	otu	Otuke	37
5424	5365	oum	Ouma	37
5425	5366	oue	Oune	37
5426	5367	stn	Owa	37
5427	5368	wsr	Owenia	37
5428	5369	owi	Owiniga	37
5429	5370	oyb	Oy	37
5430	5371	oyy	Oya'oya	37
5431	5372	oyd	Oyda	37
5432	5373	xpd	Oyster Bay Tasmanian	37
5433	5374	zao	Ozolotepec Zapotec	37
5434	5375	chz	Ozumacín Chinantec	37
5435	5376	pdi	Pa Di	37
5436	5377	pqa	Pa'a	37
5437	5378	blk	Pa'o Karen	37
5438	5379	pha	Pa-Hng	37
5439	5380	drl	Paakantyi	37
5440	5381	pma	Paama	37
5441	5382	sig	Paasaal	37
5442	5383	pcp	Pacahuara	37
5443	5384	qvp	Pacaraos Quechua	37
5444	5385	ems	Pacific Gulf Yupik	37
5445	5386	pac	Pacoh	37
5446	5387	pdo	Padoe	37
5447	5388	pkc	Paekche	37
5448	5389	pgn	Paelignian	37
5449	5390	pgi	Pagi	37
5450	5391	pae	Pagibete	37
5451	5392	pgu	Pagu	37
5452	5393	apf	Pahanan Agta	37
5453	5394	phj	Pahari	37
5454	5395	phr	Pahari-Potwari	37
5455	5396	lgt	Pahi	37
5456	5397	phv	Pahlavani	37
5457	5398	pal	Pahlavi	37
5458	5399	pta	Pai Tavytera	37
5459	5400	pri	Paicî	37
5460	5401	ppi	Paipai	37
5461	5402	pck	Paite Chin	37
5462	5403	pwn	Paiwan	37
5463	5404	pkg	Pak-Tong	37
5464	5405	pkn	Pakanha	37
5465	5406	pav	Pakaásnovos	37
5466	5407	pks	Pakistan Sign Language	37
5467	5408	pku	Paku	37
5468	5409	jkp	Paku Karen	37
5469	5410	abw	Pal	37
5470	5411	plq	Palaic	37
5471	5412	plr	Palaka Senoufo	37
5472	5413	cpa	Palantla Chinantec	37
5473	5414	pau	Palauan	37
5474	5415	pnl	Paleni	37
5475	5416	pln	Palenquero	37
5476	5417	plu	Palikúr	37
5477	5418	pcf	Paliyan	37
5478	5419	pmd	Pallanganmiddang	37
5479	5420	fap	Paloor	37
5480	5421	ple	Palu'e	37
5481	5422	plz	Paluan	37
5482	5423	bpx	Palya Bareli	37
5483	5424	pmn	Pam	37
5484	5425	pmb	Pambia	37
5485	5426	pmf	Pamona	37
5486	5427	hih	Pamosu	37
5487	5428	pam	Pampanga	37
5488	5429	att	Pamplona Atta	37
5489	5430	pnq	Pana (Burkina Faso)	37
5490	5431	pnz	Pana (Central African Republic)	37
5491	5432	lsp	Panamanian Sign Language	37
5492	5433	par	Panamint	37
5493	5434	qxh	Panao Huánuco Quechua	37
5494	5435	kre	Panará	37
5495	5436	psn	Panasuan	37
5496	5437	pwb	Panawa	37
5497	5438	pnp	Pancana	37
5498	5439	tdb	Panchpargania	37
5499	5440	bkj	Pande	37
5500	5441	pag	Pangasinan	37
5501	5442	pgs	Pangseng	37
5502	5443	png	Pangu	37
5503	5444	slm	Pangutaran Sama	37
5504	5445	pbr	Pangwa	37
5505	5446	pgg	Pangwali	37
5506	5447	pnr	Panim	37
5507	5448	pcg	Paniya	37
5508	5449	pan	Panjabi, Punjabi	37
5509	5450	pax	Pankararé	37
5510	5451	paz	Pankararú	37
5511	5452	pkh	Pankhu	37
5512	5453	pnc	Pannei	37
5513	5454	mqz	Pano	37
5514	5455	knt	Panoan Katukína	37
5515	5456	pno	Panobo	37
5516	5457	bfc	Panyi Bai	37
5517	5458	top	Papantla Totonac	37
5518	5459	ppn	Papapana	37
5519	5460	dpp	Papar	37
5520	5461	pas	Papasena	37
5521	5462	pbo	Papel	37
5522	5463	ppe	Papi	37
5523	5464	pap	Papiamento	37
5524	5465	ppu	Papora	37
5525	5466	pgz	Papua New Guinean Sign Language	37
5526	5467	pmy	Papuan Malay	37
5527	5468	ppm	Papuma	37
5528	5469	prc	Parachi	37
5529	5470	gug	Paraguayan Guaraní	37
5530	5471	pys	Paraguayan Sign Language	37
5531	5472	pak	Parakanã	37
5532	5473	prf	Paranan	37
5533	5474	paf	Paranawát	37
5534	5475	pbg	Paraujano	37
5535	5476	prk	Parauk	37
5536	5477	prw	Parawen	37
5537	5478	pch	Pardhan	37
5538	5479	pcl	Pardhi	37
5539	5480	ppt	Pare	37
5540	5481	pab	Parecís	37
5541	5482	pcj	Parenga	37
5542	5483	kvx	Parkari Koli	37
5543	5484	pbi	Parkwa	37
5544	5485	prd	Parsi-Dari	37
5545	5486	xpr	Parthian	37
5546	5487	paq	Parya	37
5547	5488	aap	Pará Arára	37
5548	5489	gvp	Pará Gavião	37
5549	5490	pus	Pashto, Pushto	37
5550	5491	psq	Pasi	37
5551	5492	yac	Pass Valley Yali	37
5552	5493	pbc	Patamona	37
5553	5494	ptn	Patani	37
5554	5495	pth	Pataxó Hã-Ha-Hãe	37
5555	5496	ptp	Patep	37
5556	5497	pty	Pathiya	37
5557	5498	gfk	Patpatar	37
5558	5499	lae	Pattani	37
5559	5500	mfa	Pattani Malay	37
5560	5501	ptq	Pattapu	37
5561	5502	pwi	Patwin	37
5562	5503	plh	Paulohi	37
5563	5504	pad	Paumarí	37
5564	5505	pnk	Paunaka	37
5565	5506	bfb	Pauri Bareli	37
5566	5507	psm	Pauserna	37
5567	5508	pwa	Pawaia	37
5568	5509	paw	Pawnee	37
5569	5510	pmr	Paynamar	37
5570	5511	pzh	Pazeh	37
5571	5512	pai	Pe	37
5572	5513	pcb	Pear	37
5573	5514	pay	Pech	37
5574	5515	xpc	Pecheneg	37
5575	5516	nso	Pedi	37
5576	5517	ppq	Pei	37
5577	5518	pel	Pekal	37
5578	5519	bxd	Pela	37
5579	5520	ata	Pele-Ata	37
5580	5521	ppp	Pelende	37
5581	5522	aoc	Pemon	37
5582	5523	psg	Penang Sign Language	37
5583	5524	pek	Penchal	37
5584	5525	ums	Pendau	37
5585	5526	peg	Pengo	37
5586	5527	pdc	Pennsylvania German	37
5587	5528	pnh	Penrhyn	37
5588	5529	ptw	Pentlatch	37
5589	5530	wet	Perai	37
5590	5531	pea	Peranakan Indonesian	37
5591	5532	pfe	Pere	37
5592	5533	mvf	Peripheral Mongolian	37
5593	5534	pip	Pero	37
5594	5535	fas	Persian (Farsi)	37
5595	5536	prl	Peruvian Sign Language	37
5596	5537	pze	Pesse	37
5597	5538	zpe	Petapa Zapotec	37
5598	5539	pex	Petats	37
5599	5540	pey	Petjo	37
5600	5541	mil	Peñoles Mixtec	37
5601	5542	pfl	Pfaelzisch	37
5602	5543	prt	Phai	37
5603	5544	phk	Phake	37
5604	5545	ypa	Phala	37
5605	5546	phl	Phalura	37
5606	5547	phq	Phana'	37
5607	5548	phw	Phangduwali	37
5608	5549	pem	Phende	37
5609	5550	psp	Philippine Sign Language	37
5610	5551	phm	Phimbi	37
5611	5552	phn	Phoenician	37
5612	5553	ypg	Phola	37
5613	5554	yip	Pholo	37
5614	5555	nph	Phom Naga	37
5615	5556	pnx	Phong-Kniang	37
5616	5557	kjt	Phrae Pwo Karen	37
5617	5558	xpg	Phrygian	37
5618	5559	pht	Phu Thai	37
5619	5560	phu	Phuan	37
5620	5561	phd	Phudagi	37
5621	5562	pug	Phuie	37
5622	5563	phh	Phukha	37
5623	5564	ypm	Phuma	37
5624	5565	pho	Phunoi	37
5625	5566	phg	Phuong	37
5626	5567	ypp	Phupa	37
5627	5568	yph	Phupha	37
5628	5569	ypz	Phuza	37
5629	5570	ptr	Piamatsina	37
5630	5571	pin	Piame	37
5631	5572	pio	Piapoco	37
5632	5573	pid	Piaroa	37
5633	5574	pcd	Picard	37
5634	5575	cpu	Pichis Ashéninka	37
5635	5576	xpi	Pictish	37
5636	5577	dep	Pidgin Delaware	37
5637	5578	pms	Piemontese	37
5638	5579	pij	Pijao	37
5639	5580	piz	Pije	37
5640	5581	pis	Pijin	37
5641	5582	plg	Pilagá	37
5642	5583	piv	Pileni	37
5643	5584	pia	Pima Bajo	37
5644	5585	piw	Pimbwe	37
5645	5586	pnn	Pinai-Hagahai	37
5646	5587	pti	Pindiini	37
5647	5588	pif	Pingelapese	37
5648	5589	pnv	Pinigura	37
5649	5590	pnj	Pinjarup	37
5650	5591	pic	Pinji	37
5651	5592	mio	Pinotepa Nacional Mixtec	37
5652	5593	piu	Pintupi-Luritja	37
5653	5594	pny	Pinyin	37
5654	5595	ppl	Pipil	37
5655	5596	myp	Pirahã	37
5656	5597	pir	Piratapuyo	37
5657	5598	bxi	Pirlatapa	37
5658	5599	pie	Piro	37
5659	5600	xpa	Pirriya	37
5660	5601	pig	Pisabo	37
5661	5602	tpp	Pisaflores Tepehua	37
5662	5603	psy	Piscataway	37
5663	5604	xps	Pisidian	37
5664	5605	pih	Pitcairn-Norfolk	37
5665	5606	sje	Pite Sami	37
5666	5607	pcn	Piti	37
5667	5608	pjt	Pitjantjatjara	37
5668	5609	pit	Pitta Pitta	37
5669	5610	pix	Piu	37
5670	5611	piy	Piya-Kwonci	37
5671	5612	crk	Plains Cree	37
5672	5613	psd	Plains Indian Sign Language	37
5673	5614	pmw	Plains Miwok	37
5674	5615	ktj	Plapo Krumen	37
5675	5616	plt	Plateau Malagasy	37
5676	5617	pdt	Plautdietsch	37
5677	5618	gob	Playero	37
5678	5619	pbv	Pnar	37
5679	5620	npo	Pochuri Naga	37
5680	5621	xpo	Pochutec	37
5681	5622	pdn	Podena	37
5682	5623	poy	Pogolo	37
5683	5624	pon	Pohnpeian	37
5684	5625	pok	Pokangá	37
5685	5626	pof	Poke	37
5686	5627	pkb	Pokomo	37
5687	5628	pox	Polabian	37
5688	5629	pld	Polari	37
5689	5630	pol	Polish	37
5690	5631	pso	Polish Sign Language	37
5691	5632	plb	Polonombauk	37
5692	5633	pmo	Pom	37
5693	5634	pmm	Pomo	37
5694	5635	ncc	Ponam	37
5695	5636	pns	Ponosakan	37
5696	5637	pnt	Pontic	37
5697	5638	npg	Ponyo-Gongwang Naga	37
5698	5639	jac	Popti'	37
5699	5640	poc	Poqomam	37
5700	5641	poh	Poqomchi'	37
5701	5642	prh	Porohanon	37
5702	5643	psw	Port Sandwich	37
5703	5644	xpl	Port Sorell Tasmanian	37
5704	5645	ptv	Port Vato	37
5705	5646	por	Portuguese	37
5706	5647	psr	Portuguese Sign Language	37
5707	5648	pot	Potawatomi	37
5708	5649	pog	Potiguára	37
5709	5650	gdb	Pottangi Ollar Gadaba	37
5710	5651	pmx	Poumei Naga	37
5711	5652	bye	Pouye	37
5712	5653	pwr	Powari	37
5713	5654	pim	Powhatan	37
5714	5655	pyn	Poyanáwa	37
5715	5656	prn	Prasuni	37
5716	5657	pgl	Primitive Irish	37
5717	5658	pre	Principense	37
5718	5659	prz	Providencia Sign Language	37
5719	5660	prg	Prussian	37
5720	5661	kvj	Psikye	37
5721	5662	cpx	Pu-Xian Chinese	37
5722	5663	pux	Puare	37
5723	5664	atp	Pudtol Atta	37
5724	5665	pbm	Puebla Mazatec	37
5725	5666	pue	Puelche	37
5726	5667	psl	Puerto Rican Sign Language	37
5727	5668	npu	Puimei Naga	37
5728	5669	pui	Puinave	37
5729	5670	pkp	Pukapuka	37
5730	5671	fuc	Pulaar	37
5731	5672	pup	Pulabu	37
5732	5673	fuf	Pular	37
5733	5674	puw	Puluwatese	37
5734	5675	pum	Puma	37
5735	5676	xpm	Pumpokol	37
5736	5677	yae	Pumé	37
5737	5678	pud	Punan Aput	37
5738	5679	pna	Punan Bah-Biau	37
5739	5680	pnm	Punan Batu 1	37
5740	5681	puf	Punan Merah	37
5741	5682	puc	Punan Merap	37
5742	5683	puj	Punan Tubu	37
5743	5684	xpu	Punic	37
5744	5685	qxp	Puno Quechua	37
5745	5686	xpt	Punthamara	37
5746	5687	puu	Punu	37
5747	5688	puo	Puoc	37
5748	5689	puq	Puquina	37
5749	5690	pru	Puragi	37
5750	5691	iar	Purari	37
5751	5692	tsz	Purepecha	37
5752	5693	prr	Puri	37
5753	5694	prx	Purik	37
5754	5695	puy	Purisimeño	37
5755	5696	suv	Puroik	37
5756	5697	pur	Puruborá	37
5757	5698	pub	Purum	37
5758	5699	mfl	Putai	37
5759	5700	put	Putoh	37
5760	5701	afe	Putukwam	37
5761	5702	xpy	Puyo	37
5762	5703	xpp	Puyo-Paekche	37
5763	5704	pyu	Puyuma	37
5764	5705	pme	Pwaamei	37
5765	5706	pop	Pwapwâ	37
5766	5707	kjp	Pwo Eastern Karen	37
5767	5708	pww	Pwo Northern Karen	37
5768	5709	pwo	Pwo Western Karen	37
5769	5710	pcw	Pyapun	37
5770	5711	pye	Pye Krumen	37
5771	5712	pyy	Pyen	37
5772	5713	pyx	Pyu (Myanmar)	37
5773	5714	pby	Pyu (Papua New Guinea)	37
5774	5715	pbb	Páez	37
5775	5716	pfa	Pááfang	37
5776	5717	lkr	Päri	37
5777	5718	pev	Pémono	37
5778	5719	lme	Pévé	37
5779	5720	pko	Pökoot	37
5780	5721	pli	Pāli	37
5781	5722	kjb	Q'anjob'al	37
5782	5723	laq	Qabiao	37
5783	5724	byx	Qaqet	37
5784	5725	qxq	Qashqa'i	37
5785	5726	xqt	Qatabanian	37
5786	5727	gqu	Qau	37
5787	5728	alc	Qawasqar	37
5788	5729	ymq	Qila Muji	37
5789	5730	ahg	Qimant	37
5790	5731	zqe	Qiubei Zhuang	37
5791	5732	qua	Quapaw	37
5792	5733	fcs	Quebec Sign Language	37
5793	5734	yum	Quechan	37
5794	5735	que	Quechua	37
5795	5736	qya	Quenya	37
5796	5737	otq	Querétaro Otomi	37
5797	5738	pxm	Quetzaltepec Mixe	37
5798	5739	qvy	Queyu	37
5799	5740	zpj	Quiavicuzas Zapotec	37
5800	5741	qui	Quileute	37
5801	5742	qun	Quinault	37
5802	5743	quq	Quinqui	37
5803	5744	ztq	Quioquitani-Quierí Zapotec	37
5804	5745	chq	Quiotepec Chinantec	37
5805	5746	qyp	Quiripi	37
5806	5747	rah	Rabha	37
5807	5748	rad	Rade	37
5808	5749	xrr	Raetic	37
5809	5750	raz	Rahambuu	37
5810	5751	mqk	Rajah Kabunsuwan Manobo	37
5811	5752	raj	Rajasthani	37
5812	5753	rjs	Rajbanshi	37
5813	5754	rji	Raji	37
5814	5755	rjg	Rajong	37
5815	5756	gra	Rajput Garasia	37
5816	5757	rkh	Rakahanga-Manihiki	37
5817	5758	rki	Rakhine	37
5818	5759	ral	Ralte	37
5819	5760	rma	Rama	37
5820	5761	rai	Ramoaaina	37
5821	5762	kjx	Ramopa	37
5822	5763	lje	Rampi	37
5823	5764	thr	Rana Tharu	37
5824	5765	rax	Rang	37
5825	5766	lag	Rangi	37
5826	5767	rgk	Rangkas	37
5827	5768	rnl	Ranglong	37
5828	5769	rkt	Rangpuri	37
5829	5770	rao	Rao	37
5830	5771	ray	Rapa	37
5831	5772	rap	Rapanui	37
5832	5773	kyx	Rapoisi	37
5833	5774	rpt	Rapting	37
5834	5775	lra	Rara Bakati'	37
5835	5776	rar	Rarotongan	37
5836	5777	rac	Rasawa	37
5837	5778	btn	Ratagnon	37
5838	5779	rth	Ratahan	37
5839	5780	rtw	Rathawi	37
5840	5781	bgd	Rathwi Bareli	37
5841	5782	rau	Raute	37
5842	5783	yea	Ravula	37
5843	5784	rwo	Rawa	37
5844	5785	raw	Rawang	37
5845	5786	jnl	Rawat	37
5846	5787	weu	Rawngtu Chin	37
5847	5788	rwa	Rawo	37
5848	5789	zor	Rayón Zoque	37
5849	5790	rat	Razajerdi	37
5850	5791	gir	Red Gelao	37
5851	5792	atu	Reel	37
5852	5793	rej	Rejang	37
5853	5794	ree	Rejang Kayan	37
5854	5795	rei	Reli	37
5855	5796	bow	Rema	37
5856	5797	rmb	Rembarrnga	37
5857	5798	reb	Rembong	37
5858	5799	rem	Remo	37
5859	5800	agv	Remontado Dumagat	37
5860	5801	rmp	Rempi	37
5861	5802	lkj	Remun	37
5862	5803	rel	Rendille	37
5863	5804	ren	Rengao	37
5864	5805	mnv	Rennell-Bellona	37
5865	5806	rpn	Repanbitip	37
5866	5807	rer	Rer Bare	37
5867	5808	rea	Rerau	37
5868	5809	pgk	Rerep	37
5869	5810	res	Reshe	37
5870	5811	rgr	Resígaro	37
5871	5812	ret	Retta	37
5872	5813	rey	Reyesano	37
5873	5814	ria	Riang (India)	37
5874	5815	yin	Riang Lai	37
5875	5816	ril	Riang Lang	37
5876	5817	ran	Riantana	37
5877	5818	rir	Ribun	37
5878	5819	iri	Rigwe	37
5879	5820	rkb	Rikbaktsa	37
5880	5821	bto	Rinconada Bikol	37
5881	5822	zar	Rincón Zapotec	37
5882	5823	rgu	Ringgou	37
5883	5824	rri	Ririo	37
5884	5825	rsw	Rishiwa	37
5885	5826	rit	Ritharrngu	37
5886	5827	riu	Riung	37
5887	5828	snj	Riverain Sango	37
5888	5829	lbn	Rmeet	37
5889	5830	rod	Rogo	37
5890	5831	rhg	Rohingya	37
5891	5832	rmm	Roma	37
5892	5833	rgn	Romagnol	37
5893	5834	rmx	Romam	37
5894	5835	ron	Romanian	37
5895	5836	rms	Romanian Sign Language	37
5896	5837	rge	Romano-Greek	37
5897	5838	rsb	Romano-Serbian	37
5898	5839	rmv	Romanova	37
5899	5840	roh	Romansh	37
5900	5841	rom	Romany	37
5901	5842	rol	Romblomanon	37
5902	5843	rof	Rombo	37
5903	5844	rmk	Romkun	37
5904	5845	cla	Ron	37
5905	5846	rng	Ronga	37
5906	5847	ror	Rongga	37
5907	5848	nbu	Rongmei Naga	37
5908	5849	rnp	Rongpo	37
5909	5850	roe	Ronji	37
5910	5851	rnn	Roon	37
5911	5852	rga	Roria	37
5912	5853	roo	Rotokas	37
5913	5854	rtm	Rotuman	37
5914	5855	rug	Roviana	37
5915	5856	pce	Ruching Palaung	37
5916	5857	rdb	Rudbari	37
5917	5858	rui	Rufiji	37
5918	5859	ruh	Ruga	37
5919	5860	dru	Rukai	37
5920	5861	ruz	Ruma	37
5921	5862	rbb	Rumai Palaung	37
5922	5863	klq	Rumu	37
5923	5864	rou	Runga	37
5924	5865	rtc	Rungtu Chin	37
5925	5866	drg	Rungus	37
5926	5867	rnw	Rungwa	37
5927	5868	bxr	Russia Buriat	37
5928	5869	rus	Russian	37
5929	5870	rsl	Russian Sign Language	37
5930	5871	rue	Rusyn	37
5931	5872	rsk	Ruthenian	37
5932	5873	rut	Rutul	37
5933	5874	ruc	Ruuli	37
5934	5875	rnd	Ruund	37
5935	5876	rwl	Ruwila	37
5936	5877	rwk	Rwa	37
5937	5878	rsn	Rwandan Sign Language	37
5938	5879	rcf	Réunion Creole French	37
5939	5880	rzh	Rāziḥī	37
5940	5881	ksw	S'gaw Karen	37
5941	5882	sax	Sa	37
5942	5883	apb	Sa'a	37
5943	5884	snv	Sa'ban	37
5944	5885	scq	Sa'och	37
5945	5886	sav	Saafi-Saafi	37
5946	5887	raq	Saam	37
5947	5888	lsm	Saamia	37
5948	5889	sxr	Saaroa	37
5949	5890	saa	Saba	37
5950	5891	xsa	Sabaean	37
5951	5892	bsy	Sabah Bisaya	37
5952	5893	msi	Sabah Malay	37
5953	5894	sae	Sabanê	37
5954	5895	spy	Sabaot	37
5955	5896	sbv	Sabine	37
5956	5897	hvn	Sabu	37
5957	5898	sbo	Sabüm	37
5958	5899	quv	Sacapulteco	37
5959	5900	sck	Sadri	37
5960	5901	skb	Saek	37
5961	5902	spd	Saep	37
5962	5903	saf	Safaliba	37
5963	5904	apz	Safeyoka	37
5964	5905	sbk	Safwa	37
5965	5906	sbm	Sagala	37
5966	5907	tga	Sagalla	37
5967	5908	ssy	Saho	37
5968	5909	saj	Sahu	37
5969	5910	aec	Saidi Arabic	37
5970	5911	acf	Saint Lucian Creole French	37
5971	5912	xsy	Saisiyat	37
5972	5913	sjl	Sajalong	37
5973	5914	sjb	Sajau Basap	37
5974	5915	sch	Sakachep	37
5975	5916	skg	Sakalava Malagasy	37
5976	5917	sku	Sakao	37
5977	5918	skt	Sakata	37
5978	5919	sak	Sake	37
5979	5920	skf	Sakirabiá	37
5980	5921	szy	Sakizaya	37
5981	5922	shq	Sala	37
5982	5923	slx	Salampasu	37
5983	5924	slr	Salar	37
5984	5925	sgu	Salas	37
5985	5926	qxl	Salasaca Highland Quichua	37
5986	5927	xmx	Salawati	37
5987	5928	sau	Saleman	37
5988	5929	sbe	Saliba	37
5989	5930	sln	Salinan	37
5990	5931	sdz	Sallands	37
5991	5932	sll	Salt-Yui	37
5992	5933	loe	Saluan	37
5993	5934	slj	Salumá	37
5994	5935	esn	Salvadoran Sign Language	37
5995	5936	snx	Sam	37
5996	5937	smp	Samaritan	37
5997	5938	sam	Samaritan Aramaic	37
5998	5939	tmj	Samarokena	37
5999	5940	ysd	Samatao	37
6000	5941	syx	Samay	37
6001	5942	smx	Samba	37
6002	5943	ccg	Samba Daka	37
6003	5944	ndi	Samba Leko	37
6004	5945	xsb	Sambal	37
6005	5946	spv	Sambalpuri	37
6006	5947	xab	Sambe	37
6007	5948	ssx	Samberigi	37
6008	5949	saq	Samburu	37
6009	5950	smh	Samei	37
6010	5951	smq	Samo	37
6011	5952	smo	Samoan	37
6012	5953	sgs	Samogitian	37
6013	5954	swm	Samosa	37
6014	5955	rav	Sampang	37
6015	5956	sxm	Samre	37
6016	5957	stu	Samtao	37
6017	5958	smv	Samvedi	37
6018	5959	ztm	San Agustín Mixtepec Zapotec	37
6019	5960	zpx	San Baltazar Loxicha Zapotec	37
6020	5961	cuk	San Blas Kuna	37
6021	5962	hve	San Dionisio Del Mar Huave	37
6022	5963	pow	San Felipe Otlaltepec Popoloca	37
6023	5964	hue	San Francisco Del Mar Huave	37
6024	5965	mat	San Francisco Matlatzinca	37
6025	5966	maa	San Jerónimo Tecóatl Mazatec	37
6026	5967	poe	San Juan Atzingo Popoloca	37
6027	5968	mjc	San Juan Colorado Mixtec	37
6028	5969	xtj	San Juan Teita Mixtec	37
6029	5970	pps	San Luís Temalacayuca Popoloca	37
6030	5971	pls	San Marcos Tlacoyalco Popoloca	37
6031	5972	trq	San Martín Itunyoso Triqui	37
6032	5973	qvs	San Martín Quechua	37
6033	5974	huv	San Mateo Del Mar Huave	37
6034	5975	scf	San Miguel Creole French	37
6035	5976	mig	San Miguel El Grande Mixtec	37
6036	5977	xtp	San Miguel Piedras Mixtec	37
6037	5978	azg	San Pedro Amuzgos Amuzgo	37
6038	5979	zpf	San Pedro Quiatoni Zapotec	37
6039	5980	kwy	San Salvador Kongo	37
6040	5981	zpt	San Vicente Coatlán Zapotec	37
6041	5982	ayn	Sanaani Arabic	37
6042	5983	spn	Sanapaná	37
6043	5984	sad	Sandawe	37
6044	5985	sng	Sanga (Democratic Republic of Congo)	37
6045	5986	xsn	Sanga (Nigeria)	37
6046	5987	scg	Sanggau	37
6047	5988	snl	Sangil	37
6048	5989	sxn	Sangir	37
6049	5990	sgr	Sangisari	37
6050	5991	sgk	Sangkong	37
6051	5992	sgy	Sanglechi	37
6052	5993	sag	Sango	37
6053	5994	nsa	Sangtam Naga	37
6054	5995	snq	Sangu (Gabon)	37
6055	5996	sbp	Sangu (Tanzania)	37
6056	5997	ysn	Sani	37
6057	5998	ysy	Sanie	37
6058	5999	sny	Saniyo-Hiyewe	37
6059	6000	msc	Sankaran Maninka	37
6060	6001	ssi	Sansi	37
6061	6002	san	Sanskrit (Saṁskṛta)	37
6062	6003	qxt	Santa Ana de Tusi Pasco Quechua	37
6063	6004	ztn	Santa Catarina Albarradas Zapotec	37
6064	6005	pca	Santa Inés Ahuatempan Popoloca	37
6065	6006	zpn	Santa Inés Yatzechi Zapotec	37
6066	6007	mdv	Santa Lucía Monteverde Mixtec	37
6067	6008	hvv	Santa María Del Mar Huave	37
6068	6009	nhz	Santa María La Alta Nahuatl	37
6069	6010	zpi	Santa María Quiegolani Zapotec	37
6070	6011	mza	Santa María Zacatepec Mixtec	37
6071	6012	cok	Santa Teresa Cora	37
6072	6013	sat	Santali	37
6073	6014	zpr	Santiago Xanica Zapotec	37
6074	6015	qus	Santiago del Estero Quichua	37
6075	6016	zas	Santo Domingo Albarradas Zapotec	37
6076	6017	xsu	Sanumá	37
6077	6018	spr	Saparua	37
6078	6019	krn	Sapo	37
6079	6020	spi	Saponi	37
6080	6021	sps	Saposa	37
6081	6022	spu	Sapuan	37
6082	6023	spc	Sapé	37
6083	6024	mwm	Sar	37
6084	6025	sre	Sara	37
6085	6026	sbz	Sara Kaba	37
6086	6027	kwg	Sara Kaba Deme	37
6087	6028	kwv	Sara Kaba Náà	37
6088	6029	skr	Saraiki	37
6089	6030	srm	Saramaccan	37
6090	6031	bps	Sarangani Blaan	37
6091	6032	mbs	Sarangani Manobo	37
6092	6033	zsa	Sarasira	37
6093	6034	sar	Saraveca	37
6094	6035	srd	Sardinian	37
6095	6036	asj	Sari	37
6096	6037	srh	Sarikoli	37
6097	6038	sdf	Sarli	37
6098	6039	srs	Sarsi	37
6099	6040	onp	Sartang	37
6100	6041	swy	Sarua	37
6101	6042	sdu	Sarudu	37
6102	6043	sra	Saruga	37
6103	6044	sas	Sasak	37
6104	6045	sxs	Sasaru	37
6105	6046	sdc	Sassarese Sardinian	37
6106	6047	stw	Satawalese	37
6107	6048	stq	Saterfriesisch	37
6108	6049	mav	Sateré-Mawé	37
6109	6050	sdl	Saudi Arabian Sign Language	37
6110	6051	psu	Sauraseni Prākrit	37
6111	6052	saz	Saurashtra	37
6112	6053	srt	Sauri	37
6113	6054	mjt	Sauria Paharia	37
6114	6055	sao	Sause	37
6115	6056	ssj	Sausi	37
6116	6057	sdg	Savi	37
6117	6058	svs	Savosavo	37
6118	6059	szw	Sawai	37
6119	6060	swr	Saweru	37
6120	6061	saw	Sawi	37
6121	6062	swt	Sawila	37
6122	6063	swn	Sawknah	37
6123	6064	sxw	Saxwe Gbe	37
6124	6065	say	Saya	37
6125	6066	pos	Sayula Popoluca	37
6126	6067	sco	Scots	37
6127	6068	xsc	Scythian	37
6128	6069	gul	Sea Island Creole English	37
6129	6070	kdg	Seba	37
6130	6071	sgw	Sebat Bet Gurage	37
6131	6072	sbx	Seberuang	37
6132	6073	sib	Sebop	37
6133	6074	sec	Sechelt	37
6134	6075	sey	Secoya	37
6135	6076	sed	Sedang	37
6136	6077	trv	Sediq	37
6137	6078	tvw	Sedoa	37
6138	6079	sos	Seeku	37
6139	6080	sge	Segai	37
6140	6081	seg	Segeju	37
6141	6082	sbg	Seget	37
6142	6083	sfw	Sehwi	37
6143	6084	ssg	Seimat	37
6144	6085	hik	Seit-Kaitetu	37
6145	6086	sek	Sekani	37
6146	6087	skp	Sekapan	37
6147	6088	skz	Sekar	37
6148	6089	skj	Seke (Nepal)	37
6149	6090	ske	Seke (Vanuatu)	37
6150	6091	vaj	Sekele	37
6151	6092	syi	Seki	37
6152	6093	skx	Seko Padang	37
6153	6094	sko	Seko Tengah	37
6154	6095	lip	Sekpele	37
6155	6096	kgi	Selangor Sign Language	37
6156	6097	slu	Selaru	37
6157	6098	sly	Selayar	37
6158	6099	snw	Selee	37
6159	6100	spl	Selepet	37
6160	6101	sxl	Selian	37
6161	6102	sel	Selkup	37
6162	6103	slg	Selungai Murut	37
6163	6104	sws	Seluwasan	37
6164	6105	sea	Semai	37
6165	6106	sdq	Semandang	37
6166	6107	szc	Semaq Beri	37
6167	6108	sbr	Sembakung Murut	37
6168	6109	sza	Semelai	37
6169	6110	etz	Semimi	37
6170	6111	ssm	Semnam	37
6171	6112	smy	Semnani	37
6172	6113	xse	Sempan	37
6173	6114	seh	Sena	37
6174	6115	seq	Senara Sénoufo	37
6175	6116	syn	Senaya	37
6176	6117	sej	Sene	37
6177	6118	see	Seneca	37
6178	6119	sds	Sened	37
6179	6120	szg	Sengele	37
6180	6121	snu	Senggi	37
6181	6122	spk	Sengo	37
6182	6123	ssz	Sengseng	37
6183	6124	sjs	Senhaja De Srair	37
6184	6125	sni	Sensi	37
6185	6126	set	Sentani	37
6186	6127	sez	Senthang Chin	37
6187	6128	std	Sentinel	37
6188	6129	spb	Sepa (Indonesia)	37
6189	6130	spe	Sepa (Papua New Guinea)	37
6190	6131	iws	Sepik Iwam	37
6191	6132	sry	Sera	37
6192	6133	srp	Serbian	37
6193	6134	hbs	Serbo-Croatian	37
6194	6135	swf	Sere	37
6195	6136	srr	Serer	37
6196	6137	sei	Seri	37
6197	6138	sve	Serili	37
6198	6139	kqu	Seroa	37
6199	6140	ser	Serrano	37
6200	6141	srw	Serua	37
6201	6142	srk	Serudung Murut	37
6202	6143	seu	Serui-Laut	37
6203	6144	crs	Seselwa Creole French	37
6204	6145	stf	Seta	37
6205	6146	stm	Setaman	37
6206	6147	sbi	Seti	37
6207	6148	sta	Settla	37
6208	6149	ojs	Severn Ojibwa	37
6209	6150	sew	Sewa Bay	37
6210	6151	lsw	Seychelles Sign Language	37
6211	6152	sze	Seze	37
6212	6153	scw	Sha	37
6213	6154	sdb	Shabak	37
6214	6155	srz	Shahmirzadi	37
6215	6156	shm	Shahrudi	37
6216	6157	sha	Shall-Zwall	37
6217	6158	sqa	Shama-Sambuga	37
6218	6159	xsh	Shamang	37
6219	6160	ksb	Shambala	37
6220	6161	shn	Shan	37
6221	6162	swo	Shanenawa	37
6222	6163	sho	Shanga	37
6223	6164	mcd	Sharanahua	37
6224	6165	ssv	Shark Bay	37
6225	6166	swq	Sharwa	37
6226	6167	sht	Shasta	37
6227	6168	shj	Shatt	37
6228	6169	sqh	Shau	37
6229	6170	sjw	Shawnee	37
6230	6171	shx	She	37
6231	6172	shv	Shehri	37
6232	6173	swv	Shekhawati	37
6233	6174	moy	Shekkacho	37
6234	6175	she	Sheko	37
6235	6176	sth	Shelta	37
6236	6177	seb	Shempire Senoufo	37
6237	6178	shl	Shendu	37
6238	6179	scv	Sheni	37
6239	6180	bun	Sherbro	37
6240	6181	sdp	Sherdukpen	37
6241	6182	xsr	Sherpa	37
6242	6183	kip	Sheshi Kham	37
6243	6184	shr	Shi	37
6244	6185	ssh	Shihhi Arabic	37
6245	6186	gua	Shiki	37
6246	6187	shk	Shilluk	37
6247	6188	scl	Shina	37
6248	6189	shp	Shipibo-Conibo	37
6249	6190	sle	Sholaga	37
6250	6191	sii	Shom Peng	37
6251	6192	sna	Shona	37
6252	6193	bcv	Shoo-Minda-Nye	37
6253	6194	cjs	Shor	37
6254	6195	shh	Shoshoni	37
6255	6196	shg	Shua	37
6256	6197	sdt	Shuadit	37
6257	6198	jiv	Shuar	37
6258	6199	suj	Shubi	37
6259	6200	sgh	Shughni	37
6260	6201	sxg	Shuhi	37
6261	6202	sts	Shumashti	37
6262	6203	scu	Shumcho	37
6263	6204	shs	Shuswap	37
6264	6205	shw	Shwai	37
6265	6206	pll	Shwe Palaung	37
6266	6207	slw	Sialum	37
6267	6208	sif	Siamou	37
6268	6209	spg	Sian	37
6269	6210	snp	Siane	37
6270	6211	sya	Siang	37
6271	6212	sjr	Siar-Lak	37
6272	6213	mmp	Siawi	37
6273	6214	nco	Sibe	37
6274	6215	sty	Siberian Tatar	37
6275	6216	sdx	Sibu Melanau	37
6276	6217	sxc	Sicanian	37
6277	6218	scx	Sicel	37
6278	6219	scn	Sicilian	37
6279	6220	sqr	Siculo Arabic	37
6280	6221	sid	Sidamo	37
6281	6222	xsd	Sidetic	37
6282	6223	erg	Sie	37
6283	6224	sgx	Sierra Leone Sign Language	37
6284	6225	nsu	Sierra Negra Nahuatl	37
6285	6226	zaa	Sierra de Juárez Zapotec	37
6286	6227	sxe	Sighu	37
6287	6228	snr	Sihan	37
6288	6229	qws	Sihuas Ancash Quechua	37
6289	6230	ski	Sika	37
6290	6231	sky	Sikaiana	37
6291	6232	tty	Sikaritai	37
6292	6233	sik	Sikiana	37
6293	6234	sip	Sikkimese	37
6294	6235	bla	Siksika	37
6295	6236	skh	Sikule	37
6296	6237	slt	Sila	37
6297	6238	mks	Silacayoapan Mixtec	37
6298	6239	sbq	Sileibi	37
6299	6240	szl	Silesian	37
6300	6241	wul	Silimo	37
6301	6242	mkc	Siliput	37
6302	6243	xsp	Silopi	37
6303	6244	stv	Silt'e	37
6304	6245	sie	Simaa	37
6305	6246	sbw	Simba	37
6306	6247	smg	Simbali	37
6307	6248	smb	Simbari	37
6308	6249	sbb	Simbo	37
6309	6250	smz	Simeku	37
6310	6251	smr	Simeulue	37
6311	6252	smt	Simte	37
6312	6253	siu	Sinagen	37
6313	6254	sst	Sinasina	37
6314	6255	snc	Sinaugoro	37
6315	6256	sjn	Sindarin	37
6316	6257	snd	Sindhi	37
6317	6258	sbn	Sindhi Bhil	37
6318	6259	xts	Sindihui Mixtec	37
6319	6260	sgm	Singa	37
6320	6261	sls	Singapore Sign Language	37
6321	6262	sgp	Singpho	37
6322	6263	sin	Sinhala, Sinhalese	37
6323	6264	xti	Sinicahua Mixtec	37
6324	6265	skq	Sininkere	37
6325	6266	rmo	Sinte Romani	37
6326	6267	sys	Sinyar	37
6327	6268	xsi	Sio	37
6328	6269	snn	Siona	37
6329	6270	qum	Sipacapense	37
6330	6271	swj	Sira	37
6331	6272	fos	Siraya	37
6332	6273	ysr	Sirenik Yupik	37
6333	6274	sir	Siri	37
6334	6275	sri	Siriano	37
6335	6276	srq	Sirionó	37
6336	6277	srx	Sirmauri	37
6337	6278	ssd	Siroi	37
6338	6279	sld	Sissala	37
6339	6280	sso	Sissano	37
6340	6281	sis	Siuslaw	37
6341	6282	siy	Sivandi	37
6342	6283	lsv	Sivia Sign Language	37
6343	6284	siw	Siwai	37
6344	6285	siz	Siwi	37
6345	6286	akp	Siwu	37
6346	6287	csy	Siyin Chin	37
6347	6288	ska	Skagit	37
6348	6289	svx	Skalvian	37
6349	6290	skw	Skepi Creole Dutch	37
6350	6291	sms	Skolt Sami	37
6351	6292	skv	Skou	37
6352	6293	den	Slave (Athapascan)	37
6353	6294	svm	Slavomolisano	37
6354	6295	slk	Slovak	37
6355	6296	svk	Slovakian Sign Language	37
6356	6297	slv	Slovenian	37
6357	6298	sfm	Small Flowery Miao	37
6358	6299	kxq	Smärky Kanum	37
6359	6300	sno	Snohomish	37
6360	6301	soc	So (Democratic Republic of Congo)	37
6361	6302	ssq	So'a	37
6362	6303	sob	Sobei	37
6363	6304	cso	Sochiapam Chinantec	37
6364	6305	xog	Soga	37
6365	6306	sog	Sogdian	37
6366	6307	soj	Soi	37
6367	6308	sok	Sokoro	37
6368	6309	xso	Solano	37
6369	6310	sby	Soli	37
6370	6311	szs	Solomon Islands Sign Language	37
6371	6312	aaw	Solong	37
6372	6313	sol	Solos	37
6373	6314	smc	Som	37
6374	6315	som	Somali	37
6375	6316	bmu	Somba-Siawari	37
6376	6317	sor	Somrai	37
6377	6318	smu	Somray	37
6378	6319	kgt	Somyev	37
6379	6320	ysg	Sonaga	37
6380	6321	shc	Sonde	37
6381	6322	sop	Songe	37
6382	6323	csj	Songlai Chin	37
6383	6324	soo	Songo	37
6384	6325	soe	Songomeno	37
6385	6326	sod	Songoora	37
6386	6327	soi	Sonha	37
6387	6328	siq	Sonia	37
6388	6329	snk	Soninke	37
6389	6330	sov	Sonsorol	37
6390	6331	teu	Soo	37
6391	6332	urw	Sop	37
6392	6333	sqt	Soqotri	37
6393	6334	srb	Sora	37
6394	6335	sbh	Sori-Harengan	37
6395	6336	sqo	Sorkhei	37
6396	6337	sxo	Sorothaptic	37
6397	6338	ays	Sorsogon Ayta	37
6398	6339	sdk	Sos Kundi	37
6399	6340	krz	Sota Kanum	37
6400	6341	sqq	Sou	37
6401	6342	tlt	Sou Nama	37
6402	6343	wha	Sou Upaa	37
6403	6344	sfs	South African Sign Language	37
6404	6345	aws	South Awyu	37
6405	6346	azb	South Azerbaijani	37
6406	6347	quh	South Bolivian Quechua	37
6407	6348	lnl	South Central Banda	37
6408	6349	dib	South Central Dinka	37
6409	6350	erk	South Efate	37
6410	6351	fal	South Fali	37
6411	6352	giz	South Giziga	37
6412	6353	lmf	South Lembata	37
6413	6354	mqm	South Marquesan	37
6414	6355	kts	South Muyu	37
6415	6356	nxl	South Nuaulu	37
6416	6357	spx	South Picene	37
6417	6358	xsl	South Slavey	37
6418	6359	omw	South Tairora	37
6419	6360	cpy	South Ucayali Ashéninka	37
6420	6361	mcy	South Watut	37
6421	6362	sns	South West Bay	37
6422	6363	tvk	Southeast Ambrym	37
6423	6364	vbb	Southeast Babar	37
6424	6365	ijs	Southeast Ijo	37
6425	6366	psi	Southeast Pashai	37
6426	6367	xpf	Southeast Tasmanian	37
6427	6368	dks	Southeastern Dinka	37
6428	6369	zpd	Southeastern Ixtlán Zapotec	37
6429	6370	nit	Southeastern Kolami	37
6430	6371	mxy	Southeastern Nochixtlán Mixtec	37
6431	6372	pom	Southeastern Pomo	37
6432	6373	npl	Southeastern Puebla Nahuatl	37
6433	6374	tcu	Southeastern Tarahumara	37
6434	6375	stp	Southeastern Tepehuan	37
6435	6376	agy	Southern Alta	37
6436	6377	alt	Southern Altai	37
6437	6378	ams	Southern Amami-Oshima	37
6438	6379	ayc	Southern Aymara	37
6439	6380	bfs	Southern Bai	37
6440	6381	bcc	Southern Balochi	37
6441	6382	bzc	Southern Betsimisaraka Malagasy	37
6442	6383	mtw	Southern Binukidnon	37
6443	6384	biv	Southern Birifor	37
6444	6385	bwq	Southern Bobo Madaré	37
6445	6386	obk	Southern Bontok	37
6446	6387	caf	Southern Carrier	37
6447	6388	bln	Southern Catanduanes Bikol	37
6448	6389	qxo	Southern Conchucos Ancash Quechua	37
6449	6390	dga	Southern Dagaare	37
6450	6391	kmc	Southern Dong	37
6451	6392	crj	Southern East Cree	37
6452	6393	ghe	Southern Ghale	37
6453	6394	grj	Southern Grebo	37
6454	6395	hmy	Southern Guiyang Hmong	37
6455	6396	hax	Southern Haida	37
6456	6397	hnd	Southern Hindko	37
6457	6398	sxk	Southern Kalapuya	37
6458	6399	ksc	Southern Kalinga	37
6459	6400	sct	Southern Katang	37
6460	6401	kss	Southern Kisi	37
6461	6402	kjd	Southern Kiwai	37
6462	6403	sdh	Southern Kurdish	37
6463	6404	ysp	Southern Lolopo	37
6464	6405	luz	Southern Luri	37
6465	6406	snm	Southern Ma'di	37
6466	6407	hma	Southern Mashan Hmong	37
6467	6408	mnn	Southern Mnong	37
6468	6409	ymc	Southern Muji	37
6469	6410	nqg	Southern Nago	37
6470	6411	nab	Southern Nambikuára	37
6471	6412	nbl	Southern Ndebele	37
6472	6413	nbw	Southern Ngbandi	37
6473	6414	nik	Southern Nicobarese	37
6474	6415	nsd	Southern Nisu	37
6475	6416	nnw	Southern Nuni	37
6476	6417	css	Southern Ohlone	37
6477	6418	osu	Southern One	37
6478	6419	pmz	Southern Pame	37
6479	6420	pbt	Southern Pashto	37
6480	6421	qup	Southern Pastaza Quechua	37
6481	6422	csp	Southern Ping Chinese	37
6482	6423	peq	Southern Pomo	37
6483	6424	mit	Southern Puebla Mixtec	37
6484	6425	slh	Southern Puget Sound Salish	37
6485	6426	pmj	Southern Pumi	37
6486	6427	hms	Southern Qiandong Miao	37
6487	6428	qxs	Southern Qiang	37
6488	6429	nre	Southern Rengma Naga	37
6489	6430	zsr	Southern Rincon Zapotec	37
6490	6431	rgs	Southern Roglai	37
6491	6432	ssb	Southern Sama	37
6492	6433	sma	Southern Sami	37
6493	6434	sbd	Southern Samo	37
6494	6435	skd	Southern Sierra Miwok	37
6495	6436	srv	Southern Sorsoganon	37
6496	6437	sot	Southern Sotho	37
6497	6438	laa	Southern Subanen	37
6498	6439	sou	Southern Thai	37
6499	6440	itd	Southern Tidung	37
6500	6441	tix	Southern Tiwa	37
6501	6442	wib	Southern Toussian	37
6502	6443	tjs	Southern Tujia	37
6503	6444	tce	Southern Tutchone	37
6504	6445	uzs	Southern Uzbek	37
6505	6446	lrr	Southern Yamphu	37
6506	6447	yux	Southern Yukaghir	37
6507	6448	gso	Southwest Gbaya	37
6508	6449	plv	Southwest Palawano	37
6509	6450	psh	Southwest Pashai	37
6510	6451	nwi	Southwest Tanna	37
6511	6452	vbk	Southwestern Bontok	37
6512	6453	dik	Southwestern Dinka	37
6513	6454	fay	Southwestern Fars	37
6514	6455	hmg	Southwestern Guiyang Hmong	37
6515	6456	hmh	Southwestern Huishui Hmong	37
6516	6457	nsv	Southwestern Nisu	37
6517	6458	twr	Southwestern Tarahumara	37
6518	6459	xpx	Southwestern Tasmanian	37
6519	6460	tla	Southwestern Tepehuan	37
6520	6461	meh	Southwestern Tlaxiaco Mixtec	37
6521	6462	sww	Sowa	37
6522	6463	sow	Sowanda	37
6523	6464	vmp	Soyaltepec Mazatec	37
6524	6465	vmq	Soyaltepec Mixtec	37
6525	6466	ssp	Spanish Sign Language	37
6526	6467	spa	Spanish, Castilian	37
6527	6468	spt	Spiti Bhoti	37
6528	6469	spo	Spokane	37
6529	6470	squ	Squamish	37
6530	6471	srn	Sranan Tongo	37
6531	6472	sci	Sri Lankan Creole Malay	37
6532	6473	sqs	Sri Lankan Sign Language	37
6533	6474	arb	Standard Arabic	37
6534	6475	ekk	Standard Estonian	37
6535	6476	lvs	Standard Latvian	37
6536	6477	zsm	Standard Malay	37
6537	6478	zgh	Standard Moroccan Tamazight	37
6538	6479	stl	Stellingwerfs	37
6539	6480	sbu	Stod Bhoti	37
6540	6481	sto	Stoney	37
6541	6482	str	Straits Salish	37
6542	6483	szp	Suabo	37
6543	6484	seo	Suarmin	37
6544	6485	swp	Suau	37
6545	6486	sxb	Suba	37
6546	6487	ssc	Suba-Simbiti	37
6547	6488	xsj	Subi	37
6548	6489	sbs	Subiya	37
6549	6490	sut	Subtiaba	37
6550	6491	apd	Sudanese Arabic	37
6551	6492	pga	Sudanese Creole Arabic	37
6552	6493	tgo	Sudest	37
6553	6494	xsv	Sudovian	37
6554	6495	sue	Suena	37
6555	6496	sgi	Suga	37
6556	6497	sug	Suganga	37
6557	6498	kzs	Sugut Dusun	37
6558	6499	swi	Sui	37
6559	6500	sui	Suki	37
6560	6501	sub	Suku	37
6561	6502	suk	Sukuma	37
6562	6503	syk	Sukur	37
6563	6504	zsu	Sukurum	37
6564	6505	szn	Sula	37
6565	6506	sua	Sulka	37
6566	6507	srg	Sulod	37
6567	6508	sqm	Suma	37
6568	6509	siv	Sumariup	37
6569	6510	six	Sumau	37
6570	6511	smw	Sumbawa	37
6571	6512	suw	Sumbwa	37
6572	6513	sux	Sumerian	37
6573	6514	nsm	Sumi Naga	37
6574	6515	csv	Sumtu Chin	37
6575	6516	ssk	Sunam	37
6576	6517	sun	Sundanese	37
6577	6518	suz	Sunwar	37
6578	6519	syo	Suoy	37
6579	6520	spp	Supyire Senoufo	37
6580	6521	tdl	Sur	37
6581	6522	sbj	Surbakhal	37
6582	6523	sgj	Surgujia	37
6583	6524	sgd	Surigaonon	37
6584	6525	sjp	Surjapuri	37
6585	6526	sgz	Sursurunga	37
6586	6527	swx	Suruahá	37
6587	6528	sde	Surubu	37
6588	6529	sru	Suruí	37
6589	6530	mdz	Suruí Do Pará	37
6590	6531	sqn	Susquehannock	37
6591	6532	sus	Susu	37
6592	6533	ssu	Susuami	37
6593	6534	sdj	Suundi	37
6594	6535	swu	Suwawa	37
6595	6536	suy	Suyá	37
6596	6537	sva	Svan	37
6597	6538	swg	Swabian	37
6598	6539	swa	Swahili	37
6599	6540	swh	Swahili (individual language)	37
6600	6541	csw	Swampy Cree	37
6601	6542	ssw	Swati	37
6602	6543	swe	Swedish	37
6603	6544	swl	Swedish Sign Language	37
6604	6545	gsw	Swiss German	37
6605	6546	ssr	Swiss-French Sign Language	37
6606	6547	sgg	Swiss-German Sign Language	37
6607	6548	slf	Swiss-Italian Sign Language	37
6608	6549	sox	Swo	37
6609	6550	shz	Syenara Senoufo	37
6610	6551	syl	Sylheti	37
6611	6552	syr	Syriac	37
6612	6554	zkp	São Paulo Kaingáng	37
6613	6555	cri	Sãotomense	37
6614	6556	sep	Sìcìté Sénoufo	37
6615	6557	sss	Sô	37
6616	6558	lgn	T'apo	37
6617	6559	tct	T'en	37
6618	6560	acq	Ta'izzi-Adeni Arabic	37
6619	6561	tap	Taabwa	37
6620	6562	zat	Tabaa Zapotec	37
6621	6563	tby	Tabaru	37
6622	6564	chf	Tabasco Chontal	37
6623	6565	nhc	Tabasco Nahuatl	37
6624	6566	zoq	Tabasco Zoque	37
6625	6567	tab	Tabassaran	37
6626	6568	tnm	Tabla	37
6627	6569	knv	Tabo	37
6628	6570	tzx	Tabriak	37
6629	6571	xtt	Tacahua Mixtec	37
6630	6572	tna	Tacana	37
6631	6573	shy	Tachawit	37
6632	6574	shi	Tachelhit	37
6633	6575	lts	Tachoni	37
6634	6576	dsq	Tadaksahak	37
6635	6577	klw	Tado	37
6636	6578	tdy	Tadyawan	37
6637	6579	rob	Tae'	37
6638	6580	tcd	Tafi	37
6639	6581	bgs	Tagabawa	37
6640	6582	klg	Tagakaulo	37
6641	6583	mvv	Tagal Murut	37
6642	6584	tgz	Tagalaka	37
6643	6585	tgl	Tagalog	37
6644	6586	oua	Tagargrent	37
6645	6587	tbw	Tagbanwa	37
6646	6588	tbm	Tagbu	37
6647	6589	tda	Tagdal	37
6648	6590	tgj	Tagin	37
6649	6591	tgx	Tagish	37
6650	6592	tag	Tagoi	37
6651	6593	tgw	Tagwana Senoufo	37
6652	6594	thv	Tahaggart Tamahaq	37
6653	6595	tah	Tahitian	37
6654	6596	tht	Tahltan	37
6655	6597	taw	Tai	37
6656	6598	tyr	Tai Daeng	37
6657	6599	blt	Tai Dam	37
6658	6600	tyj	Tai Do	37
6659	6601	twh	Tai Dón	37
6660	6602	tiz	Tai Hongjin	37
6661	6603	tjl	Tai Laing	37
6662	6604	tlq	Tai Loi	37
6663	6605	thi	Tai Long	37
6664	6606	tdd	Tai Nüa	37
6665	6607	tpo	Tai Pao	37
6666	6608	tmm	Tai Thanh	37
6667	6609	cuu	Tai Ya	37
6668	6610	gpn	Taiap	37
6669	6611	aos	Taikat	37
6670	6612	ago	Tainae	37
6671	6613	tnq	Taino	37
6672	6614	bxa	Tairaha	37
6673	6615	uar	Tairuma	37
6674	6616	dav	Taita	37
6675	6617	tvx	Taivoan	37
6676	6618	tss	Taiwan Sign Language	37
6677	6619	pee	Taje	37
6678	6620	tgk	Tajik	37
6679	6621	abh	Tajiki Arabic	37
6680	6622	tdj	Tajio	37
6681	6623	tja	Tajuasohn	37
6682	6624	tkm	Takelma	37
6683	6625	tks	Takestani	37
6684	6626	tbc	Takia	37
6685	6627	tkz	Takua	37
6686	6628	nho	Takuu	37
6687	6629	tke	Takwane	37
6688	6630	tal	Tal	37
6689	6631	tak	Tala	37
6690	6632	tld	Talaud	37
6691	6633	tlv	Taliabu	37
6692	6634	tdf	Talieng	37
6693	6635	tlj	Talinga-Bwisi	37
6694	6636	tlr	Talise	37
6695	6637	tlo	Talodi	37
6696	6638	tlk	Taloki	37
6697	6639	tln	Talondo'	37
6698	6640	tzl	Talossan	37
6699	6641	yta	Talu	37
6700	6642	tly	Talysh	37
6701	6643	tma	Tama (Chad)	37
6702	6644	ten	Tama (Colombia)	37
6703	6645	tcg	Tamagario	37
6704	6646	tmn	Taman (Indonesia)	37
6705	6647	tcl	Taman (Myanmar)	37
6706	6648	tmz	Tamanaku	37
6707	6649	tmh	Tamashek	37
6708	6650	taq	Tamasheq	37
6709	6651	vmx	Tamazola Mixtec	37
6710	6652	tdk	Tambas	37
6711	6653	xxt	Tambora	37
6712	6654	tls	Tambotalo	37
6713	6655	tmy	Tami	37
6714	6656	tam	Tamil	37
6715	6657	tax	Tamki	37
6716	6658	tml	Tamnim Citak	37
6717	6659	low	Tampias Lobu	37
6718	6660	tpu	Tampuan	37
6719	6661	tpm	Tampulma	37
6720	6662	tcb	Tanacross	37
6721	6663	tcm	Tanahmerah	37
6722	6664	tfn	Tanaina	37
6723	6665	tpv	Tanapag	37
6724	6666	tgn	Tandaganon	37
6725	6667	tni	Tandia	37
6726	6668	tdx	Tandroy-Mahafaly Malagasy	37
6727	6669	tnx	Tanema	37
6728	6670	tan	Tangale	37
6729	6671	tnv	Tangchangya	37
6730	6672	tgu	Tanggu	37
6731	6673	nmf	Tangkhul Naga (India)	37
6732	6674	ntx	Tangkhul Naga (Myanmar)	37
6733	6675	tkx	Tangko	37
6734	6676	ytl	Tanglang	37
6735	6677	tgp	Tangoa	37
6736	6678	tbs	Tanguat	37
6737	6679	txg	Tangut	37
6738	6680	tbe	Tanimbili	37
6739	6681	tnc	Tanimuca-Retuarã	37
6740	6682	uji	Tanjijili	37
6741	6683	txy	Tanosy Malagasy	37
6742	6684	kml	Tanudan Kalinga	37
6743	6685	tza	Tanzanian Sign Language	37
6744	6686	afp	Tapei	37
6745	6687	tpj	Tapieté	37
6746	6688	taf	Tapirapé	37
6747	6689	tro	Tarao Naga	37
6748	6690	tgr	Tareng	37
6749	6691	tae	Tariana	37
6750	6692	rif	Tarifit	37
6751	6693	txj	Tarjumo	37
6752	6694	yer	Tarok	37
6753	6695	tpf	Tarpia	37
6754	6696	txr	Tartessian	37
6755	6697	tdm	Taruma	37
6756	6698	twq	Tasawaq	37
6757	6699	nst	Tase Naga	37
6758	6700	tmt	Tasmate	37
6759	6701	cta	Tataltepec Chatino	37
6760	6702	txx	Tatana	37
6761	6703	tat	Tatar	37
6762	6704	tav	Tatuyo	37
6763	6705	ttd	Tauade	37
6764	6706	tuh	Taulil	37
6765	6707	tco	Taungyo	37
6766	6708	tpa	Taupota	37
6767	6709	tad	Tause	37
6768	6710	trr	Taushiro	37
6769	6711	tsg	Tausug	37
6770	6712	tya	Tauya	37
6771	6713	tvs	Taveta	37
6772	6714	tvn	Tavoyan	37
6773	6715	rmu	Tavringer Romani	37
6774	6716	tbo	Tawala	37
6775	6717	ttq	Tawallammat Tamajaq	37
6776	6718	xtw	Tawandê	37
6777	6719	twm	Tawang Monpa	37
6778	6720	twl	Tawara	37
6779	6721	tbp	Taworta	37
6780	6722	twy	Tawoyan	37
6781	6723	tcp	Tawr Chin	37
6782	6724	tas	Tay Boi	37
6783	6725	tnu	Tay Khang	37
6784	6726	thz	Tayart Tamajeq	37
6785	6727	cks	Tayo	37
6786	6728	grr	Taznatit	37
6787	6729	tbl	Tboli	37
6788	6730	tck	Tchitchege	37
6789	6731	bqa	Tchumbuli	37
6790	6732	tve	Te'un	37
6791	6733	tkw	Teanu	37
6792	6734	tsy	Tebul Sign Language	37
6793	6735	dtu	Tebul Ure Dogon	37
6794	6736	tcw	Tecpatlán Totonac	37
6795	6737	tuq	Tedaga	37
6796	6738	ctd	Tedim Chin	37
6797	6739	tkq	Tee	37
6798	6740	tfo	Tefaro	37
6799	6741	ras	Tegali	37
6800	6742	kps	Tehit	37
6801	6743	teh	Tehuelche	37
6802	6744	ztt	Tejalapan Zapotec	37
6803	6745	ebo	Teke-Ebo	37
6804	6746	ifm	Teke-Fuumu	37
6805	6747	kkw	Teke-Kukuya	37
6806	6748	lli	Teke-Laali	37
6807	6749	nzu	Teke-Nzikou	37
6808	6750	teg	Teke-Tege	37
6809	6751	tyi	Teke-Tsaayi	37
6810	6752	tyx	Teke-Tyee	37
6811	6753	ttc	Tektiteko	37
6812	6754	tvm	Tela-Masbuar	37
6813	6755	tlf	Telefol	37
6814	6756	tel	Telugu	37
6815	6757	kdh	Tem	37
6816	6758	tjo	Temacine Tamazight	37
6817	6759	nhv	Temascaltepec Nahuatl	37
6818	6760	tbt	Tembo (Kitembo)	37
6819	6761	tmv	Tembo (Motembo)	37
6820	6762	tqb	Tembé	37
6821	6763	tdo	Teme	37
6822	6764	teq	Temein	37
6823	6765	soz	Temi	37
6824	6766	tea	Temiar	37
6825	6767	ott	Temoaya Otomi	37
6826	6768	tmo	Temoq	37
6827	6769	tmw	Temuan	37
6828	6770	tnz	Ten'edn	37
6829	6771	quw	Tena Lowland Quichua	37
6830	6772	otn	Tenango Otomi	37
6831	6773	dtk	Tene Kan Dogon	37
6832	6774	vkt	Tenggarong Kutai Malay	37
6833	6775	tes	Tengger	37
6834	6776	pah	Tenharim	37
6835	6777	tqn	Tenino	37
6836	6778	tns	Tenis	37
6837	6779	tex	Tennet	37
6838	6780	tio	Teop	37
6839	6781	tev	Teor	37
6840	6782	tep	Tepecano	37
6841	6783	cnt	Tepetotutla Chinantec	37
6842	6784	cux	Tepeuxila Cuicatec	37
6843	6785	cte	Tepinapa Chinantec	37
6844	6786	ted	Tepo Krumen	37
6845	6787	sjt	Ter Sami	37
6846	6788	ttr	Tera	37
6847	6789	trb	Terebu	37
6848	6790	buo	Terei	37
6849	6791	ter	Tereno	37
6850	6792	tef	Teressa	37
6851	6793	twg	Tereweng	37
6852	6794	tfr	Teribe	37
6853	6795	tec	Terik	37
6854	6796	twu	Termanu	37
6855	6797	tft	Ternate	37
6856	6798	tmg	Ternateño	37
6857	6799	tkg	Tesaka Malagasy	37
6858	6800	keg	Tese	37
6859	6801	twc	Teshenawa	37
6860	6802	teo	Teso	37
6861	6803	tll	Tetela	37
6862	6804	nhg	Tetelcingo Nahuatl	37
6863	6805	teb	Tetete	37
6864	6806	tez	Tetserret	37
6865	6807	tet	Tetum	37
6866	6808	tdt	Tetun Dili	37
6867	6809	cut	Teutila Cuicatec	37
6868	6810	twe	Tewa (Indonesia)	37
6869	6811	tew	Tewa (USA)	37
6870	6812	twx	Tewe	37
6871	6813	otx	Texcatepec Otomi	37
6872	6814	poq	Texistepec Popoluca	37
6873	6815	zpz	Texmelucan Zapotec	37
6874	6816	mxb	Tezoatlán Mixtec	37
6875	6817	thy	Tha	37
6876	6818	thn	Thachanadan	37
6877	6819	tcz	Thado Chin	37
6878	6820	tha	Thai	37
6879	6821	tsq	Thai Sign Language	37
6880	6822	soa	Thai Song	37
6881	6823	cth	Thaiphum Chin	37
6882	6824	ths	Thakali	37
6883	6825	nki	Thangal Naga	37
6884	6826	thf	Thangmi	37
6885	6827	ssf	Thao	37
6886	6828	thk	Tharaka	37
6887	6829	xtv	Thawa	37
6888	6830	typ	Thaypan	37
6889	6831	iin	Thiin	37
6890	6832	tou	Tho	37
6891	6833	thp	Thompson	37
6892	6834	ytp	Thopho	37
6893	6835	txh	Thracian	37
6894	6836	tyl	Thu Lao	37
6895	6837	tdh	Thulung	37
6896	6838	lth	Thur	37
6897	6839	thu	Thuri	37
6898	6840	ahi	Tiagbamrin Aizi	37
6899	6841	mnl	Tiale	37
6900	6842	tbj	Tiang	37
6901	6843	ngy	Tibea	37
6902	6844	lsn	Tibetan Sign Language	37
6903	6845	bod	Tibetan, Tibetan Standard, Central	37
6904	6846	tcn	Tichurong	37
6905	6847	tca	Ticuna	37
6906	6848	mtx	Tidaá Mixtec	37
6907	6849	tia	Tidikelt Tamazight	37
6908	6850	tvo	Tidore	37
6909	6851	boo	Tiemacèwè Bozo	37
6910	6852	tii	Tiene	37
6911	6853	tif	Tifal	37
6912	6854	tgc	Tigak	37
6913	6855	nza	Tigon Mbembe	37
6914	6856	tig	Tigre	37
6915	6857	tir	Tigrinya	37
6916	6858	txq	Tii	37
6917	6859	xtl	Tijaltepec Mixtec	37
6918	6860	tik	Tikar	37
6919	6861	tkp	Tikopia	37
6920	6862	otl	Tilapa Otomi	37
6921	6863	til	Tillamook	37
6922	6864	zts	Tilquiapan Zapotec	37
6923	6865	tij	Tilung	37
6924	6866	tms	Tima	37
6925	6867	tim	Timbe	37
6926	6868	tem	Timne	37
6927	6869	tvy	Timor Pidgin	37
6928	6870	tjm	Timucua	37
6929	6871	tih	Timugon Murut	37
6930	6872	lbf	Tinani	37
6931	6873	tin	Tindi	37
6932	6874	tgv	Tingui-Boto	37
6933	6875	tit	Tinigua	37
6934	6876	tpz	Tinputz	37
6935	6877	tpe	Tippera	37
6936	6878	tic	Tira	37
6937	6879	tra	Tirahi	37
6938	6880	tde	Tiranige Diga Dogon	37
6939	6881	cir	Tiri	37
6940	6882	suq	Tirmaga-Chai Suri	37
6941	6883	tiy	Tiruray	37
6942	6884	tdq	Tita	37
6943	6885	ttv	Titan	37
6944	6886	tiv	Tiv	37
6945	6887	lax	Tiwa	37
6946	6888	tiw	Tiwi	37
6947	6889	tyy	Tiyaa	37
6948	6890	tiq	Tiéfo	37
6949	6891	boz	Tiéyaxo Bozo	37
6950	6892	tjj	Tjungundji	37
6951	6893	tjp	Tjupany	37
6952	6894	tju	Tjurruru	37
6953	6895	tpt	Tlachichilco Tepehua	37
6954	6896	tpl	Tlacoapa Me'phaa	37
6955	6897	ctl	Tlacoatzintepec Chinantec	37
6956	6898	zpk	Tlacolulita Zapotec	37
6957	6899	mxp	Tlahuitoltepec Mixe	37
6958	6900	nuz	Tlamacazapa Nahuatl	37
6959	6901	mqh	Tlazoyaltepec Mixtec	37
6960	6902	dgr	Tlicho	37
6961	6903	tli	Tlingit	37
6962	6904	toz	To	37
6963	6905	mlu	To'abaita	37
6964	6906	tqo	Toaripi	37
6965	6907	tob	Toba	37
6966	6908	tmf	Toba-Maskoy	37
6967	6909	tgh	Tobagonian Creole English	37
6968	6910	tng	Tobanga	37
6969	6911	tti	Tobati	37
6970	6912	tlb	Tobelo	37
6971	6913	tox	Tobian	37
6972	6914	tgb	Tobilung	37
6973	6915	tbv	Tobo	37
6974	6916	asu	Tocantins Asurini	37
6975	6917	taz	Tocho	37
6976	6918	tcx	Toda	37
6977	6919	tdr	Todrah	37
6978	6920	tlg	Tofanma	37
6979	6921	tfi	Tofin Gbe	37
6980	6922	tor	Togbo-Vara Banda	37
6981	6923	tgy	Togoyo	37
6982	6924	ood	Tohono O'odham	37
6983	6925	toj	Tojolabal	37
6984	6926	tpi	Tok Pisin	37
6985	6927	zuh	Tokano	37
6986	6928	tkl	Tokelau	37
6987	6929	xto	Tokharian A	37
6988	6930	txb	Tokharian B	37
6989	6931	tok	Toki Pona	37
6990	6932	tkn	Toku-No-Shima	37
6991	6933	jic	Tol	37
6992	6934	lbw	Tolaki	37
6993	6935	tlm	Tolomako	37
6994	6936	tol	Tolowa	37
6995	6937	tod	Toma	37
6996	6938	tdi	Tomadino	37
6997	6939	ttp	Tombelala	37
6998	6940	txa	Tombonuo	37
6999	6941	tom	Tombulu	37
7000	6942	txm	Tomini	37
7001	6943	dto	Tommo So Dogon	37
7002	6944	dtm	Tomo Kan Dogon	37
7003	6945	tqp	Tomoip	37
7004	6946	tdn	Tondano	37
7005	6947	tst	Tondi Songway Kiini	37
7006	6948	tog	Tonga (Nyasa)	37
7007	6949	ton	Tonga (Tonga Islands)	37
7008	6950	toi	Tonga (Zambia)	37
7009	6951	tny	Tongwe	37
7010	6952	tjn	Tonjon	37
7011	6953	tqw	Tonkawa	37
7012	6954	tnw	Tonsawang	37
7013	6955	txs	Tonsea	37
7014	6956	tnt	Tontemboan	37
7015	6957	ttj	Tooro	37
7016	6958	toy	Topoiyo	37
7017	6959	toq	Toposa	37
7018	6960	sda	Toraja-Sa'dan	37
7019	6961	trj	Toram	37
7020	6962	ttu	Torau	37
7021	6963	fit	Tornedalen Finnish	37
7022	6964	tdv	Toro	37
7023	6965	dts	Toro So Dogon	37
7024	6966	dtt	Toro Tegu Dogon	37
7025	6967	tno	Toromono	37
7026	6968	tqr	Torona	37
7027	6969	tcs	Torres Strait Creole	37
7028	6970	tei	Torricelli	37
7029	6971	trw	Torwali	37
7030	6972	trz	Torá	37
7031	6973	als	Tosk Albanian	37
7032	6974	ttl	Totela	37
7033	6975	txo	Toto	37
7034	6976	txe	Totoli	37
7035	6977	zph	Totomachapan Zapotec	37
7036	6978	mto	Totontepec Mixe	37
7037	6979	ttk	Totoro	37
7038	6980	tqu	Touo	37
7039	6981	neb	Toura (Côte d'Ivoire)	37
7040	6982	don	Toura (Papua New Guinea)	37
7041	6983	ttn	Towei	37
7042	6984	xtg	Transalpine Gaulish	37
7043	6985	rmd	Traveller Danish	37
7044	6986	rmg	Traveller Norwegian	37
7045	6987	trl	Traveller Scottish	37
7046	6988	trm	Tregami	37
7047	6989	tme	Tremembé	37
7048	6990	stg	Trieng	37
7049	6991	tip	Trimuris	37
7050	6992	tgq	Tring	37
7051	6993	trx	Tringgus-Sembaan Bidayuh	37
7052	6994	lst	Trinidad and Tobago Sign Language	37
7053	6995	trf	Trinidadian Creole English	37
7054	6996	trn	Trinitario	37
7055	6997	tri	Trió	37
7056	6998	tka	Truká	37
7057	6999	tpy	Trumai	37
7058	7000	tsl	Ts'ün-Lao	37
7059	7001	tsa	Tsaangi	37
7060	7002	tkr	Tsakhur	37
7061	7003	tsd	Tsakonian	37
7062	7004	kvz	Tsakwambo	37
7063	7005	tsb	Tsamai	37
7064	7006	huq	Tsat	37
7065	7007	tsk	Tseku	37
7066	7008	txc	Tsetsaut	37
7067	7009	tsj	Tshangla	37
7068	7010	kdl	Tsikimba	37
7069	7011	cas	Tsimané	37
7070	7012	xmw	Tsimihety Malagasy	37
7071	7013	tsi	Tsimshian	37
7072	7014	tsw	Tsishingini	37
7073	7015	ldp	Tso	37
7074	7016	hio	Tsoa	37
7075	7017	tsv	Tsogo	37
7076	7018	tso	Tsonga	37
7077	7019	lto	Tsotso	37
7078	7020	tsu	Tsou	37
7079	7021	cbq	Tsucuba	37
7080	7022	ttz	Tsum	37
7081	7023	tvd	Tsuvadi	37
7082	7024	tsh	Tsuvan	37
7083	7025	tsc	Tswa	37
7084	7026	tsn	Tswana	37
7085	7027	two	Tswapong	37
7086	7028	mjg	Tu	37
7087	7029	pmt	Tuamotuan	37
7088	7030	tbu	Tubar	37
7089	7031	tuo	Tucano	37
7090	7032	tuy	Tugen	37
7091	7033	tzn	Tugun	37
7092	7034	tuj	Tugutil	37
7093	7035	khc	Tukang Besi North	37
7094	7036	bhq	Tukang Besi South	37
7095	7037	bag	Tuki	37
7096	7038	tpq	Tukpa	37
7097	7039	tkd	Tukudede	37
7098	7040	tkf	Tukumanféd	37
7099	7041	tul	Tula	37
7100	7042	tvi	Tulai	37
7101	7043	tlu	Tulehu	37
7102	7044	tey	Tulishi	37
7103	7045	tcy	Tulu	37
7104	7046	rak	Tulu-Bohuai	37
7105	7047	iou	Tuma-Irumu	37
7106	7048	tmc	Tumak	37
7107	7049	krt	Tumari Kanuri	37
7108	7050	tum	Tumbuka	37
7109	7051	kku	Tumi	37
7110	7052	tmq	Tumleo	37
7111	7053	xtq	Tumshuqese	37
7112	7054	tbr	Tumtum	37
7113	7055	sil	Tumulung Sisaala	37
7114	7056	mzb	Tumzabt	37
7115	7057	enh	Tundra Enets	37
7116	7058	tvu	Tunen	37
7117	7059	lcm	Tungag	37
7118	7060	trt	Tunggare	37
7119	7061	tug	Tunia	37
7120	7062	tun	Tunica	37
7121	7063	aeb	Tunisian Arabic	37
7122	7064	tse	Tunisian Sign Language	37
7123	7065	tjg	Tunjung	37
7124	7066	tqq	Tunni	37
7125	7067	dza	Tunzu	37
7126	7068	ttf	Tuotomb	37
7127	7069	tpr	Tuparí	37
7128	7070	tpn	Tupinambá	37
7129	7071	tpk	Tupinikin	37
7130	7072	tui	Tupuri	37
7131	7073	trh	Turaka	37
7132	7074	trd	Turi	37
7133	7075	twt	Turiwára	37
7134	7076	tuz	Turka	37
7135	7077	tuv	Turkana	37
7136	7078	tur	Turkish	37
7137	7079	tsm	Turkish Sign Language	37
7138	7080	tuk	Turkmen	37
7139	7081	tch	Turks And Caicos Creole English	37
7140	7082	tru	Turoyo	37
7141	7083	tqm	Turumsa	37
7142	7084	try	Turung	37
7143	7085	tus	Tuscarora	37
7144	7086	tta	Tutelo	37
7145	7087	ttg	Tutong	37
7146	7088	tvt	Tutsa Naga	37
7147	7089	tmi	Tutuba	37
7148	7090	mtu	Tututepec Mixtec	37
7149	7091	tuu	Tututni	37
7150	7092	tvl	Tuvalu	37
7151	7093	tyv	Tuvinian	37
7152	7094	ifk	Tuwali Ifugao	37
7153	7095	tww	Tuwari	37
7154	7096	bov	Tuwuli	37
7155	7097	tux	Tuxináwa	37
7156	7098	tud	Tuxá	37
7157	7099	tue	Tuyuca	37
7158	7100	twa	Twana	37
7159	7101	twn	Twendi	37
7160	7102	twd	Twents	37
7161	7103	twi	Twi	37
7162	7104	kcg	Tyap	37
7163	7105	tzj	Tz'utujil	37
7164	7106	tzh	Tzeltal	37
7165	7107	tzo	Tzotzil	37
7166	7108	tyz	Tày	37
7167	7109	tys	Tày Sa Pa	37
7168	7110	tyt	Tày Tac	37
7169	7111	lor	Téén	37
7170	7112	tub	Tübatulabal	37
7171	7113	uuu	U	37
7172	7114	aoz	Uab Meto	37
7173	7115	uam	Uamué	37
7174	7116	ksj	Uare	37
7175	7117	byc	Ubaghara	37
7176	7118	uba	Ubang	37
7177	7119	ubi	Ubi	37
7178	7120	ubr	Ubir	37
7179	7121	uby	Ubykh	37
7180	7122	cpb	Ucayali-Yurúa Ashéninka	37
7181	7123	uda	Uda	37
7182	7124	udi	Udi	37
7183	7125	ude	Udihe	37
7184	7126	udm	Udmurt	37
7185	7127	udu	Uduk	37
7186	7128	ufi	Ufim	37
7187	7129	ugn	Ugandan Sign Language	37
7188	7130	uga	Ugaritic	37
7189	7131	uge	Ughele	37
7190	7132	ugo	Ugong	37
7191	7133	uha	Uhami	37
7192	7134	uig	Uighur, Uyghur	37
7193	7135	uis	Uisai	37
7194	7136	udj	Ujir	37
7195	7137	kcf	Ukaan	37
7196	7138	ukh	Ukhwejo	37
7197	7139	umi	Ukit	37
7198	7140	ukp	Ukpe-Bayobiri	37
7199	7141	akd	Ukpet-Ehom	37
7200	7142	ukr	Ukrainian	37
7201	7143	ukl	Ukrainian Sign Language	37
7202	7144	uku	Ukue	37
7203	7145	ukg	Ukuriguma	37
7204	7146	ukq	Ukwa	37
7205	7147	ukw	Ukwuani-Aboh-Ndoni	37
7206	7148	svb	Ulau-Suain	37
7207	7149	ulc	Ulch	37
7208	7150	uli	Ulithian	37
7209	7151	ull	Ullatan	37
7210	7152	ulb	Ulukwumi	37
7211	7153	ulm	Ulumanda'	37
7212	7154	ulw	Ulwa	37
7213	7155	ppk	Uma	37
7214	7156	xky	Uma' Lasan	37
7215	7157	ulu	Uma' Lung	37
7216	7158	gdn	Umanakaina	37
7217	7159	uma	Umatilla	37
7218	7160	umd	Umbindhamu	37
7219	7161	xum	Umbrian	37
7220	7162	ubu	Umbu-Ungu	37
7221	7163	umr	Umbugarla	37
7222	7164	umb	Umbundu	37
7223	7165	sju	Ume Sami	37
7224	7166	upi	Umeda	37
7225	7167	xud	Umiida	37
7226	7168	due	Umiray Dumaget Agta	37
7227	7169	umm	Umon	37
7228	7170	umo	Umotína	37
7229	7171	ump	Umpila	37
7230	7172	mtg	Una	37
7231	7173	unm	Unami	37
7232	7174	mis	Uncoded languages	37
7233	7175	unz	Unde Kaili	37
7234	7176	und	Undetermined	37
7235	7177	bbn	Uneapa	37
7236	7178	une	Uneme	37
7237	7179	xun	Unggaranggu	37
7238	7180	xgu	Unggumi	37
7239	7181	uni	Uni	37
7240	7182	uln	Unserdeutsch	37
7241	7183	onu	Unua	37
7242	7184	unu	Unubahe	37
7243	7185	cjh	Upper Chehalis	37
7244	7186	dna	Upper Grand Valley Dani	37
7245	7187	pov	Upper Guinea Crioulo	37
7246	7188	dmg	Upper Kinabatangan	37
7247	7189	kuu	Upper Kuskokwim	37
7248	7190	tku	Upper Necaxa Totonac	37
7249	7191	sxu	Upper Saxon	37
7250	7192	hsb	Upper Sorbian	37
7251	7193	tth	Upper Ta'oih	37
7252	7194	tau	Upper Tanana	37
7253	7195	tov	Upper Taromi	37
7254	7196	xup	Upper Umpqua	37
7255	7197	uro	Ura (Papua New Guinea)	37
7256	7198	uur	Ura (Vanuatu)	37
7257	7199	urf	Uradhi	37
7258	7200	urk	Urak Lawoi'	37
7259	7201	url	Urali	37
7260	7202	urm	Urapmin	37
7261	7203	ura	Urarina	37
7262	7204	xur	Urartian	37
7263	7205	urt	Urat	37
7264	7206	urd	Urdu	37
7265	7207	urh	Urhobo	37
7266	7208	uvh	Uri	37
7267	7209	urg	Urigina	37
7268	7210	uri	Urim	37
7269	7211	urx	Urimo	37
7270	7212	upv	Uripiv-Wala-Rano-Atchin	37
7271	7213	urc	Urningangg	37
7272	7214	ure	Uru	37
7273	7215	urz	Uru-Eu-Wau-Wau	37
7274	7216	urp	Uru-Pa-In	37
7275	7217	urn	Uruangnirin	37
7276	7218	urv	Uruava	37
7277	7219	urb	Urubú-Kaapor	37
7278	7220	uks	Urubú-Kaapor Sign Language	37
7279	7221	ugy	Uruguayan Sign Language	37
7280	7222	uum	Urum	37
7281	7223	uru	Urumi	37
7282	7224	usk	Usaghade	37
7283	7225	wnu	Usan	37
7284	7226	usa	Usarufa	37
7285	7227	ush	Ushojo	37
7286	7228	cuc	Usila Chinantec	37
7287	7229	ulf	Usku	37
7288	7230	usp	Uspanteco	37
7289	7231	usi	Usui	37
7290	7232	omo	Utarmbung	37
7291	7233	ute	Ute-Southern Paiute	37
7292	7234	utu	Utu	37
7293	7235	evh	Uvbie	37
7294	7236	usu	Uya	37
7295	7237	duk	Uyajitaya	37
7296	7238	uzb	Uzbek	37
7297	7239	auz	Uzbeki Arabic	37
7298	7240	eze	Uzekwe	37
7299	7241	vaa	Vaagri Booli	37
7300	7242	vaf	Vafsi	37
7301	7243	vgr	Vaghri	37
7302	7244	tva	Vaghua	37
7303	7245	vag	Vagla	37
7304	7246	vai	Vai	37
7305	7247	vap	Vaiphei	37
7306	7248	vae	Vale	37
7307	7249	vsv	Valencian Sign Language	37
7308	7250	cvn	Valle Nacional Chinantec	37
7309	7251	vmv	Valley Maidu	37
7310	7252	van	Valman	37
7311	7253	vlp	Valpei	37
7312	7254	mkt	Vamale	37
7313	7255	mlr	Vame	37
7314	7256	xvn	Vandalic	37
7315	7257	mpr	Vangunu	37
7316	7258	vam	Vanimo	37
7317	7259	vnk	Vano	37
7318	7260	vau	Vanuma	37
7319	7261	vao	Vao	37
7320	7262	vah	Varhadi-Nagpuri	37
7321	7263	vrs	Varisi	37
7322	7264	vav	Varli	37
7323	7265	vas	Vasavi	37
7324	7266	ved	Veddah	37
7325	7267	vsn	Vedic Sanskrit	37
7326	7268	val	Vehes	37
7327	7269	vel	Veluws	37
7328	7270	vem	Vemgo-Mabas	37
7329	7271	ven	Venda	37
7330	7272	vec	Venetian	37
7331	7273	xve	Venetic	37
7332	7274	vsl	Venezuelan Sign Language	37
7333	7275	bav	Vengo	37
7334	7276	veo	Ventureño	37
7335	7277	vep	Veps	37
7336	7278	vra	Vera'a	37
7337	7279	xvs	Vestinian	37
7338	7280	vid	Vidunda	37
7339	7281	vig	Viemo	37
7340	7282	vie	Vietnamese	37
7341	7283	vil	Vilela	37
7342	7284	vif	Vili	37
7343	7285	dyg	Villa Viciosa Agta	37
7344	7286	svc	Vincentian Creole English	37
7345	7287	vnm	Vinmavis	37
7346	7288	vin	Vinza	37
7347	7289	vic	Virgin Islands Creole English	37
7348	7290	vis	Vishavan	37
7349	7291	vit	Viti	37
7350	7292	vto	Vitou	37
7351	7293	wiv	Vitu	37
7352	7294	vls	Vlaams	37
7353	7295	vgt	Vlaamse Gebarentaal	37
7354	7296	rmy	Vlax Romani	37
7355	7297	vol	Volapük	37
7356	7298	xvo	Volscian	37
7357	7299	kch	Vono	37
7358	7300	vor	Voro	37
7359	7301	vot	Votic	37
7360	7302	vum	Vumbu	37
7361	7303	vnp	Vunapu	37
7362	7304	vun	Vunjo	37
7363	7305	msn	Vurës	37
7364	7306	vut	Vute	37
7365	7307	wbi	Vwanji	37
7366	7309	wbm	Wa	37
7367	7310	wag	Wa'ema	37
7368	7311	wwa	Waama	37
7369	7312	wmn	Waamwang	37
7370	7313	ssn	Waata	37
7371	7314	wab	Wab	37
7372	7315	wbb	Wabo	37
7373	7316	kmx	Waboda	37
7374	7317	wci	Waci Gbe	37
7375	7318	wdg	Wadaginam	37
7376	7319	wbq	Waddar	37
7377	7320	xwd	Wadi Wadi	37
7378	7321	wdk	Wadikali	37
7379	7322	kxp	Wadiyara Koli	37
7380	7323	wdy	Wadjabangayi	37
7381	7324	wdj	Wadjiginy	37
7382	7325	wdu	Wadjigu	37
7383	7326	wrx	Wae Rana	37
7384	7327	waj	Waffa	37
7385	7328	wgb	Wagawaga	37
7386	7329	wga	Wagaya	37
7387	7330	wbr	Wagdi	37
7388	7331	fad	Wagi	37
7389	7332	waq	Wagiman	37
7390	7333	whu	Wahau Kayan	37
7391	7334	whk	Wahau Kenyah	37
7392	7335	wgi	Wahgi	37
7393	7336	wbk	Waigali	37
7394	7337	wgo	Waigeo	37
7395	7338	wlk	Wailaki	37
7396	7339	wlr	Wailapa	37
7397	7340	rro	Waima	37
7398	7341	wmh	Waima'a	37
7399	7342	bao	Waimaha	37
7400	7343	atr	Waimiri-Atroari	37
7401	7344	wli	Waioli	37
7402	7345	waw	Waiwai	37
7403	7346	wja	Waja	37
7404	7347	wbv	Wajarri	37
7405	7348	xwj	Wajuk	37
7406	7349	wav	Waka	37
7407	7350	wwb	Wakabunga	37
7408	7351	wkw	Wakawaka	37
7409	7352	wkd	Wakde	37
7410	7353	wbl	Wakhi	37
7411	7354	waf	Wakoná	37
7412	7355	lgl	Wala	37
7413	7356	wlw	Walak	37
7414	7357	nlw	Walangama	37
7415	7358	wlx	Wali (Ghana)	37
7416	7359	wll	Wali (Sudan)	37
7417	7360	wly	Waling	37
7418	7361	wla	Walio	37
7419	7362	waa	Walla Walla	37
7420	7363	wls	Wallisian	37
7421	7364	wln	Walloon	37
7422	7365	wmt	Walmajarri	37
7423	7366	wae	Walser	37
7424	7367	ola	Walungge	37
7425	7368	wrb	Waluwarra	37
7426	7369	wmc	Wamas	37
7427	7370	wmb	Wambaya	37
7428	7371	wms	Wambon	37
7429	7372	wme	Wambule	37
7430	7373	wad	Wamesa	37
7431	7374	cou	Wamey	37
7432	7375	wmi	Wamin	37
7433	7376	wam	Wampanoag	37
7434	7377	lbq	Wampar	37
7435	7378	waz	Wampur	37
7436	7379	wan	Wan	37
7437	7380	wnp	Wanap	37
7438	7381	nnp	Wancho Naga	37
7439	7382	wbh	Wanda	37
7440	7383	mfi	Wandala	37
7441	7384	wnd	Wandarang	37
7442	7385	wdd	Wandji	37
7443	7386	wne	Waneci	37
7444	7387	lwg	Wanga	37
7445	7388	wyb	Wangaaybuwan-Ngiyambaa	37
7446	7389	wnm	Wanggamala	37
7447	7390	wng	Wanggom	37
7448	7391	wgg	Wangkangurru	37
7449	7392	wky	Wangkayutyuru	37
7450	7393	xwk	Wangkumara	37
7451	7394	jub	Wannu	37
7452	7395	wno	Wano	37
7453	7396	wnc	Wantoat	37
7454	7397	wnk	Wanukaka	37
7455	7398	wny	Wanyi	37
7456	7399	hwa	Wané	37
7457	7400	auc	Waorani	37
7458	7401	juk	Wapan	37
7459	7402	wap	Wapishana	37
7460	7403	wao	Wappo	37
7461	7404	aml	War-Jaintia	37
7462	7405	wbf	Wara	37
7463	7406	wba	Warao	37
7464	7407	wrz	Waray (Australia)	37
7465	7408	war	Waray (Philippines)	37
7466	7409	wrr	Wardaman	37
7467	7410	wxw	Wardandi	37
7468	7411	wsa	Warembori	37
7469	7412	wai	Wares	37
7470	7413	wrs	Waris	37
7471	7414	wbe	Waritai	37
7472	7415	wri	Wariyangga	37
7473	7416	wji	Warji	37
7474	7417	bgv	Warkay-Bipim	37
7475	7418	wrl	Warlmanpa	37
7476	7419	wbp	Warlpiri	37
7477	7420	wrn	Warnang	37
7478	7421	wbt	Warnman	37
7479	7422	wrp	Waropen	37
7480	7423	wgy	Warrgamay	37
7481	7424	wwr	Warrwa	37
7482	7425	wru	Waru	37
7483	7426	wrm	Warumungu	37
7484	7427	wrv	Waruna	37
7485	7428	wrg	Warungu	37
7486	7429	hrw	Warwar Feni	37
7487	7430	wss	Wasa	37
7488	7431	wac	Wasco-Wishram	37
7489	7432	gsp	Wasembo	37
7490	7433	was	Washo	37
7491	7434	wsk	Waskia	37
7492	7435	wsu	Wasu	37
7493	7436	wtk	Watakataui	37
7494	7437	wax	Watam	37
7495	7438	wth	Wathawurrung	37
7496	7439	wtf	Watiwa	37
7497	7440	wah	Watubela	37
7498	7441	kop	Waube	37
7499	7442	wau	Waurá	37
7500	7443	wuy	Wauyai	37
7501	7444	www	Wawa	37
7502	7445	wow	Wawonii	37
7503	7446	wxa	Waxianghua	37
7504	7447	oym	Wayampi	37
7505	7448	way	Wayana	37
7506	7449	ctt	Wayanad Chetti	37
7507	7450	wyr	Wayoró	37
7508	7451	vay	Wayu	37
7509	7452	guc	Wayuu	37
7510	7453	wed	Wedau	37
7511	7454	weh	Weh	37
7512	7455	wew	Wejewa	37
7513	7456	wlh	Welaun	37
7514	7457	klh	Weliki	37
7515	7458	cym	Welsh	37
7516	7459	rmw	Welsh Romani	37
7517	7460	weo	Wemale	37
7518	7461	xww	Wemba Wemba	37
7519	7462	wem	Weme Gbe	37
7520	7463	wdt	Wendat	37
7521	7464	weg	Wergaia	37
7522	7465	wer	Weri	37
7523	7466	kvw	Wersing	37
7524	7467	fbl	West Albay Bikol	37
7525	7468	nnd	West Ambae	37
7526	7469	wbs	West Bengal Sign Language	37
7527	7470	zbw	West Berawan	37
7528	7471	bbp	West Central Banda	37
7529	7472	gaz	West Central Oromo	37
7530	7473	bdr	West Coast Bajau	37
7531	7474	drn	West Damar	37
7532	7475	ddi	West Goodenough	37
7533	7476	kew	West Kewa	37
7534	7477	lmj	West Lembata	37
7535	7478	mqs	West Makian	37
7536	7479	mss	West Masela	37
7537	7480	txn	West Tarangan	37
7538	7481	uve	West Uvean	37
7539	7482	ybe	West Yugur	37
7540	7483	lia	West-Central Limba	37
7541	7484	abe	Western Abnaki	37
7542	7485	apw	Western Apache	37
7543	7486	hyw	Western Armenian	37
7544	7487	are	Western Arrarnta	37
7545	7488	bgn	Western Balochi	37
7546	7489	gnw	Western Bolivian Guaraní	37
7547	7490	brv	Western Bru	37
7548	7491	mbb	Western Bukidnon Manobo	37
7549	7492	cja	Western Cham	37
7550	7493	dnw	Western Dani	37
7551	7494	azn	Western Durango Nahuatl	37
7552	7495	wyy	Western Fijian	37
7553	7496	fry	Western Frisian	37
7554	7497	ctp	Western Highland Chatino	37
7555	7498	pua	Western Highland Purepecha	37
7556	7499	nhw	Western Huasteca Nahuatl	37
7557	7500	jmx	Western Juxtlahuaca Mixtec	37
7558	7501	knj	Western Kanjobal	37
7559	7502	kza	Western Karaboro	37
7560	7503	kuf	Western Katu	37
7561	7504	kyu	Western Kayah	37
7562	7505	kjq	Western Keres	37
7563	7506	krw	Western Krahn	37
7564	7507	ywl	Western Lalu	37
7565	7508	lcp	Western Lawa	37
7566	7509	mrd	Western Magar	37
7567	7510	mlq	Western Maninkakan	37
7568	7511	mrj	Western Mari	37
7569	7512	hmw	Western Mashan Hmong	37
7570	7513	raf	Western Meohang	37
7571	7514	wmg	Western Minyag	37
7572	7515	mut	Western Muria	37
7573	7516	amw	Western Neo-Aramaic	37
7574	7517	fuh	Western Niger Fulfulde	37
7575	7518	ojw	Western Ojibwa	37
7576	7519	pnb	Western Panjabi	37
7577	7520	kjl	Western Parbate Kham	37
7578	7521	pne	Western Penan	37
7579	7522	ssl	Western Sisaala	37
7580	7523	suc	Western Subanon	37
7581	7524	tdg	Western Tamang	37
7582	7525	twb	Western Tawbuid	37
7583	7526	zab	Western Tlacolula Valley Zapotec	37
7584	7527	tqt	Western Totonac	37
7585	7528	tnb	Western Tunebo	37
7586	7529	mmr	Western Xiangxi Miao	37
7587	7530	xwl	Western Xwla Gbe	37
7588	7531	yih	Western Yiddish	37
7589	7532	wep	Westphalien	37
7590	7533	wwo	Wetamut	37
7591	7534	wea	Wewaw	37
7592	7535	woy	Weyto	37
7593	7536	giw	White Gelao	37
7594	7537	lwh	White Lachi	37
7595	7538	tnp	Whitesands	37
7596	7539	tua	Wiarumus	37
7597	7540	wic	Wichita	37
7598	7541	mzh	Wichí Lhamtés Güisnay	37
7599	7542	mtp	Wichí Lhamtés Nocten	37
7600	7543	wlv	Wichí Lhamtés Vejoz	37
7601	7544	wig	Wik Ngathan	37
7602	7545	wie	Wik-Epa	37
7603	7546	wij	Wik-Iiyanh	37
7604	7547	wif	Wik-Keyangan	37
7605	7548	wih	Wik-Me'anha	37
7606	7549	wim	Wik-Mungkan	37
7607	7550	wik	Wikalkan	37
7608	7551	wua	Wikngenchera	37
7609	7552	wil	Wilawila	37
7610	7553	wnw	Wintu	37
7611	7554	kst	Winyé	37
7612	7555	gdr	Wipi	37
7613	7556	wrh	Wiradjuri	37
7614	7557	wir	Wiraféd	37
7615	7558	wgu	Wirangu	37
7616	7559	wiu	Wiru	37
7617	7560	wiy	Wiyot	37
7618	7561	xwc	Woccon	37
7619	7562	wog	Wogamusin	37
7620	7563	woc	Wogeo	37
7621	7564	wbw	Woi	37
7622	7565	wyi	Woiwurrung	37
7623	7566	jod	Wojenaka	37
7624	7567	wle	Wolane	37
7625	7568	wod	Wolani	37
7626	7569	wal	Wolaytta	37
7627	7570	woe	Woleaian	37
7628	7571	wlo	Wolio	37
7629	7572	wol	Wolof	37
7630	7573	wom	Wom (Nigeria)	37
7631	7574	wmo	Wom (Papua New Guinea)	37
7632	7575	wmx	Womo	37
7633	7576	won	Wongo	37
7634	7577	cwd	Woods Cree	37
7635	7578	wor	Woria	37
7636	7579	kda	Worimi	37
7637	7580	jud	Worodougou	37
7638	7581	wro	Worrorra	37
7639	7582	wsv	Wotapuri-Katarqalai	37
7640	7583	xwt	Wotjobaluk	37
7641	7584	wtw	Wotu	37
7642	7585	noa	Woun Meu	37
7643	7586	xwo	Written Oirat	37
7644	7587	wuu	Wu Chinese	37
7645	7588	ywq	Wuding-Luquan Yi	37
7646	7589	wud	Wudu	37
7647	7590	wlu	Wuliwuli	37
7648	7591	wux	Wulna	37
7649	7592	bqm	Wumboko	37
7650	7593	wum	Wumbvu	37
7651	7594	ywu	Wumeng Nasu	37
7652	7595	bwn	Wunai Bunu	37
7653	7596	wub	Wunambal	37
7654	7597	wnn	Wunumara	37
7655	7598	wur	Wurrugu	37
7656	7599	yig	Wusa Nasu	37
7657	7600	bse	Wushi	37
7658	7601	wsi	Wusi	37
7659	7602	wut	Wutung	37
7660	7603	wuh	Wutunhua	37
7661	7604	wuv	Wuvulu-Aua	37
7662	7605	udl	Wuzlam	37
7663	7606	wyn	Wyandot	37
7664	7607	wym	Wymysorys	37
7665	7609	juw	Wãpha	37
7666	7610	wob	Wè Northern	37
7667	7611	gxx	Wè Southern	37
7668	7612	wec	Wè Western	37
7669	7613	kao	Xaasongaxango	37
7670	7614	zax	Xadani Zapotec	37
7671	7615	xkr	Xakriabá	37
7672	7616	xan	Xamtanga	37
7673	7617	ztg	Xanaguía Zapotec	37
7674	7618	xav	Xavánte	37
7675	7619	xer	Xerénte	37
7676	7620	xet	Xetá	37
7677	7621	xho	Xhosa	37
7678	7622	hsn	Xiang Chinese	37
7679	7623	sjo	Xibe	37
7680	7624	too	Xicotepec De Juárez Totonac	37
7681	7625	xin	Xinca	37
7682	7626	asn	Xingú Asuriní	37
7683	7627	xiy	Xipaya	37
7684	7628	xii	Xiri	37
7685	7629	xir	Xiriâna	37
7686	7630	ywt	Xishanba Lalo	37
7687	7631	xok	Xokleng	37
7688	7632	xoo	Xukurú	37
7689	7633	xwe	Xwela Gbe	37
7690	7634	ane	Xârâcùù	37
7691	7635	axx	Xârâgurè	37
7692	7636	muu	Yaaku	37
7693	7637	yar	Yabarana	37
7694	7638	ybn	Yabaâna	37
7695	7639	jae	Yabem	37
7696	7640	ybm	Yaben	37
7697	7641	ybo	Yabong	37
7698	7642	yxy	Yabula Yabula	37
7699	7643	ekr	Yace	37
7700	7644	rys	Yaeyama	37
7701	7645	wfg	Yafi	37
7702	7646	yxg	Yagara	37
7703	7647	ygr	Yagaria	37
7704	7648	yai	Yagnobi	37
7705	7649	ygm	Yagomi	37
7706	7650	yad	Yagua	37
7707	7651	ygw	Yagwoia	37
7708	7652	ner	Yahadian	37
7709	7653	rhp	Yahang	37
7710	7654	ynu	Yahuna	37
7711	7655	axk	Yaka (Central African Republic)	37
7712	7656	iyx	Yaka (Congo)	37
7713	7657	yaf	Yaka (Democratic Republic of Congo)	37
7714	7658	ykk	Yakaikeke	37
7715	7659	yak	Yakama	37
7716	7660	yka	Yakan	37
7717	7661	ybh	Yakha	37
7718	7662	yky	Yakoma	37
7719	7663	sah	Yakut	37
7720	7664	yba	Yala	37
7721	7665	jal	Yalahatan	37
7722	7666	xyl	Yalakalore	37
7723	7667	ylr	Yalarnnga	37
7724	7668	nce	Yale	37
7725	7669	ylb	Yaleba	37
7726	7670	yal	Yalunka	37
7727	7671	zpu	Yalálag Zapotec	37
7728	7672	ymp	Yamap	37
7729	7673	yam	Yamba	37
7730	7674	ymb	Yambes	37
7731	7675	yat	Yambeta	37
7732	7676	jmd	Yamdena	37
7733	7677	yme	Yameo	37
7734	7678	tao	Yami	37
7735	7679	yaa	Yaminahua	37
7736	7680	ymn	Yamna	37
7737	7681	ymg	Yamongeri	37
7738	7682	ybi	Yamphu	37
7739	7683	jay	Yan-nhangu	37
7740	7684	yhs	Yan-nhaŋu Sign Language	37
7741	7685	ynn	Yana	37
7742	7686	qur	Yanahuanca Pasco Quechua	37
7743	7687	yda	Yanda	37
7744	7688	dym	Yanda Dom Dogon	37
7745	7689	xyb	Yandjibara	37
7746	7690	ynd	Yandruwandha	37
7747	7691	ame	Yanesha'	37
7748	7692	zyg	Yang Zhuang	37
7749	7693	yav	Yangben	37
7750	7694	bsx	Yangkam	37
7751	7695	jng	Yangman	37
7752	7696	yng	Yango	37
7753	7697	ynl	Yangulam	37
7754	7698	yde	Yangum Dey	37
7755	7699	ygl	Yangum Gel	37
7756	7700	ymo	Yangum Mon	37
7757	7701	kdd	Yankunytjatjara	37
7758	7702	guu	Yanomamö	37
7759	7703	wca	Yanomámi	37
7760	7704	yns	Yansi	37
7761	7705	jao	Yanyuwa	37
7762	7706	yao	Yao	37
7763	7707	asy	Yaosakor Asmat	37
7764	7708	yre	Yaouré	37
7765	7709	yap	Yapese	37
7766	7710	yev	Yapunda	37
7767	7711	jaq	Yaqay	37
7768	7712	yaq	Yaqui	37
7769	7713	yrw	Yarawata	37
7770	7714	yxl	Yardliyawarra	37
7771	7715	yrb	Yareba	37
7772	7716	zae	Yareni Zapotec	37
7773	7717	yry	Yarluyandi	37
7774	7718	yro	Yaroamë	37
7775	7719	yrs	Yarsun	37
7776	7720	yko	Yasa	37
7777	7721	ysc	Yassic	37
7778	7722	yty	Yatay	37
7779	7723	zty	Yatee Zapotec	37
7780	7724	zav	Yatzachi Zapotec	37
7781	7725	yuw	Yau (Morobe Province)	37
7782	7726	yyu	Yau (Sandaun Province)	37
7783	7727	yla	Yaul	37
7784	7728	yax	Yauma	37
7785	7729	jau	Yaur	37
7786	7730	zpb	Yautepec Zapotec	37
7787	7731	qux	Yauyos Quechua	37
7788	7732	yvt	Yavitero	37
7789	7733	yva	Yawa	37
7790	7734	yaw	Yawalapití	37
7791	7735	ywn	Yawanawa	37
7792	7736	yww	Yawarawarga	37
7793	7737	yby	Yaweyuha	37
7794	7738	jbw	Yawijibaya	37
7795	7739	ybx	Yawiyo	37
7796	7740	ywr	Yawuru	37
7797	7741	xya	Yaygir	37
7798	7742	yah	Yazgulyam	37
7799	7743	tlc	Yecuatla Totonac	37
7800	7744	jei	Yei	37
7801	7745	ets	Yekhee	37
7802	7746	ykr	Yekora	37
7803	7747	yel	Yela	37
7804	7748	yle	Yele	37
7805	7749	jel	Yelmek	37
7806	7750	ylg	Yelogu	37
7807	7751	ybb	Yemba	37
7808	7752	jnj	Yemsa	37
7809	7753	ynq	Yendang	37
7810	7754	yei	Yeni	37
7811	7755	yec	Yeniche	37
7812	7756	yra	Yerakai	37
7813	7757	gop	Yeretuar	37
7814	7758	yrn	Yerong	37
7815	7759	yeu	Yerukula	37
7816	7760	yss	Yessan-Mayo	37
7817	7761	yet	Yetfa	37
7818	7762	yej	Yevanic	37
7819	7763	yey	Yeyi	37
7820	7764	yid	Yiddish	37
7821	7765	ydg	Yidgha	37
7822	7766	yii	Yidiny	37
7823	7767	yll	Yil	37
7824	7768	ycr	Yilan Creole	37
7825	7769	yee	Yimas	37
7826	7770	yim	Yimchungru Naga	37
7827	7771	kvu	Yinbaw Karen	37
7828	7772	yij	Yindjibarndi	37
7829	7773	yil	Yindjilandji	37
7830	7774	pib	Yine	37
7831	7775	yia	Yinggarda	37
7832	7776	ywg	Yinhawangka	37
7833	7777	ygi	Yiningayi	37
7834	7778	kvy	Yintale Karen	37
7835	7779	yxm	Yinwum	37
7836	7780	yyr	Yir Yoront	37
7837	7781	ljw	Yirandali	37
7838	7782	yrm	Yirrk-Mel	37
7839	7783	yis	Yis	37
7840	7784	xth	Yitha Yitha	37
7841	7785	yob	Yoba	37
7842	7786	gud	Yocoboué Dida	37
7843	7787	yog	Yogad	37
7844	7788	ydk	Yoidik	37
7845	7789	yki	Yoke	37
7846	7790	yok	Yokuts	37
7847	7791	yol	Yola	37
7848	7792	xty	Yoloxochitl Mixtec	37
7849	7793	ygs	Yolŋu Sign Language	37
7850	7794	pil	Yom	37
7851	7795	yom	Yombe	37
7852	7796	yoi	Yonaguni	37
7853	7797	yno	Yong	37
7854	7798	zyb	Yongbei Zhuang	37
7855	7799	yon	Yongkom	37
7856	7800	zyn	Yongnan Zhuang	37
7857	7801	yut	Yopno	37
7858	7802	mts	Yora	37
7859	7803	yox	Yoron	37
7860	7804	xyy	Yorta Yorta	37
7861	7805	yor	Yoruba	37
7862	7806	mpm	Yosondúa Mixtec	37
7863	7807	yot	Yotti	37
7864	7808	zyj	Youjiang Zhuang	37
7865	7809	jiu	Youle Jinuo	37
7866	7810	buh	Younuo Bunu	37
7867	7811	ytw	Yout Wam	37
7868	7812	yoy	Yoy	37
7869	7813	nua	Yuanga	37
7870	7814	msd	Yucatec Maya Sign Language	37
7871	7815	yua	Yucateco	37
7872	7816	yuc	Yuchi	37
7873	7817	mvg	Yucuañe Mixtec	37
7874	7818	ycn	Yucuna	37
7875	7819	yue	Yue Chinese	37
7876	7820	yug	Yug	37
7877	7821	yub	Yugambal	37
7878	7822	ysl	Yugoslavian Sign Language	37
7879	7823	ygu	Yugul	37
7880	7824	yab	Yuhup	37
7881	7825	yuk	Yuki	37
7882	7826	yup	Yukpa	37
7883	7827	ybl	Yukuben	37
7884	7828	yul	Yulu	37
7885	7829	yuq	Yuqui	37
7886	7830	yuz	Yuracare	37
7887	7831	rts	Yurats	37
7888	7832	yur	Yurok	37
7889	7833	ljx	Yuru	37
7890	7834	yui	Yurutí	37
7891	7835	mab	Yutanduchi Mixtec	37
7892	7836	yau	Yuwana	37
7893	7837	yxu	Yuyu	37
7894	7838	gek	Ywom	37
7895	7839	yag	Yámana	37
7896	7840	ztx	Zaachila Zapotec	37
7897	7841	kji	Zabana	37
7898	7842	ctz	Zacatepec Chatino	37
7899	7843	nhi	Zacatlán-Ahuacatlán-Tepetzintla Nahuatl	37
7900	7844	zag	Zaghawa	37
7901	7845	atb	Zaiwa	37
7902	7846	zkr	Zakhring	37
7903	7847	zsl	Zambian Sign Language	37
7904	7848	zna	Zan Gula	37
7905	7849	zak	Zanaki	37
7906	7850	zne	Zande (individual language)	37
7907	7851	zau	Zangskari	37
7908	7852	zah	Zangwal	37
7909	7853	zpw	Zaniza Zapotec	37
7910	7854	zap	Zapotec	37
7911	7855	zaj	Zaramo	37
7912	7856	zaz	Zari	37
7913	7857	dje	Zarma	37
7914	7858	zrp	Zarphatic	37
7915	7859	zal	Zauzou	37
7916	7860	zwa	Zay	37
7917	7861	kxk	Zayein Karen	37
7918	7862	zay	Zayse-Zergulla	37
7919	7863	zza	Zaza	37
7920	7864	jaj	Zazao	37
7921	7865	zem	Zeem	37
7922	7866	zea	Zeeuws	37
7923	7867	dhm	Zemba	37
7924	7868	nzm	Zeme Naga	37
7925	7869	xzm	Zemgalian	37
7926	7870	zeg	Zenag	37
7927	7871	zen	Zenaga	37
7928	7872	czn	Zenzontepec Chatino	37
7929	7873	zrn	Zerenkel	37
7930	7874	zhb	Zhaba	37
7931	7875	xzh	Zhang-Zhung	37
7932	7876	zhi	Zhire	37
7933	7877	zhw	Zhoa	37
7934	7878	zha	Zhuang, Chuang	37
7935	7879	zia	Zia	37
7936	7880	zil	Zialo	37
7937	7881	ziw	Zigula	37
7938	7882	zik	Zimakani	37
7939	7883	zmb	Zimba	37
7940	7884	zib	Zimbabwe Sign Language	37
7941	7885	zin	Zinza	37
7942	7886	sih	Zire	37
7943	7887	ziz	Zizilivakan	37
7944	7888	pto	Zo'é	37
7945	7889	yzk	Zokhuo	37
7946	7890	zpq	Zoogocho Zapotec	37
7947	7891	gbz	Zoroastrian Dari	37
7948	7892	czt	Zotung Chin	37
7949	7893	zom	Zou	37
7950	7894	zlu	Zul	37
7951	7895	zla	Zula	37
7952	7896	gnd	Zulgo-Gemzek	37
7953	7897	zul	Zulu	37
7954	7898	zuy	Zumaya	37
7955	7899	jmb	Zumbun	37
7956	7900	zun	Zuni	37
7957	7901	zzj	Zuojiang Zhuang	37
7958	7902	zyp	Zyphe Chin	37
7959	7903	zro	Záparo	37
7960	7904	jih	sTodsde	37
7961	7905	uss	us-Saare	37
7962	7906	uth	ut-Hun	37
7963	7907	gel	ut-Ma'in	37
7964	7908	ahn	Àhàn	37
7965	7909	acb	Áncá	37
7966	7910	aom	Ömie	37
7967	7911	oon	Önge	37
7968	7912	gwj	ǀGwi	37
7969	7913	xam	ǀXam	37
7970	7914	hnh	ǁAni	37
7971	7915	gnk	ǁGana	37
7972	7916	xeg	ǁXegwi	37
7973	7917	huc	ǂHua	37
7974	7918	gku	ǂUngkue	37
7975	7919	nmn	ǃXóõ	37
7976	7920		Not applicable	37
7977	1	RT1	IsCitedBy	31
7978	2	RT2	Cites	31
7979	3	RT3	IsSupplementTo	31
7980	4	RT4	IsSupplementedBy	31
7981	5	RT5	IsReferencedBy	31
7982	6	RT6	References	31
7983	0		Afghanistan	82
7984	1		Albania	82
7985	2		Algeria	82
7986	3		American Samoa	82
7987	4		Andorra	82
7988	5		Angola	82
7989	6		Anguilla	82
7990	7		Antarctica	82
7991	8		Antigua and Barbuda	82
7992	9		Argentina	82
7993	10		Armenia	82
7994	11		Aruba	82
7995	12		Australia	82
7996	13		Austria	82
7997	14		Azerbaijan	82
7998	15		Bahamas	82
7999	16		Bahrain	82
8000	17		Bangladesh	82
8001	18		Barbados	82
8002	19		Belarus	82
8003	20		Belgium	82
8004	21		Belize	82
8005	22		Benin	82
8006	23		Bermuda	82
8007	24		Bhutan	82
8008	25		Bolivia, Plurinational State of	82
8009	26		Bonaire, Sint Eustatius and Saba	82
8010	27		Bosnia and Herzegovina	82
8011	28		Botswana	82
8012	29		Bouvet Island	82
8013	30		Brazil	82
8014	31		British Indian Ocean Territory	82
8015	32		Brunei Darussalam	82
8016	33		Bulgaria	82
8017	34		Burkina Faso	82
8018	35		Burundi	82
8019	36		Cambodia	82
8020	37		Cameroon	82
8021	38		Canada	82
8022	39		Cape Verde	82
8023	40		Cayman Islands	82
8024	41		Central African Republic	82
8025	42		Chad	82
8026	43		Chile	82
8027	44		China	82
8028	45		Christmas Island	82
8029	46		Cocos (Keeling) Islands	82
8030	47		Colombia	82
8031	48		Comoros	82
8032	49		Congo	82
8033	50		Congo, the Democratic Republic of the	82
8034	51		Cook Islands	82
8035	52		Costa Rica	82
8036	53		Croatia	82
8037	54		Cuba	82
8038	55		Curaçao	82
8039	56		Cyprus	82
8040	57		Czech Republic	82
8041	58		Côte d'Ivoire	82
8042	59		Denmark	82
8043	60		Djibouti	82
8044	61		Dominica	82
8045	62		Dominican Republic	82
8046	63		Ecuador	82
8047	64		Egypt	82
8048	65		El Salvador	82
8049	66		Equatorial Guinea	82
8050	67		Eritrea	82
8051	68		Estonia	82
8052	69		Ethiopia	82
8053	70		Falkland Islands (Malvinas)	82
8054	71		Faroe Islands	82
8055	72		Fiji	82
8056	73		Finland	82
8057	74		France	82
8058	75		French Guiana	82
8059	76		French Polynesia	82
8060	77		French Southern Territories	82
8061	78		Gabon	82
8062	79		Gambia	82
8063	80		Georgia	82
8064	81		Germany	82
8065	82		Ghana	82
8066	83		Gibraltar	82
8067	84		Greece	82
8068	85		Greenland	82
8069	86		Grenada	82
8070	87		Guadeloupe	82
8071	88		Guam	82
8072	89		Guatemala	82
8073	90		Guernsey	82
8074	91		Guinea	82
8075	92		Guinea-Bissau	82
8076	93		Guyana	82
8077	94		Haiti	82
8078	95		Heard Island and Mcdonald Islands	82
8079	96		Holy See (Vatican City State)	82
8080	97		Honduras	82
8081	98		Hong Kong	82
8082	99		Hungary	82
8083	100		Iceland	82
8084	101		India	82
8085	102		Indonesia	82
8086	103		Iran, Islamic Republic of	82
8087	104		Iraq	82
8088	105		Ireland	82
8089	106		Isle of Man	82
8090	107		Israel	82
8091	108		Italy	82
8092	109		Jamaica	82
8093	110		Japan	82
8094	111		Jersey	82
8095	112		Jordan	82
8096	113		Kazakhstan	82
8097	114		Kenya	82
8098	115		Kiribati	82
8099	116		Korea, Democratic People's Republic of	82
8100	117		Korea, Republic of	82
8101	118		Kuwait	82
8102	119		Kyrgyzstan	82
8235	3		Spectrum	118
8103	120		Lao People's Democratic Republic	82
8104	121		Latvia	82
8105	122		Lebanon	82
8106	123		Lesotho	82
8107	124		Liberia	82
8108	125		Libya	82
8109	126		Liechtenstein	82
8110	127		Lithuania	82
8111	128		Luxembourg	82
8112	129		Macao	82
8113	130		Macedonia, the Former Yugoslav Republic of	82
8114	131		Madagascar	82
8115	132		Malawi	82
8116	133		Malaysia	82
8117	134		Maldives	82
8118	135		Mali	82
8119	136		Malta	82
8120	137		Marshall Islands	82
8121	138		Martinique	82
8122	139		Mauritania	82
8123	140		Mauritius	82
8124	141		Mayotte	82
8125	142		Mexico	82
8126	143		Micronesia, Federated States of	82
8127	144		Moldova, Republic of	82
8128	145		Monaco	82
8129	146		Mongolia	82
8130	147		Montenegro	82
8131	148		Montserrat	82
8132	149		Morocco	82
8133	150		Mozambique	82
8134	151		Myanmar	82
8135	152		Namibia	82
8136	153		Nauru	82
8137	154		Nepal	82
8138	155		Netherlands	82
8139	156		New Caledonia	82
8140	157		New Zealand	82
8141	158		Nicaragua	82
8142	159		Niger	82
8143	160		Nigeria	82
8144	161		Niue	82
8145	162		Norfolk Island	82
8146	163		Northern Mariana Islands	82
8147	164		Norway	82
8148	165		Oman	82
8149	166		Pakistan	82
8150	167		Palau	82
8151	168		Palestine, State of	82
8152	169		Panama	82
8153	170		Papua New Guinea	82
8154	171		Paraguay	82
8155	172		Peru	82
8156	173		Philippines	82
8157	174		Pitcairn	82
8158	175		Poland	82
8159	176		Portugal	82
8160	177		Puerto Rico	82
8161	178		Qatar	82
8162	179		Romania	82
8163	180		Russian Federation	82
8164	181		Rwanda	82
8165	182		Réunion	82
8166	183		Saint Barthélemy	82
8167	184		Saint Helena, Ascension and Tristan da Cunha	82
8168	185		Saint Kitts and Nevis	82
8169	186		Saint Lucia	82
8170	187		Saint Martin (French part)	82
8171	188		Saint Pierre and Miquelon	82
8172	189		Saint Vincent and the Grenadines	82
8173	190		Samoa	82
8174	191		San Marino	82
8175	192		Sao Tome and Principe	82
8176	193		Saudi Arabia	82
8177	194		Senegal	82
8178	195		Serbia	82
8179	196		Seychelles	82
8180	197		Sierra Leone	82
8181	198		Singapore	82
8182	199		Sint Maarten (Dutch part)	82
8183	200		Slovakia	82
8184	201		Slovenia	82
8185	202		Solomon Islands	82
8186	203		Somalia	82
8187	204		South Africa	82
8188	205		South Georgia and the South Sandwich Islands	82
8189	206		South Sudan	82
8190	207		Spain	82
8191	208		Sri Lanka	82
8192	209		Sudan	82
8193	210		Suriname	82
8194	211		Svalbard and Jan Mayen	82
8195	212		Swaziland	82
8196	213		Sweden	82
8197	214		Switzerland	82
8198	215		Syrian Arab Republic	82
8199	216		Taiwan, Province of China	82
8200	217		Tajikistan	82
8201	218		Tanzania, United Republic of	82
8202	219		Thailand	82
8203	220		Timor-Leste	82
8204	221		Togo	82
8205	222		Tokelau	82
8206	223		Tonga	82
8207	224		Trinidad and Tobago	82
8208	225		Tunisia	82
8209	226		Turkey	82
8210	227		Turkmenistan	82
8211	228		Turks and Caicos Islands	82
8212	229		Tuvalu	82
8213	230		Uganda	82
8214	231		Ukraine	82
8215	232		United Arab Emirates	82
8216	233		United Kingdom	82
8217	234		United States	82
8218	235		United States Minor Outlying Islands	82
8219	236		Uruguay	82
8220	237		Uzbekistan	82
8221	238		Vanuatu	82
8222	239		Venezuela, Bolivarian Republic of	82
8223	240		Viet Nam	82
8224	241		Virgin Islands, British	82
8225	242		Virgin Islands, U.S.	82
8226	243		Wallis and Futuna	82
8227	244		Western Sahara	82
8228	245		Yemen	82
8229	246		Zambia	82
8230	247		Zimbabwe	82
8231	248		Åland Islands	82
8232	0		Image	118
8233	1		Mosaic	118
8234	2		EventList	118
8236	4		Cube	118
8237	5		Table	118
8238	6		Catalog	118
8239	7		LightCurve	118
8240	8		Simulation	118
8241	9		Figure	118
8242	10		Artwork	118
8243	11		Animation	118
8244	12		PrettyPicture	118
8245	13		Documentation	118
8246	14		Other	118
8247	15		Library	118
8248	16		Press Release	118
8249	17		Facsimile	118
8250	18		Historical	118
8251	19		Observation	118
8252	20		Object	118
8253	21		Value	118
8254	22		ValuePair	118
8255	23		Survey	118
8256	0	EFO_0001427	Case Control	144
8257	1	EFO_0001428	Cross Sectional	144
8258	2	OCRE100078	Cohort Study	144
8259	3	NCI_C48202	Nested Case Control Design	144
8260	4	NOT_SPECIFIED	Not Specified	144
8261	5	OBI_0500006	Parallel Group Design	144
8262	6	OBI_0001033	Perturbation Design	144
8263	7	MESH_D016449	Randomized Controlled Trial	144
8264	8	TECH_DESIGN	Technological Design	144
8265	9	OTHER_DESIGN	Other	144
8266	0	EFO_0000246	Age	146
8267	1	BIOMARKERS	Biomarkers	146
8268	2	CELL_SURFACE_M	Cell Surface Markers	146
8269	3	EFO_0000324;EFO_0000322	Cell Type/Cell Line	146
8270	4	EFO_0000399	Developmental Stage	146
8271	5	OBI_0001293	Disease State	146
8272	6	IDO_0000469	Drug Susceptibility	146
8273	7	FBcv_0010001	Extract Molecule	146
8274	8	OBI_0001404	Genetic Characteristics	146
8275	9	OBI_0000690	Immunoprecipitation Antibody	146
8276	10	OBI_0100026	Organism	146
8277	11	PASSAGES_FACTOR	Passages	146
8278	12	OBI_0000050	Platform	146
8279	13	EFO_0000695	Sex	146
8280	14	EFO_0005135	Strain	146
8281	15	EFO_0000724	Time Point	146
8282	16	BTO_0001384	Tissue Type	146
8283	17	EFO_0000369	Treatment Compound	146
8284	18	EFO_0000727	Treatment Type	146
8285	19	OTHER_FACTOR	Other	146
8286	0	ERO_0001899	cell counting	150
8287	1	CHMO_0001085	cell sorting	150
8288	2	OBI_0000520	clinical chemistry analysis	150
8289	3	OBI_0000537	copy number variation profiling	150
8290	4	OBI_0000634	DNA methylation profiling	150
8291	5	OBI_0000748	DNA methylation profiling (Bisulfite-Seq)	150
8292	6	_OBI_0000634	DNA methylation profiling (MeDIP-Seq)	150
8293	7	_IDO_0000469	drug susceptibility	150
8294	8	ENV_GENE_SURVEY	environmental gene survey	150
8295	9	ERO_0001183	genome sequencing	150
8296	10	OBI_0000630	hematology	150
8297	11	OBI_0600020	histology	150
8298	12	OBI_0002017	Histone Modification (ChIP-Seq)	150
8299	13	SO_0001786	loss of heterozygosity profiling	150
8300	14	OBI_0000366	metabolite profiling	150
8301	15	METAGENOME_SEQ	metagenome sequencing	150
8302	16	OBI_0000615	protein expression profiling	150
8303	17	ERO_0000346	protein identification	150
8304	18	PROTEIN_DNA_BINDING	protein-DNA binding site identification	150
8305	19	OBI_0000288	protein-protein interaction detection	150
8306	20	PROTEIN_RNA_BINDING	protein-RNA binding (RIP-Seq)	150
8307	21	OBI_0000435	SNP analysis	150
8308	22	TARGETED_SEQ	targeted sequencing	150
8309	23	OBI_0002018	transcription factor binding (ChIP-Seq)	150
8310	24	OBI_0000291	transcription factor binding site identification	150
8311	26	EFO_0001032	transcription profiling	150
8312	27	TRANSCRIPTION_PROF	transcription profiling (Microarray)	150
8313	28	OBI_0001271	transcription profiling (RNA-Seq)	150
8314	29	TRAP_TRANS_PROF	TRAP translational profiling	150
8315	30	OTHER_MEASUREMENT	Other	150
8316	0	NCBITaxon_3702	Arabidopsis thaliana	148
8317	1	NCBITaxon_9913	Bos taurus	148
8318	2	NCBITaxon_6239	Caenorhabditis elegans	148
8319	3	NCBITaxon_3055	Chlamydomonas reinhardtii	148
8320	4	NCBITaxon_7955	Danio rerio (zebrafish)	148
8321	5	NCBITaxon_44689	Dictyostelium discoideum	148
8322	6	NCBITaxon_7227	Drosophila melanogaster	148
8323	7	NCBITaxon_562	Escherichia coli	148
8324	8	NCBITaxon_11103	Hepatitis C virus	148
8325	9	NCBITaxon_9606	Homo sapiens	148
8326	10	NCBITaxon_10090	Mus musculus	148
8327	11	NCBITaxon_33894	Mycobacterium africanum	148
8328	12	NCBITaxon_78331	Mycobacterium canetti	148
8329	13	NCBITaxon_1773	Mycobacterium tuberculosis	148
8330	14	NCBITaxon_2104	Mycoplasma pneumoniae	148
8331	15	NCBITaxon_4530	Oryza sativa	148
8332	16	NCBITaxon_5833	Plasmodium falciparum	148
8333	17	NCBITaxon_4754	Pneumocystis carinii	148
8334	18	NCBITaxon_10116	Rattus norvegicus	148
8335	19	NCBITaxon_4932	Saccharomyces cerevisiae (brewer's yeast)	148
8336	20	NCBITaxon_4896	Schizosaccharomyces pombe	148
8337	21	NCBITaxon_31033	Takifugu rubripes	148
8338	22	NCBITaxon_8355	Xenopus laevis	148
8339	23	NCBITaxon_4577	Zea mays	148
8340	24	OTHER_TAXONOMY	Other	148
8341	0	CULTURE_DRUG_TEST_SINGLE	culture based drug susceptibility testing, single concentration	152
8342	1	CULTURE_DRUG_TEST_TWO	culture based drug susceptibility testing, two concentrations	152
8343	2	CULTURE_DRUG_TEST_THREE	culture based drug susceptibility testing, three or more concentrations (minimium inhibitory concentration measurement)	152
8344	3	OBI_0400148	DNA microarray	152
8345	4	OBI_0000916	flow cytometry	152
8346	5	OBI_0600053	gel electrophoresis	152
8347	6	OBI_0000470	mass spectrometry	152
8348	7	OBI_0000623	NMR spectroscopy	152
8349	8	OBI_0000626	nucleotide sequencing	152
8350	9	OBI_0400149	protein microarray	152
8351	10	OBI_0000893	real time PCR	152
8352	11	NO_TECHNOLOGY	no technology required	152
8353	12	OTHER_TECHNOLOGY	Other	152
8354	0	210_MS_GC	210-MS GC Ion Trap (Varian)	154
8355	1	220_MS_GC	220-MS GC Ion Trap (Varian)	154
8356	2	225_MS_GC	225-MS GC Ion Trap (Varian)	154
8357	3	240_MS_GC	240-MS GC Ion Trap (Varian)	154
8358	4	300_MS_GCMS	300-MS quadrupole GC/MS (Varian)	154
8359	5	320_MS_LCMS	320-MS LC/MS (Varian)	154
8360	6	325_MS_LCMS	325-MS LC/MS (Varian)	154
8361	7	500_MS_GCMS	320-MS GC/MS (Varian)	154
8362	8	500_MS_LCMS	500-MS LC/MS (Varian)	154
8363	9	800D	800D (Jeol)	154
8364	10	910_MS_TQFT	910-MS TQ-FT (Varian)	154
8365	11	920_MS_TQFT	920-MS TQ-FT (Varian)	154
8366	12	3100_MASS_D	3100 Mass Detector (Waters)	154
8367	13	6110_QUAD_LCMS	6110 Quadrupole LC/MS (Agilent)	154
8368	14	6120_QUAD_LCMS	6120 Quadrupole LC/MS (Agilent)	154
8369	15	6130_QUAD_LCMS	6130 Quadrupole LC/MS (Agilent)	154
8370	16	6140_QUAD_LCMS	6140 Quadrupole LC/MS (Agilent)	154
8371	17	6310_ION_LCMS	6310 Ion Trap LC/MS (Agilent)	154
8372	18	6320_ION_LCMS	6320 Ion Trap LC/MS (Agilent)	154
8373	19	6330_ION_LCMS	6330 Ion Trap LC/MS (Agilent)	154
8374	20	6340_ION_LCMS	6340 Ion Trap LC/MS (Agilent)	154
8375	21	6410_TRIPLE_LCMS	6410 Triple Quadrupole LC/MS (Agilent)	154
8376	22	6430_TRIPLE_LCMS	6430 Triple Quadrupole LC/MS (Agilent)	154
8377	23	6460_TRIPLE_LCMS	6460 Triple Quadrupole LC/MS (Agilent)	154
8378	24	6490_TRIPLE_LCMS	6490 Triple Quadrupole LC/MS (Agilent)	154
8379	25	6530_Q_TOF_LCMS	6530 Q-TOF LC/MS (Agilent)	154
8380	26	6540_Q_TOF_LCMS	6540 Q-TOF LC/MS (Agilent)	154
8381	27	6210_Q_TOF_LCMS	6210 TOF LC/MS (Agilent)	154
8382	28	6220_Q_TOF_LCMS	6220 TOF LC/MS (Agilent)	154
8383	29	6230_Q_TOF_LCMS	6230 TOF LC/MS (Agilent)	154
8384	30	700B_TRIPLE_GCMS	7000B Triple Quadrupole GC/MS (Agilent)	154
8385	31	ACCUTO_DART	AccuTO DART (Jeol)	154
8386	32	ACCUTOF_GC	AccuTOF GC (Jeol)	154
8387	33	ACCUTOF_LC	AccuTOF LC (Jeol)	154
8388	34	ACQUITY_SQD	ACQUITY SQD (Waters)	154
8389	35	ACQUITY_TQD	ACQUITY TQD (Waters)	154
8390	36	AGILENT	Agilent	154
8391	37	AGILENT_ 5975E_GCMSD	Agilent 5975E GC/MSD (Agilent)	154
8392	38	AGILENT_5975T_LTM_GCMSD	Agilent 5975T LTM GC/MSD (Agilent)	154
8393	39	5975C_GCMSD	5975C Series GC/MSD (Agilent)	154
8394	40	AFFYMETRIX	Affymetrix	154
8395	41	AMAZON_ETD_ESI	amaZon ETD ESI Ion Trap (Bruker)	154
8396	42	AMAZON_X_ESI	amaZon X ESI Ion Trap (Bruker)	154
8397	43	APEX_ULTRA_QQ_FTMS	apex-ultra hybrid Qq-FTMS (Bruker)	154
8398	44	API_2000	API 2000 (AB Sciex)	154
8399	45	API_3200	API 3200 (AB Sciex)	154
8400	46	API_3200_QTRAP	API 3200 QTRAP (AB Sciex)	154
8401	47	API_4000	API 4000 (AB Sciex)	154
8402	48	API_4000_QTRAP	API 4000 QTRAP (AB Sciex)	154
8403	49	API_5000	API 5000 (AB Sciex)	154
8404	50	API_5500	API 5500 (AB Sciex)	154
8405	51	API_5500_QTRAP	API 5500 QTRAP (AB Sciex)	154
8406	52	APPLIED_BIOSYSTEMS	Applied Biosystems Group (ABI)	154
8407	53	AQI_BIOSCIENCES	AQI Biosciences	154
8408	54	ATMOS_GC	Atmospheric Pressure GC (Waters)	154
8409	55	AUTOFLEX_III_MALDI_TOF_MS	autoflex III MALDI-TOF MS (Bruker)	154
8410	56	AUTOFLEX_SPEED	autoflex speed(Bruker)	154
8411	57	AUTOSPEC_PREMIER	AutoSpec Premier (Waters)	154
8412	58	AXIMA_MEGA_TOF	AXIMA Mega TOF (Shimadzu)	154
8413	59	AXIMA_PERF_MALDI_TOF	AXIMA Performance MALDI TOF/TOF (Shimadzu)	154
8414	60	A_10_ANALYZER	A-10 Analyzer (Apogee)	154
8415	61	A_40_MINIFCM	A-40-MiniFCM (Apogee)	154
8416	62	BACTIFLOW	Bactiflow (Chemunex SA)	154
8417	63	BASE4INNOVATION	Base4innovation	154
8418	64	BD_BACTEC_MGIT_320	BD BACTEC MGIT 320	154
8419	65	BD_BACTEC_MGIT_960	BD BACTEC MGIT 960	154
8420	66	BD_RADIO_BACTEC_460TB	BD Radiometric BACTEC 460TB	154
8421	67	BIONANOMATRIX	BioNanomatrix	154
8422	68	CELL_LAB_QUANTA_SC	Cell Lab Quanta SC (Becman Coulter)	154
8423	69	CLARUS_560_D_GCMS	Clarus 560 D GC/MS (PerkinElmer)	154
8424	70	CLARUS_560_S_GCMS	Clarus 560 S GC/MS (PerkinElmer)	154
8425	71	CLARUS_600_GCMS	Clarus 600 GC/MS (PerkinElmer)	154
8426	72	COMPLETE_GENOMICS	Complete Genomics	154
8427	73	CYAN	Cyan (Dako Cytomation)	154
8428	74	CYFLOW_ML	CyFlow ML (Partec)	154
8429	75	CYFLOW_SL	Cyow SL (Partec)	154
8430	76	CYFLOW_SL3	CyFlow SL3 (Partec)	154
8431	77	CYTOBUOY	CytoBuoy (Cyto Buoy Inc)	154
8432	78	CYTOSENCE	CytoSence (Cyto Buoy Inc)	154
8433	79	CYTOSUB	CytoSub (Cyto Buoy Inc)	154
8434	80	DANAHER	Danaher	154
8435	81	DFS	DFS (Thermo Scientific)	154
8436	82	EXACTIVE	Exactive(Thermo Scientific)	154
8437	83	FACS_CANTO	FACS Canto (Becton Dickinson)	154
8438	84	FACS_CANTO2	FACS Canto2 (Becton Dickinson)	154
8439	85	FACS_SCAN	FACS Scan (Becton Dickinson)	154
8440	86	FC_500	FC 500 (Becman Coulter)	154
8441	87	GCMATE_II	GCmate II GC/MS (Jeol)	154
8442	88	GCMS_QP2010_PLUS	GCMS-QP2010 Plus (Shimadzu)	154
8443	89	GCMS_QP2010S_PLUS	GCMS-QP2010S Plus (Shimadzu)	154
8444	90	GCT_PREMIER	GCT Premier (Waters)	154
8445	91	GENEQ	GENEQ	154
8446	92	GENOME_CORP	Genome Corp.	154
8447	93	GENOVOXX	GenoVoxx	154
8448	94	GNUBIO	GnuBio	154
8449	95	GUAVA_EASYCYTE_MINI	Guava EasyCyte Mini (Millipore)	154
8450	96	GUAVA_EASYCYTE_PLUS	Guava EasyCyte Plus (Millipore)	154
8451	97	GUAVA_PERSONAL_CELL	Guava Personal Cell Analysis (Millipore)	154
8452	98	GUAVA_PERSONAL_CELL_96	Guava Personal Cell Analysis-96 (Millipore)	154
8453	99	HELICOS_BIO	Helicos BioSciences	154
8454	100	ILLUMINA	Illumina	154
8455	101	INDIRECT_LJ_MEDIUM	Indirect proportion method on LJ medium	154
8456	102	INDIRECT_AGAR_7H9	Indirect proportion method on Middlebrook Agar 7H9	154
8457	103	INDIRECT_AGAR_7H10	Indirect proportion method on Middlebrook Agar 7H10	154
8458	104	INDIRECT_AGAR_7H11	Indirect proportion method on Middlebrook Agar 7H11	154
8459	105	INFLUX_ANALYZER	inFlux Analyzer (Cytopeia)	154
8460	106	INTELLIGENT_BIOSYSTEMS	Intelligent Bio-Systems	154
8461	107	ITQ_700	ITQ 700 (Thermo Scientific)	154
8462	108	ITQ_900	ITQ 900 (Thermo Scientific)	154
8463	109	ITQ_1100	ITQ 1100 (Thermo Scientific)	154
8464	110	JMS_53000_SPIRAL	JMS-53000 SpiralTOF (Jeol)	154
8465	111	LASERGEN	LaserGen	154
8466	112	LCMS_2020	LCMS-2020 (Shimadzu)	154
8467	113	LCMS_2010EV	LCMS-2010EV (Shimadzu)	154
8468	114	LCMS_IT_TOF	LCMS-IT-TOF (Shimadzu)	154
8469	115	LI_COR	Li-Cor	154
8470	116	LIFE_TECH	Life Tech	154
8471	117	LIGHTSPEED_GENOMICS	LightSpeed Genomics	154
8472	118	LCT_PREMIER_XE	LCT Premier XE (Waters)	154
8473	119	LCQ_DECA_XP_MAX	LCQ Deca XP MAX (Thermo Scientific)	154
8474	120	LCQ_FLEET	LCQ Fleet (Thermo Scientific)	154
8475	121	LXQ_THERMO	LXQ (Thermo Scientific)	154
8476	122	LTQ_CLASSIC	LTQ Classic (Thermo Scientific)	154
8477	123	LTQ_XL	LTQ XL (Thermo Scientific)	154
8478	124	LTQ_VELOS	LTQ Velos (Thermo Scientific)	154
8479	125	LTQ_ORBITRAP_CLASSIC	LTQ Orbitrap Classic (Thermo Scientific)	154
8480	126	LTQ_ORBITRAP_XL	LTQ Orbitrap XL (Thermo Scientific)	154
8481	127	LTQ_ORBITRAP_DISCOVERY	LTQ Orbitrap Discovery (Thermo Scientific)	154
8482	128	LTQ_ORBITRAP_VELOS	LTQ Orbitrap Velos (Thermo Scientific)	154
8483	129	LUMINEX_100	Luminex 100 (Luminex)	154
8484	130	LUMINEX_200	Luminex 200 (Luminex)	154
8485	131	MACS_QUANT	MACS Quant (Miltenyi)	154
8486	132	MALDI_SYNAPT_G2_HDMS	MALDI SYNAPT G2 HDMS (Waters)	154
8487	133	MALDI_SYNAPT_G2_MS	MALDI SYNAPT G2 MS (Waters)	154
8488	134	MALDI_SYNAPT_HDMS	MALDI SYNAPT HDMS (Waters)	154
8489	135	MALDI_SYNAPT_MS	MALDI SYNAPT MS (Waters)	154
8490	136	MALDI_MICROMX	MALDI micro MX (Waters)	154
8491	137	MAXIS	maXis (Bruker)	154
8492	138	MAXISG4	maXis G4 (Bruker)	154
8493	139	MICROFLEX_LT_MALDI_TOF_MS	microflex LT MALDI-TOF MS (Bruker)	154
8494	140	MICROFLEX_LRF_MALDI_TOF_MS	microflex LRF MALDI-TOF MS (Bruker)	154
8495	141	MICROFLEX_III_TOF_MS	microflex III MALDI-TOF MS (Bruker)	154
8496	142	MICROTOF_II_ESI_TOF	micrOTOF II ESI TOF (Bruker)	154
8497	143	MICROTOF_Q_II_ESI_QQ_TOF	micrOTOF-Q II ESI-Qq-TOF (Bruker)	154
8498	144	MICROPLATE_ALAMAR_BLUE_COLORIMETRIC	microplate Alamar Blue (resazurin) colorimetric method	154
8499	145	MSTATION	Mstation (Jeol)	154
8500	146	MSQ_PLUS	MSQ Plus (Thermo Scientific)	154
8501	147	NABSYS	NABsys	154
8502	148	NANOPHOTONICS_BIOSCIENCES	Nanophotonics Biosciences	154
8503	149	NETWORK_BIOSYSTEMS	Network Biosystems	154
8504	150	NIMBLEGEN	Nimblegen	154
8505	151	OXFORD_NANOPORE_TECHNOLOGIES	Oxford Nanopore Technologies	154
8506	152	PACIFIC_BIOSCIENCES	Pacific Biosciences	154
8507	153	POPULATION_GENETICS_TECHNOLOGIES	Population Genetics Technologies	154
8508	154	Q1000GC_ULTRAQUAD	Q1000GC UltraQuad (Jeol)	154
8509	155	QUATTRO_MICRO_API	Quattro micro API (Waters)	154
8510	156	QUATTRO_MICRO_GC	Quattro micro GC (Waters)	154
8511	157	QUATTRO_PREMIER_XE	Quattro Premier XE (Waters)	154
8512	158	QSTAR	QSTAR (AB Sciex)	154
8513	159	REVEO	Reveo	154
8514	160	ROCHE	Roche	154
8515	161	SEIRAD	Seirad	154
8516	162	SOLARIX_HYBRID_QQ_FTMS	solariX hybrid Qq-FTMS (Bruker)	154
8517	163	SOMACOUNT	Somacount (Bently Instruments)	154
8518	164	SOMASCOPE	SomaScope (Bently Instruments)	154
8519	165	SYNAPT_G2_HDMS	SYNAPT G2 HDMS (Waters)	154
8520	166	SYNAPT_G2_MS	SYNAPT G2 MS (Waters)	154
8521	167	SYNAPT_HDMS	SYNAPT HDMS (Waters)	154
8522	168	SYNAPT_MS	SYNAPT MS (Waters)	154
8523	169	TRIPLETOF_5600	TripleTOF 5600 (AB Sciex)	154
8524	170	TSQ_QUANTUM_ULTRA	TSQ Quantum Ultra (Thermo Scientific)	154
8525	171	TSQ_QUANTUM_ACCESS	TSQ Quantum Access (Thermo Scientific)	154
8526	172	TSQ_QUANTUM_ACCESS_MAX	TSQ Quantum Access MAX (Thermo Scientific)	154
8527	173	TSQ_QUANTUM_DISCOVERY_MAX	TSQ Quantum Discovery MAX (Thermo Scientific)	154
8528	174	TSQ_QUANTUM_GC	TSQ Quantum GC (Thermo Scientific)	154
8529	175	TSQ_QUANTUM_XLS	TSQ Quantum XLS (Thermo Scientific)	154
8530	176	TSQ_VANTAGE	TSQ Vantage (Thermo Scientific)	154
8531	177	ULTRAFLEXTREME_MALDI_TOF_MS	ultrafleXtreme MALDI-TOF MS (Bruker)	154
8532	178	VISIGEN_BIO	VisiGen Biotechnologies	154
8533	179	XEVO_G2_QTOF	Xevo G2 QTOF (Waters)	154
8534	180	XEVO_QTOF_MS	Xevo QTof MS (Waters)	154
8535	181	XEVO_TQ_MS	Xevo TQ MS (Waters)	154
8536	182	XEVO_TQ_S	Xevo TQ-S (Waters)	154
8537	183	OTHER_PLATFORM	Other	154
8538	0		abstract	161
8539	1		addendum	161
8540	2		announcement	161
8541	3		article-commentary	161
8542	4		book review	161
8543	5		books received	161
8544	6		brief report	161
8545	7		calendar	161
8546	8		case report	161
8547	9		collection	161
8548	10		correction	161
8549	11		data paper	161
8550	12		discussion	161
8551	13		dissertation	161
8552	14		editorial	161
8553	15		in brief	161
8554	16		introduction	161
8555	17		letter	161
8556	18		meeting report	161
8557	19		news	161
8558	20		obituary	161
8559	21		oration	161
8560	22		partial retraction	161
8561	23		product review	161
8562	24		rapid communication	161
8563	25		reply	161
8564	26		reprint	161
8565	27		research article	161
8566	28		retraction	161
8567	29		review article	161
8568	30		translation	161
8569	31		other	161
8570	0		IR Scanner	162
8571	1		Laser	162
8572	2		Modelled	162
8573	3		Photogrammetry	162
8574	4		RTI	162
8575	5		Structured Light	162
8576	6		Tomographic	162
8577	7		Other	162
8578	8		Natural Light	164
8579	9		Lightbox	164
8580	10		LED	164
8581	11		Fluorescent	164
8582	12		Other	164
8583	13		cm	175
8584	14		m	175
8585	15		in	175
8586	16		ft	175
8587	17		lbs	175
8588	18		.fbx	167
8589	19		.glb	167
8590	20		.gltf	167
8591	21		.obj	167
8592	22		.stl	167
8593	23		.usdz	167
8594	24		.x3d	167
8595	25		other	167
8596	0	CEN.PK113-7D	CEN.PK113-7D	189
8597	1	CBS8066	CBS8066	189
8598	2	DS78936	DS78936	189
8599	3	Wisconsin_54-1255	Wisconsin 54-1255	189
8600	4	DS17690	DS17690	189
8601	0	1	1	185
8602	1	2	2	185
8603	2	3	3	185
8604	3	4	4	185
8605	0	stavanger	Stavanger	187
8606	1	centrient	Centrient	187
8607	0	batch	batch	190
8608	1	fed-batch	fed-batch	190
8609	2	chemostat	chemostat	190
8610	0	STR	STR	191
8611	1	STR-STR	STR-STR	191
8612	2	STR-PFR	STR-PFR	191
8613	3	STR-PFR-PFR	STR-PFR-PFR	191
8614	4	STR-X	STR-X	191
8615	5	Microfluidics	Microfluidics	191
8616	0	metabolomics	metabolomics	192
8617	1	transcriptomics	transcriptomics	192
8618	2	proteomics	proteomics	192
8619	3	population_analysis	population analysis	192
8620	0		archaeology	194
8621	1		built heritage	194
8622	2		furniture	194
8623	3		mobilia	194
8624	4		musical instrument	194
8625	5		painting	194
8626	6		palaeo-vegetation	194
8627	7		ship archaeology	194
8628	8		standing trees	194
8629	9		woodcarving	194
8630	10		other	194
8631	0		anthropology	193
8632	1		climatology	193
8633	2		dating	193
8634	3		ecology	193
8635	4		entomology	193
8636	5		forest dynamics	193
8637	6		forest management studies	193
8638	7		forestry	193
8639	8		hydrology	193
8640	9		geomorphology	193
8641	10		glaciology	193
8642	11		palaeo-ecology	193
8643	12		provenancing	193
8644	13		pyrochronology	193
8645	14		wood technology	193
8646	15		wood biology	193
8647	16		other	193
8648	0		Abies	198
8649	1		Abies alba Mill.	198
8650	2		Abies amabilis Douglas ex J. Forbes	198
8651	3		Abies balsamea (L.) Mill.	198
8652	4		Abies borisii-regis Mattf.	198
8653	5		Abies bracteata (D. Don) A. Poit.	198
8654	6		Abies cephalonica Loudon	198
8655	7		Abies chensiensis Tiegh.	198
8656	8		Abies cilicica (Antoine & Kotschy) Carrière	198
8657	9		Abies concolor (Gordon) Lindl. ex Hildebr.	198
8658	10		Abies fargesii	198
8659	11		Abies fargesii var. faxoniana (Rehder & E. H. Wilson) Tang S. Liu	198
8660	12		Abies firma Siebold & Zucc.	198
8661	13		Abies fraseri (Pursh) Poir.	198
8662	14		Abies holophylla Maxim.	198
8663	15		Abies kawakamii (Hayata) T. Itô	198
8664	16		Abies koreana E. H. Wilson	198
8665	17		Abies magnifica A. Murray bis	198
8666	18		Abies mariesii Mast.	198
8667	19		Abies nebrodensis (Lojac.) Mattei	198
8668	20		Abies nephrolepis (Trautv. ex Maxim.) Maxim.	198
8669	21		Abies nordmanniana	198
8670	22		Abies nordmanniana subsp. equi-trojani (Asch. & Sint. ex Boiss.) Coode & Cullen	198
8671	23		Abies numidica de Lannoy ex Carrière	198
8672	24		Abies pindrow (Royle ex D. Don) Royle	198
8673	25		Abies pinsapo	198
8674	26		Abies pinsapo var. marocana (Trab.) Ceballos & Bolaño	198
8675	27		Abies procera Rehder	198
8676	28		Abies recurvata Mast.	198
8677	29		Abies religiosa (Kunth) Schltdl. & Cham.	198
8678	30		Abies sachalinensis	198
8679	31		Abies sachalinensis var. mayriana Miyabe & Kudô	198
8680	32		Abies sibirica Ledeb.	198
8681	33		Abies spectabilis (D. Don) Mirb.	198
8682	34		Abies squamata Mast.	198
8683	35		Abies veitchii Lindl.	198
8684	36		Acacia	198
8685	37		Acacia alpina F.Muell.	198
8686	38		Acacia nilotica (L.)Delile	198
8687	39		Acacia tortilis	198
8688	40		Acacia tortilis subsp. raddiana (Savi)Brenan	198
8689	41		Acer	198
8690	42		Acer campestre L.	198
8691	43		Acer negundo L.	198
8692	44		Acer pensylvanicum L.	198
8693	45		Acer platanoides L.	198
8694	46		Acer pseudoplatanus L.	198
8695	47		Acer rubrum L.	198
8696	48		Acer saccharinum L.	198
8697	49		Acer saccharum Marsh.	198
8698	50		Acer spicatum Lam.	198
8699	51		Aceraceae	198
8700	52		Aciculata	198
8701	53		Adansonia	198
8702	54		Adansonia digitata L.	198
8703	55		Adenostoma	198
8704	56		Adenostoma fasciculatum Hook. & Arn.	198
8705	57		Adesmia	198
8706	58		Adesmia horrida Hook. & Arn.	198
8707	59		Adesmia uspallatensis Hook. & Arn.	198
8708	60		Aesculus	198
8709	61		Aesculus hippocastanum L.	198
8710	62		Afrocanthium	198
8711	63		Afrocanthium burttii (Bullock) Lantz	198
8712	64		Afrocarpus	198
8713	65		Afrocarpus falcatus (Thunb.) C. N. Page	198
8714	66		Afzelia	198
8715	67		Afzelia africana Pers.	198
8716	68		Afzelia quanzensis Welw.	198
8717	69		Agathis	198
8718	70		Agathis australis (D. Don) Lindl.	198
8719	71		Agathis macrophylla (Lindl.) Mast.	198
8720	72		Agathis moorei (Lindl.) Mast.	198
8721	73		Agathis ovata (Vieill.) Warb.	198
8722	74		Agathis robusta (C. Moore ex F. Muell.) F. Muell.	198
8723	75		Ailanthus	198
8724	76		Ailanthus altissima (P. Mill.) Swingle	198
8725	77		Allocasuarina	198
8726	78		Allocasuarina littoralis (Salisb.) L.A.S. Johnson	198
8727	79		Allocasuarina verticillata (Lam.) L.A.S. Johnson	198
8728	80		Alnus	198
8729	81		Alnus glutinosa (L.) Gaertn.	198
8730	82		Alnus hirsuta (Spach) Rupr.	198
8731	83		Alnus incana (L.) Moench	198
8732	84		Alnus maximowiczii Callier	198
8733	85		Alnus rhombifolia Nutt.	198
8734	86		Alnus serrulata (Aiton) Willd.	198
8735	87		Alnus viridis	198
8736	88		Alnus viridis (Chaix) DC.	198
8737	89		Alnus viridis subsp. crispa (Aiton) Turrill	198
8738	90		Alnus viridis subsp. sinuata (Regel) Á.Löve & D.Löve	198
8739	91		Anacardiaceae	198
8740	92		Andira	198
8741	93		Andira coriacea Pulle	198
8742	94		Annelida	198
8743	95		Annona	198
8744	96		Annona spraguei Saff.	198
8745	97		Annonaceae	198
8746	98		Apiales	198
8747	99		Aquifoliaceae	198
8748	100		Araliaceae	198
8749	101		Araucaria	198
8750	102		Araucaria angustifolia (Bertol.) Kuntze	198
8751	103		Araucaria araucana (Molina) K. Koch	198
8752	104		Araucaria bidwillii Hook.	198
8753	105		Araucaria cunninghamii Aiton ex A. Cunn.	198
8754	106		Araucaria heterophylla (Salisb.) Franco	198
8755	107		Araucaria hunsteinii K. Schum.	198
8756	108		Araucariaceae	198
8757	109		Arctostaphylos	198
8758	110		Arctostaphylos glauca Lindl.	198
8759	111		Artemisia	198
8760	112		Artemisia tridentata Nutt.	198
8761	113		Asteraceae	198
8762	114		Asterales	198
8763	115		Athrotaxis	198
8764	116		Athrotaxis cupressoides D. Don	198
8765	117		Athrotaxis selaginoides D. Don	198
8766	118		Austrocedrus	198
8767	119		Austrocedrus chilensis (D. Don) Pic. Serm. & Bizzarri	198
8768	120		Balanites	198
8769	121		Balanites aegyptiaca (L.) Del.	198
8770	122		Berberidaceae	198
8771	123		Berberis	198
8772	124		Berberis vulgaris L.	198
8773	125		Bertholletia	198
8774	126		Bertholletia excelsa Bonpl.	198
8775	127		Betula	198
8776	128		Betula albosinensis Burkill	198
8777	129		Betula alleghaniensis Britton	198
8778	130		Betula ermanii Cham.	198
8779	131		Betula glandulosa Michx.	198
8780	132		Betula grossa Siebold & Zucc.	198
8781	133		Betula neoalaskana Sarg.	198
8782	134		Betula nigra L.	198
8783	135		Betula papyrifera Marshall	198
8784	136		Betula pendula Roth	198
8785	137		Betula pendula var. pendula	198
8786	138		Betula platyphylla Sukaczev	198
8787	139		Betula pubescens Ehrh.	198
8788	140		Betula utilis D.Don	198
8789	141		Betulaceae	198
8790	142		Bignoniaceae	198
8791	143		Bombacaceae	198
8792	144		Bombax	198
8793	145		Bombax ceiba L.	198
8794	146		Boraginaceae	198
8795	147		Bursera	198
8796	148		Bursera simaruba (L.) Sarg.	198
8797	149		Burseraceae	198
8798	150		Buxaceae	198
8799	151		Buxus	198
8800	152		Buxus sempervirens L.	198
8801	153		Callitris	198
8802	154		Callitris columellaris F. Muell.	198
8803	155		Callitris macleayana (F. Muell.) F. Muell.	198
8804	156		Callitris preissii Miq.	198
8805	157		Calocedrus	198
8806	158		Calocedrus decurrens (Torr.) Florin	198
8807	159		Caprifoliaceae	198
8808	160		Carpinus	198
8809	161		Carpinus betulus L.	198
8810	162		Carya	198
8811	163		Carya alba (L.) Nutt. ex Ell.	198
8812	164		Carya cordiformis (Wangenh.) K. Koch	198
8813	165		Carya glabra (P. Mill.) Sweet	198
8814	166		Carya illinoinensis (Wangenh.) K. Koch	198
8815	167		Caryophyllales	198
8816	168		Castanea	198
8817	169		Castanea crenata Siebold & Zucc.	198
8818	170		Castanea dentata (Marshall) Borkh.	198
8819	171		Castanea sativa Mill.	198
8820	172		Casuarinaceae	198
8821	173		Casuarinales	198
8822	174		Catalpa	198
8823	175		Catalpa speciosa (Warder) Warder ex Engelm.	198
8824	176		Ceanothus	198
8825	177		Ceanothus crassifolius Torr.	198
8826	178		Cedrela	198
8827	179		Cedrela odorata L.	198
8828	180		Cedrus	198
8829	181		Cedrus atlantica (Endl.) Manetti ex Carrière	198
8830	182		Cedrus deodara (Roxb.) G. Don	198
8831	183		Cedrus libani	198
8832	184		Cedrus libani var. brevifolia Hook. f.	198
8833	185		Celastrales	198
8834	186		Celtis	198
8835	187		Celtis laevigata var. reticulata (Torr.) L. Benson	198
8836	188		Celtis laevigata Willd.	198
8837	189		Celtis occidentalis L.	198
8838	190		Cercidium	198
8839	191		Cercidium microphyllum (Torr.)Rose & I.M.Johnst.	198
8840	192		Cercocarpus	198
8841	193		Cercocarpus ledifolius Nutt. ex Torr. & A.Gray	198
8842	194		Cercocarpus montanus	198
8843	195		Cercocarpus montanus var. glaber (S.Watson) F.L.Martin	198
8844	196		Chamaecyparis	198
8845	197		Chamaecyparis formosensis Matsum.	198
8846	198		Chamaecyparis lawsoniana (A. Murray bis) Parl.	198
8847	199		Chamaecyparis obtusa (Siebold & Zucc.) Endl.	198
8848	200		Chamaecyparis pisifera (Siebold & Zucc.) Endl.	198
8849	201		Chamaecyparis thyoides (L.) Britton, Sterns & Poggenb.	198
8850	202		Chlorophora	198
8851	203		Chlorophora excelsa (Welw.) Benth.	198
8852	204		Citharexylum	198
8853	205		Citharexylum fruticosum L.	198
8854	206		Clusiaceae	198
8855	207		Cordia	198
8856	208		Cordia alliodora (Ruiz & Pavón) Oken	198
8857	209		Cornaceae	198
8858	210		Cornales	198
8859	211		Cornus	198
8860	212		Cornus florida L.	198
8861	213		Cornus sanguinea L.	198
8862	214		Corylus	198
8863	215		Corylus avellana L.	198
8864	216		Corylus sieboldiana Blume	198
8865	217		Corymbia	198
8866	218		Corymbia nesophila (Blakely) K.D. Hill & L.A.S Johnson	198
8867	219		Cotinus	198
8868	220		Cotinus coggygria Scop.	198
8869	221		Cryptomeria	198
8870	222		Cryptomeria japonica (Thunb. ex L. f.) D. Don	198
8871	223		Cupressaceae	198
8872	224		Cupressus	198
8873	225		Cupressus arizonica Greene	198
8874	226		Cupressus arizonica var. glabra (Sudw.) Little	198
8875	227		Cupressus dupreziana	198
8876	228		Cupressus dupreziana var. atlantica (Gaussen) Silba	198
8877	229		Cupressus lusitanica Mill.	198
8878	230		Cupressus sempervirens L.	198
8879	231		Cupressus torulosa	198
8880	232		Cupressus torulosa var. gigantea (W. C. Cheng & L. K. Fu) Farjon	198
8881	233		Cyrilla	198
8882	234		Cyrilla racemiflora L.	198
8883	235		Cyrillaceae	198
8884	236		Dacrycarpus	198
8885	237		Dacrycarpus dacrydioides (A. Rich.) de Laub.	198
8886	238		Dacrydium	198
8887	239		Dacrydium cupressinum Sol. ex G. Forst.	198
8888	240		Dicorynia	198
8889	241		Dicorynia guianensis Amshoff	198
8890	242		Diospyros	198
8891	243		Diospyros virginiana L.	198
8892	244		Dipsacales	198
8893	245		Dipterocarpaceae	198
8894	246		Drimys	198
8895	247		Drimys winteri Forster & Forster f.	198
8896	248		Ebenaceae	198
8897	249		Ebenales	198
8898	250		Elaeoluma	198
8899	251		Elaeoluma glabrescens (Mart. & Eichler ex Miq.) Aubrév.	198
8900	252		Ephedra	198
8901	253		Ephedraceae	198
8902	254		Ephedrales	198
8903	255		Ericaceae	198
8904	256		Ericales	198
8905	257		Eucalyptus	198
8906	258		Eucalyptus camaldulensis Dehnh.	198
8907	259		Eucalyptus delegatensis R. Baker	198
8908	260		Eucalyptus globulus Labill.	198
8909	261		Eucalyptus marginata Donn ex Sm.	198
8910	262		Eucalyptus miniata A. Cunn. ex Schauer	198
8911	263		Eucalyptus oreades R. Baker	198
8912	264		Eucalyptus stellulata Sieber ex DC.	198
8913	265		Euphorbiaceae	198
8914	266		Euphorbiales	198
8915	267		Fabaceae	198
8916	268		Fabales	198
8917	269		Fagaceae	198
8918	270		Fagales	198
8919	271		Fagus	198
8920	272		Fagus crenata Blume	198
8921	273		Fagus grandifolia Ehrh.	198
8922	274		Fagus orientalis Lipsky	198
8923	275		Fagus sylvatica L.	198
8924	276		Fitzroya	198
8925	277		Fitzroya cupressoides (Molina) I. M. Johnst.	198
8926	278		Frangula	198
8927	279		Frangula caroliniana (Walt.) Gray	198
8928	280		Fraxinus	198
8929	281		Fraxinus americana L.	198
8930	282		Fraxinus caroliniana P. Mill.	198
8931	283		Fraxinus excelsior L.	198
8932	284		Fraxinus nigra Marsh.	198
8933	285		Fraxinus pennsylvanica Marsh.	198
8934	286		Fraxinus velutina Torr.	198
8935	287		Ginkgo	198
8936	288		Ginkgo biloba L.	198
8937	289		Ginkgoaceae	198
8938	290		Ginkgoales	198
8939	291		Ginkgoopsida	198
8940	292		Ginkgophyta	198
8941	293		Gleditsia	198
8942	294		Gleditsia triacanthos L.	198
8943	295		Gmelina	198
8944	296		Gmelina arborea Roxb.	198
8945	297		Gnetophyta	198
8946	298		Gnetopsida	198
8947	299		Gordonia	198
8948	300		Gordonia lasianthus (L.) Ellis	198
8949	301		Guibourtia	198
8950	302		Guibourtia coleosperma (Benth.)Leonard	198
8951	303		Halocarpus	198
8952	304		Halocarpus bidwillii (Hook. f. ex Kirk) Quinn	198
8953	305		Halocarpus biformis (Hook.) Quinn	198
8954	306		Halocarpus kirkii (F. Muell. ex Parl.) Quinn	198
8955	307		Hamamelidaceae	198
8956	308		Hamamelidales	198
8957	309		Hamamelis	198
8958	310		Hamamelis virginiana L.	198
8959	311		Hevea	198
8960	312		Hevea brasiliensis (Willd. ex A.Juss.) Müll.Arg.	198
8961	313		Hippocastanaceae	198
8962	314		Ilex	198
8963	315		Ilex aquifolium L.	198
8964	316		Ilex cassine L.	198
8965	317		Ilex coriacea (Pursh) Chapman	198
8966	318		Ilex glabra (L.) Gray	198
8967	319		Ilex opaca Ait.	198
8968	320		Juglandaceae	198
8969	321		Juglandales	198
8970	322		Juglans	198
8971	323		Juglans cinerea L.	198
8972	324		Juglans nigra L.	198
8973	325		Juglans regia L.	198
8974	326		Juniperus	198
8975	327		Juniperus communis L.	198
8976	328		Juniperus deppeana Steud.	198
8977	329		Juniperus drupacea Labill.	198
8978	330		Juniperus excelsa	198
8979	331		Juniperus excelsa subsp. polycarpos (K. Koch) Takht.	198
8980	332		Juniperus foetidissima Willd.	198
8981	333		Juniperus indica	198
8982	334		Juniperus indica var. indica	198
8983	335		Juniperus monosperma (Engelm.) Sarg.	198
8984	336		Juniperus osteosperma (Torr.) Little	198
8985	337		Juniperus oxycedrus L.	198
8986	338		Juniperus pinchotii Sudw.	198
8987	339		Juniperus pingii	198
8988	340		Juniperus pingii var. pingii	198
8989	341		Juniperus procera Hochst. ex Endl.	198
8990	342		Juniperus przewalskii Kom.	198
8991	343		Juniperus pseudosabina Fisch. & C. A. Mey.	198
8992	344		Juniperus recurva Buch.-Ham. ex D. Don	198
8993	345		Juniperus recurva var. recurva	198
8994	346		Juniperus rigida	198
8995	347		Juniperus rigida subsp. conferta (Parl.) Kitam.	198
8996	348		Juniperus saltuaria Rehder & E. H. Wilson	198
8997	349		Juniperus scopulorum Sarg.	198
8998	350		Juniperus semiglobosa Regel	198
8999	351		Juniperus thurifera L.	198
9000	352		Juniperus tibetica Kom.	198
9001	353		Juniperus virginiana L.	198
9002	354		Laburnum	198
9003	355		Laburnum anagyroides Medik.	198
9004	356		Lagarostrobos	198
9005	357		Lagarostrobos franklinii (Hook. f.) Quinn	198
9006	358		Lamiales	198
9007	359		Larix	198
9008	360		Larix decidua Mill.	198
9009	361		Larix gmelinii	198
9010	362		Larix gmelinii var. gmelinii	198
9011	363		Larix griffithii	198
9012	364		Larix griffithii var. griffithii	198
9013	365		Larix laricina (Du Roi) K. Koch	198
9014	366		Larix lyallii Parl.	198
9015	367		Larix occidentalis Nutt.	198
9016	368		Larix potaninii Batalin	198
9017	369		Larix sibirica Ledeb.	198
9018	370		Lauraceae	198
9019	371		Laurales	198
9020	372		Lecythidaceae	198
9021	373		Lecythidales	198
9022	374		Lecythis	198
9023	375		Lecythis corrugata Poit.	198
9024	376		Lepidothamnus	198
9025	377		Lepidothamnus intermedius (Kirk) Quinn	198
9026	378		Leucaena	198
9027	379		Leucaena leucocephala (Lam.)de Wit	198
9028	380		Libocedrus	198
9029	381		Libocedrus bidwillii Hook. f.	198
9030	382		Libocedrus plumosa (D. Don) Sarg.	198
9031	383		Ligustrum	198
9032	384		Ligustrum vulgare L.	198
9033	385		Liquidambar	198
9034	386		Liquidambar styraciflua L.	198
9035	387		Liriodendron	198
9036	388		Liriodendron tulipifera L.	198
9037	389		Lonicera	198
9038	390		Lonicera xylosteum L.	198
9039	391		Magnolia	198
9040	392		Magnolia acuminata (L.) L.	198
9041	393		Magnolia champaca (L.) Baill. ex Pierre	198
9042	394		Magnolia grandiflora L.	198
9043	395		Magnolia nilagirica (Zenker) Figlar	198
9044	396		Magnolia virginiana L.	198
9045	397		Magnoliaceae	198
9046	398		Magnoliales	198
9047	399		Magnoliophyta	198
9048	400		Magnoliopsida	198
9049	401		Malpighiales	198
9050	402		Malvales	198
9051	403		Manilkara	198
9052	404		Manilkara bidentata (A.DC.) A.Chev.	198
9053	405		Manoao	198
9054	406		Manoao colensoi (Hook.) Molloy	198
9055	407		Meliaceae	198
9056	408		Moraceae	198
9057	409		Morella	198
9058	410		Morella cerifera (L.) Small	198
9059	411		Morus	198
9060	412		Morus alba L.	198
9061	413		Morus rubra L.	198
9062	414		Myrica	198
9063	415		Myrica gale L.	198
9064	416		Myricaceae	198
9065	417		Myricales	198
9066	418		Myrsinaceae	198
9067	419		Myrsine	198
9068	420		Myrsine floridana A. DC.	198
9069	421		Myrtaceae	198
9070	422		Myrtales	198
9071	423		Nothofagaceae	198
9072	424		Nothofagus	198
9073	425		Nothofagus alpina (Poepp. & Endl.) Oerst.	198
9074	426		Nothofagus antarctica (G.Forst.) Oerst.	198
9075	427		Nothofagus betuloides (Mirb.) Oerst.	198
9076	428		Nothofagus cunninghamii (Hook.) Oerst.	198
9077	429		Nothofagus dombeyi (Mirb.) Oerst.	198
9078	430		Nothofagus fusca (Hook.f.) Oerst.	198
9079	431		Nothofagus gunnii (Hook.f.) Oerst.	198
9080	432		Nothofagus menziesii (Hook.f.) Oerst.	198
9081	433		Nothofagus nitida (Phil.) Krasser	198
9082	434		Nothofagus obliqua (Mirb.) Oerst.	198
9083	435		Nothofagus pumilio (Poepp. & Endl.) Krasser	198
9084	436		Nothofagus solanderi (Hook.f.) Oerst.	198
9085	437		Nyctaginaceae	198
9086	438		Nyssa	198
9087	439		Nyssa ogeche Bartr. ex Marsh.	198
9088	440		Nyssa sylvatica Marsh.	198
9089	441		Nyssaceae	198
9090	442		Oleaceae	198
9091	443		Ostrya	198
9092	444		Ostrya carpinifolia Scop.	198
9093	445		Oxydendrum	198
9094	446		Oxydendrum arboreum (L.) DC.	198
9095	447		Parapiptadenia	198
9096	448		Parapiptadenia rigida (Benth.)Brenan	198
9097	449		Parkia	198
9098	450		Parkia discolor Benth.	198
9099	451		Paulownia	198
9100	452		Paulownia tomentosa (Thunb.) Sieb. & Zucc. ex Steud.	198
9101	453		Persea	198
9102	454		Persea borbonia (L.) Spreng.	198
9103	455		Phyllocladaceae	198
9104	456		Phyllocladus	198
9105	457		Phyllocladus aspleniifolius (Labill.) Hook. f.	198
9106	458		Phyllocladus trichomanoides	198
9107	459		Phyllocladus trichomanoides var. alpinus (Hook. f.) Parl.	198
9108	460		Picea	198
9109	461		Picea abies (L.) H. Karst.	198
9110	462		Picea asperata Mast.	198
9111	463		Picea brachytyla (Franch.) E. Pritz.	198
9112	464		Picea chihuahuana Martínez	198
9113	465		Picea engelmannii Parry ex Engelm.	198
9114	466		Picea glauca (Moench) Voss	198
9115	467		Picea glehnii (F. Schmidt) Mast.	198
9116	468		Picea jezoensis (Siebold & Zucc.) Carrière	198
9117	469		Picea likiangensis	198
9118	470		Picea likiangensis var. rubescens Rehder & E. H. Wilson	198
9119	471		Picea mariana (Mill.) Britton & al.	198
9120	472		Picea obovata Ledeb.	198
9121	473		Picea omorika (Pancic) Purk.	198
9122	474		Picea orientalis (L.) Peterm.	198
9123	475		Picea pungens Engelm.	198
9124	476		Picea purpurea Mast.	198
9125	477		Picea rubens Sarg.	198
9126	478		Picea schrenkiana Fisch. & C. A. Mey.	198
9127	479		Picea schrenkiana subsp. tianschanica (Rupr.) Bykov	198
9128	480		Picea smithiana (Wall.) Boiss.	198
9129	481		Pilgerodendron	198
9130	482		Pilgerodendron uviferum (D. Don) Florin	198
9131	483		Pinaceae	198
9132	484		Pinales	198
9133	485		Pinophyta	198
9134	486		Pinopsida	198
9135	487		Pinus	198
9136	488		Pinus albicaulis Engelm.	198
9137	489		Pinus aristata Engelm.	198
9138	490		Pinus armandii Franch.	198
9139	491		Pinus balfouriana Balf.	198
9140	492		Pinus banksiana Lamb.	198
9141	493		Pinus brutia Ten.	198
9142	494		Pinus bungeana Zucc. ex Endl.	198
9143	495		Pinus canariensis C. Sm.	198
9144	496		Pinus caribaea Morelet	198
9145	497		Pinus cembroides	198
9146	498		Pinus cembroides subsp. lagunae (Rob.-Pass.) D. K. Bailey	198
9147	499		Pinus contorta Douglas ex Loudon	198
9148	500		Pinus coulteri D. Don	198
9149	501		Pinus densata Mast.	198
9150	502		Pinus densiflora Siebold & Zucc.	198
9151	503		Pinus echinata Mill.	198
9152	504		Pinus edulis Engelm.	198
9153	505		Pinus elliottii Engelm.	198
9154	506		Pinus flexilis E. James	198
9155	507		Pinus gerardiana Wall. ex D. Don	198
9156	508		Pinus halepensis Mill.	198
9157	509		Pinus hartwegii Lindl.	198
9158	510		Pinus heldreichii H. Christ	198
9159	511		Pinus jeffreyi Balf.	198
9160	512		Pinus kesiya Royle ex Gordon	198
9161	513		Pinus koraiensis Siebold & Zucc.	198
9162	514		Pinus lambertiana Douglas	198
9163	515		Pinus leiophylla	198
9164	516		Pinus leiophylla var. chihuahuana (Engelm.) Shaw	198
9165	517		Pinus longaeva D. K. Bailey	198
9166	518		Pinus merkusii Jungh. & de Vriese	198
9167	519		Pinus monophylla Torr. & Frém.	198
9168	520		Pinus monticola Douglas ex D. Don	198
9169	521		Pinus mugo subsp. uncinata (Ramond ex DC.) Domin	198
9170	522		Pinus mugo Turra	198
9171	523		Pinus nigra	198
9172	524		Pinus nigra subsp. pallasiana (Lamb.) Holmboe	198
9173	525		Pinus oocarpa Schiede ex Schltdl.	198
9174	526		Pinus palustris Mill.	198
9175	527		Pinus peuce Griseb.	198
9176	528		Pinus pinaster	198
9177	529		Pinus pinaster subsp. escarena (Risso) K. Richt.	198
9178	530		Pinus pinea L.	198
9179	531		Pinus ponderosa Douglas ex C. Lawson	198
9180	532		Pinus pumila (Pall.) Regel	198
9181	533		Pinus pungens Lamb.	198
9182	534		Pinus quadrifolia Parl. ex Sudw.	198
9183	535		Pinus radiata D. Don	198
9184	536		Pinus roxburghii Sarg.	198
9185	537		Pinus strobiformis Engelm.	198
9186	538		Pinus sylvestris L.	198
9187	539		Pinus tabuliformis Carrière	198
9188	540		Pinus thunbergii Parl.	198
9189	541		Pinus torreyana Parry ex Carrière	198
9190	542		Pinus virginiana Mill.	198
9191	543		Pinus wallichiana A. B. Jacks.	198
9192	544		Pisonia	198
9193	545		Pisonia grandis R. Br.	198
9194	546		Pistacia	198
9195	547		Pistacia atlantica Desf.	198
9196	548		Pistacia vera L.	198
9197	549		Plantae	198
9198	550		Platanaceae	198
9199	551		Platanus	198
9200	552		Platanus occidentalis L.	198
9201	553		Platanus racemosa Nutt.	198
9202	554		Platonia	198
9203	555		Platonia esculenta (Arruda) Rickett & Stafleu	198
9204	556		Platycladus	198
9205	557		Platycladus orientalis (L.) Franco	198
9206	558		Podocarpaceae	198
9207	559		Podocarpus	198
9208	560		Podocarpus cunninghamii Colenso	198
9209	561		Podocarpus lawrencei Hook. f.	198
9210	562		Podocarpus neriifolius D. Don	198
9211	563		Podocarpus nivalis Hook.	198
9212	564		Podocarpus nubigenus Lindl.	198
9213	565		Podocarpus parlatorei Pilg.	198
9214	566		Podocarpus totara G. Benn. ex D. Don	198
9215	567		Polychaeta	198
9216	568		Polyscias	198
9217	569		Polyscias sambucifolia (Sieber ex DC.) Harms	198
9218	570		Populus	198
9219	571		Populus alba L.	198
9220	572		Populus angustifolia James	198
9221	573		Populus balsamifera L.	198
9222	574		Populus balsamifera subsp. trichocarpa (Torr. & Gray ex Hook.) Brayshaw	198
9223	575		Populus deltoides Bartr. ex Marsh.	198
9224	576		Populus fremontii S. Wats.	198
9225	577		Populus grandidentata Michx.	198
9226	578		Populus nigra L.	198
9227	579		Populus tremuloides Michx.	198
9228	580		Pouteria	198
9229	581		Pouteria glomerata	198
9230	582		Pouteria glomerata subsp. glomerata	198
9231	583		Primulales	198
9232	584		Prosopis	198
9233	585		Prosopis flexuosa DC.	198
9234	586		Prosopis glandulosa	198
9235	587		Prosopis glandulosa var. glandulosa Torr.	198
9236	588		Prumnopitys	198
9237	589		Prumnopitys andina (Poepp. ex Endl.) de Laub.	198
9238	590		Prumnopitys ferruginea (G. Benn. ex D. Don) de Laub.	198
9239	591		Prumnopitys taxifolia (Banks & Sol. ex D. Don) de Laub.	198
9240	592		Prunus	198
9241	593		Prunus mahaleb L.	198
9242	594		Prunus pensylvanica L.f.	198
9243	595		Pseudotsuga	198
9244	596		Pseudotsuga japonica (Shiras.) Beissn.	198
9245	597		Pseudotsuga macrocarpa (Vasey) Mayr	198
9246	598		Pseudotsuga menziesii (Mirb.) Franco	198
9247	599		Pseudoxandra	198
9248	600		Pseudoxandra polyphleba (Diels) R. E. Fr.	198
9249	601		Pterocarpus	198
9250	602		Pterocarpus angolensis DC.	198
9251	603		Purshia	198
9252	604		Purshia tridentata (Pursh) DC.	198
9253	605		Quercus	198
9254	606		Quercus afares Pomel	198
9255	607		Quercus alba L.	198
9256	608		Quercus bicolor Willd.	198
9257	609		Quercus brantii Lindl.	198
9258	610		Quercus canariensis Willd.	198
9259	611		Quercus cerris L.	198
9260	612		Quercus coccifera L.	198
9261	613		Quercus coccinea Münchh.	198
9262	614		Quercus copeyensis C.H.Mull.	198
9263	615		Quercus costaricensis Liebm.	198
9264	616		Quercus douglasii Hook. & Arn.	198
9265	617		Quercus ellipsoidalis E.J.Hill	198
9266	618		Quercus engelmannii Greene	198
9267	619		Quercus falcata Michx.	198
9268	620		Quercus frainetto Ten.	198
9269	621		Quercus garryana Douglas ex Hook.	198
9270	622		Quercus grisea Liebm.	198
9271	623		Quercus hartwissiana Steven	198
9272	624		Quercus infectoria	198
9273	625		Quercus infectoria subsp. veneris (A.Kern.) Meikle	198
9274	626		Quercus ithaburensis Decne.	198
9275	627		Quercus ithaburensis subsp. macrolepis (Kotschy) Hedge & Yalt.	198
9276	628		Quercus kelloggii Newb.	198
9277	629		Quercus lobata Née	198
9278	630		Quercus lusitanica Lam.	198
9279	631		Quercus marilandica (L.) Münchh.	198
9280	632		Quercus michauxii Nutt.	198
9281	633		Quercus mongolica Fisch. ex Ledeb.	198
9282	634		Quercus mongolica subsp. crispula (Blume) Menitsky	198
9283	635		Quercus muehlenbergii Engelm.	198
9284	636		Quercus nigra L.	198
9285	637		Quercus petraea (Matt.) Liebl.	198
9286	638		Quercus pontica K.Koch	198
9287	639		Quercus robur L.	198
9288	640		Quercus rubra L.	198
9289	641		Quercus shumardii Buckley	198
9290	642		Quercus stellata Wangenh.	198
9291	643		Quercus suber L.	198
9292	644		Ranunculales	198
9293	645		Rhamnaceae	198
9294	646		Rhamnales	198
9295	647		Rhamnus	198
9296	648		Rhamnus cathartica L.	198
9297	649		Rhamnus crocea Nutt.	198
9298	650		Rhus	198
9299	651		Rhus ovata S. Wats.	198
9300	652		Robinia	198
9301	653		Robinia neomexicana A.Gray	198
9302	654		Robinia pseudoacacia L.	198
9303	655		Rosaceae	198
9304	656		Rosales	198
9305	657		Rubiaceae	198
9306	658		Rubiales	198
9307	659		Salicaceae	198
9308	660		Salicales	198
9309	661		Salix	198
9310	662		Salix amygdaloides Anderss.	198
9311	663		Salix arbusculoides Anderss.	198
9312	664		Salix candida Flueggé ex Willd.	198
9313	665		Salix caprea L.	198
9314	666		Salix caroliniana Michx.	198
9315	667		Salix discolor Muhl.	198
9316	668		Salix elaeagnos Scop.	198
9317	669		Salix exigua Nutt.	198
9318	670		Salix glauca L.	198
9319	671		Salix interior Rowlee	198
9320	672		Salix lanata L.	198
9321	673		Salix lasiolepis Benth.	198
9322	674		Salix myrsinifolia Salisb.	198
9323	675		Salix pendulina Wenderoth	198
9324	676		Salix planifolia Pursh	198
9325	677		Salix purpurea L.	198
9326	678		Salix viminalis L.	198
9327	679		Santalaceae	198
9328	680		Santalales	198
9329	681		Santalum	198
9330	682		Santalum album L.	198
9331	683		Sapindales	198
9332	684		Sapotaceae	198
9333	685		Sassafras	198
9334	686		Sassafras albidum (Nutt.) Nees	198
9335	687		Saxegothaea	198
9336	688		Saxegothaea conspicua Lindl.	198
9337	689		Sciadopityaceae	198
9338	690		Sciadopitys	198
9339	691		Sciadopitys verticillata (Thunb.) Siebold & Zucc.	198
9340	692		Scrophulariaceae	198
9341	693		Scrophulariales	198
9342	694		Sequoia	198
9343	695		Sequoia sempervirens (D. Don) Endl.	198
9344	696		Sequoiadendron	198
9345	697		Sequoiadendron giganteum (Lindl.) J. Buchholz	198
9346	698		Shorea	198
9347	699		Shorea robusta Gaertner f.	198
9348	700		Simaroubaceae	198
9349	701		Swartzia	198
9350	702		Swartzia laevicarpa Amshoff	198
9351	703		Swietenia	198
9352	704		Swietenia macrophylla King	198
9353	705		Swietenia mahagoni (L.) Jacq.	198
9354	706		Tamaricaceae	198
9355	707		Tamarix	198
9356	708		Tamarix aphylla (L.) Karst.	198
9357	709		Tamarix chinensis Lour.	198
9358	710		Taxaceae	198
9359	711		Taxodium	198
9360	712		Taxodium distichum	198
9361	713		Taxodium distichum var. imbricatum (Nutt.) Croom	198
9362	714		Taxodium mucronatum Ten.	198
9363	715		Taxus	198
9364	716		Taxus cuspidata Siebold & Zucc.	198
9365	717		Tectona	198
9366	718		Tectona grandis L. f.	198
9367	719		Tetraclinis	198
9368	720		Tetraclinis articulata (Vahl) Mast.	198
9369	721		Theaceae	198
9370	722		Theales	198
9371	723		Thuja	198
9372	724		Thuja occidentalis L.	198
9373	725		Thuja plicata Donn ex D. Don	198
9374	726		Thuja standishii (Gordon) Carrière	198
9375	727		Thujopsis	198
9376	728		Thujopsis dolabrata (Thunb. ex L. f.) Siebold & Zucc.	198
9377	729		Tilia	198
9378	730		Tilia americana L.	198
9379	731		Tilia cordata P. Mill.	198
9380	732		Tilia platyphyllos Scop.	198
9381	733		Tiliaceae	198
9382	734		Torreya	198
9383	735		Torreya californica Torr.	198
9384	736		Tsuga	198
9385	737		Tsuga canadensis (L.) Carrière	198
9386	738		Tsuga caroliniana Engelm.	198
9387	739		Tsuga chinensis (Franch.) E. Pritz.	198
9388	740		Tsuga diversifolia (Maxim.) Mast.	198
9389	741		Tsuga dumosa (D. Don) Eichler	198
9390	742		Tsuga heterophylla (Raf.) Sarg.	198
9391	743		Tsuga mertensiana (Bong.) Carrière	198
9392	744		Tsuga sieboldii Carrière	198
9393	745		Typhloscolecidae	198
9394	746		Ulmaceae	198
9395	747		Ulmus	198
9396	748		Ulmus glabra Huds.	198
9397	749		Ulmus procera Salisb.	198
9398	750		Ulmus pumila L.	198
9399	751		Ulmus rubra Muhl.	198
9400	752		Urticales	198
9401	753		Verbenaceae	198
9402	754		Viburnum	198
9403	755		Viburnum lantana L.	198
9404	756		Violales	198
9405	757		Vouacapoua	198
9406	758		Vouacapoua americana Aubl.	198
9407	759		Widdringtonia	198
9408	760		Widdringtonia cedarbergensis J. A. Marsh	198
9409	761		Winteraceae	198
9410	762		Xanthocyparis	198
9411	763		Xanthocyparis nootkatensis (D. Don) Farjon & Harder	198
9412	764		Zygophyllaceae	198
9413	765		Zygophyllum	198
9414	0		abbey	196
9415	1		abbey church	196
9416	2		abutment	196
9417	3		aft	196
9418	4		after deck	196
9419	5		aisle	196
9420	6		altar	196
9421	7		altarpiece	196
9422	8		amidships	196
9423	9		anchor	196
9424	10		anchor beam	196
9425	11		anchor bolster	196
9426	12		anchor stock	196
9427	13		annex	196
9428	14		arch	196
9429	15		arch brace	196
9430	16		arrow shaft	196
9431	17		ashlar piece	196
9432	18		ashlar post	196
9433	19		attic	196
9434	20		back (side)	196
9435	21		back aisle	196
9436	22		back room	196
9437	23		backstay	196
9438	24		bad bevel	196
9439	25		baffle(-board)	196
9440	26		bailey	196
9441	27		baldachin	196
9442	28		balustrade	196
9443	29		bar	196
9444	30		barge	196
9445	31		bark, barque	196
9446	32		barkentine	196
9447	33		barn	196
9448	34		barquetine	196
9449	35		barrack	196
9450	36		barracks	196
9451	37		barrel	196
9452	38		base	196
9453	39		bass	196
9454	40		bastion	196
9455	41		batten	196
9456	42		battening	196
9457	43		bay	196
9458	44		beam	196
9459	45		beam end	196
9460	46		bed	196
9461	47		bee block	196
9462	48		belaying	196
9463	49		belaying pin	196
9464	50		belaying rack	196
9465	51		belfry	196
9466	52		best room	196
9467	53		bibb	196
9468	54		bilge	196
9469	55		bilge gutter	196
9470	56		bilge stringer	196
9471	57		bilge water	196
9472	58		bin	196
9473	59		binder	196
9474	60		binding strake	196
9475	61		binnacle	196
9476	62		bitt	196
9477	63		black strake	196
9478	64		blade	196
9479	65		blanket chest	196
9480	66		block	196
9481	67		board	196
9482	68		boarding	196
9483	69		boaster	196
9484	70		boat	196
9485	71		boat boom	196
9486	72		bollard	196
9487	73		bolster	196
9488	74		bolt	196
9489	75		boom	196
9490	76		boom cradle	196
9491	77		boom crutch	196
9492	78		boomkin	196
9493	79		border joist	196
9494	80		bosse	196
9495	81		bottom	196
9496	82		bottom first	196
9497	83		bottom plank	196
9498	84		bottom strake	196
9499	85		bottom, floor	196
9500	86		bow	196
9501	87		bowl	196
9502	88		bowsprit	196
9503	89		bowsprit bees	196
9504	90		box	196
9505	91		box beam	196
9506	92		brace	196
9507	93		bracket	196
9508	94		brake	196
9509	95		branch	196
9510	96		branching	196
9511	97		breasthook, breast knee	196
9512	98		bridge	196
9513	99		bridge head	196
9514	100		bridging	196
9515	101		bridging joist	196
9516	102		brig	196
9517	103		brigantine	196
9518	104		brook	196
9519	105		buckler	196
9520	106		building	196
9521	107		bulkhead	196
9522	108		bulwark	196
9523	109		bumkin	196
9524	110		bumpkin	196
9525	111		burial pit	196
9526	112		buttress	196
9527	113		cabinet	196
9528	114		camber	196
9529	115		campanile	196
9530	116		campshed(ding)	196
9531	117		campsheeting	196
9532	118		campshot	196
9533	119		canal	196
9534	120		canalboat	196
9535	121		canoe	196
9536	122		canopy	196
9537	123		cap	196
9538	124		capping	196
9539	125		capstan	196
9540	126		cargo vessel	196
9541	127		carling	196
9542	128		carrack	196
9543	129		carriage	196
9544	130		carvel	196
9545	131		carvelbuilt	196
9546	132		case	196
9547	133		case furniture	196
9548	134		castel	196
9549	135		castellum	196
9550	136		castle	196
9551	137		cat	196
9552	138		cat block	196
9553	139		cat kevel	196
9554	140		cathead	196
9555	141		caulkage	196
9556	142		caulking	196
9557	143		caulking mallet	196
9558	144		caulking material	196
9559	145		caulking method	196
9560	146		caulking nail	196
9561	147		ceiling	196
9562	148		ceiling plank	196
9563	149		cellar	196
9564	150		cello	196
9565	151		cemetery	196
9566	152		central post	196
9567	153		central vertical post	196
9568	154		cesspit	196
9569	155		cesspool	196
9570	156		chain plate	196
9571	157		chair	196
9572	158		chairleg	196
9573	159		chamber	196
9574	160		chancel	196
9575	161		channel	196
9576	162		channel capping strip	196
9577	163		channel knee	196
9578	164		channel wale (frigate)	196
9579	165		chapel	196
9580	166		cheek	196
9581	167		chest	196
9582	168		chevet	196
9583	169		chine	196
9584	170		chine block	196
9585	171		chine cleat	196
9586	172		chine-block	196
9587	173		chock	196
9588	174		choir	196
9589	175		choir stall	196
9590	176		church	196
9591	177		churchtower	196
9592	178		churchyard	196
9593	179		city	196
9594	180		city hall	196
9595	181		clamp	196
9596	182		cleat	196
9597	183		clinker	196
9598	184		clinker built	196
9599	185		clock	196
9600	186		closet	196
9601	187		clout nail	196
9602	188		coach	196
9603	189		coaming	196
9604	190		coating	196
9605	191		cockloft	196
9606	192		coffin	196
9607	193		cog	196
9608	194		cog ship	196
9609	195		collar	196
9610	196		collar beam	196
9611	197		collarpurlin	196
9612	198		common joist	196
9613	199		common rafter	196
9614	200		common rafter roof	196
9615	201		console	196
9616	202		console table	196
9617	203		construction cleat	196
9618	204		constructional section	196
9619	205		contrabass	196
9620	206		convent	196
9621	207		corbel	196
9622	208		corbel piece	196
9623	209		corn-mill	196
9624	210		corner rafter	196
9625	211		cornice	196
9626	212		corona	196
9627	213		corridor	196
9628	214		counter	196
9629	215		counter brace	196
9630	216		counter timber	196
9631	217		country estate	196
9632	218		country house	196
9633	219		cove	196
9634	220		covering board	196
9635	221		crafts house	196
9636	222		crate	196
9637	223		creek	196
9638	224		creel	196
9639	225		crock	196
9640	226		cross beam	196
9641	227		cross brace	196
9642	228		cross tree	196
9643	229		crossbeam	196
9644	230		crossbridging	196
9645	231		crossbridgings	196
9646	232		crossing	196
9647	233		crossjack yard	196
9648	234		crown	196
9649	235		crown of beam	196
9650	236		crutch	196
9651	237		cuddy	196
9652	238		cult place	196
9653	239		culvert	196
9654	240		cupboard	196
9655	241		curved brace	196
9656	242		cutter	196
9657	243		cutting	196
9658	244		dais	196
9659	245		dam	196
9660	246		darby	196
9661	247		dead rise	196
9662	248		deadeye	196
9663	249		deadeye chain	196
9664	250		deadwood	196
9665	251		deal	196
9666	252		deck	196
9667	253		deckbeam, joist	196
9668	254		deckhouse	196
9669	255		deckplank	196
9670	256		defence wall	196
9671	257		defensive wall	196
9672	258		defensive work	196
9673	259		dike	196
9674	260		disc wheel	196
9675	261		dish	196
9676	262		ditch	196
9677	263		dollhouse	196
9678	264		dolphin	196
9679	265		door	196
9680	266		door frame	196
9681	267		door head	196
9682	268		door jamb	196
9683	269		door post	196
9684	270		doorstep	196
9685	271		doorway	196
9686	272		double bass	196
9687	273		dowel	196
9688	274		drainage sluice	196
9689	275		drawer	196
9690	276		driven pile	196
9691	277		dugout	196
9692	278		dull edge	196
9693	279		dutch bombé chest	196
9694	280		dwelling	196
9695	281		enclosure	196
9696	282		ensign staff	196
9697	283		entrance hall	196
9698	284		entrenchment	196
9699	285		euphroe	196
9700	286		excavation	196
9701	287		facade	196
9702	288		facing	196
9703	289		faintail	196
9704	290		falsework	196
9705	291		fantail	196
9706	292		farmhouse	196
9707	293		fashion frame	196
9708	294		fashion piece	196
9709	295		feature	196
9710	296		fender	196
9711	297		fife rail	196
9712	298		figurehead	196
9713	299		filler	196
9714	300		fireplace	196
9715	301		first futtock	196
9716	302		fish davit	196
9717	303		fish weir	196
9718	304		fish well	196
9719	305		fittings	196
9720	306		flank	196
9721	307		flanking aisle	196
9722	308		flat	196
9723	309		flat bottom [gb]	196
9724	310		flat bottomed vessel	196
9725	311		flat roof	196
9726	312		flat-bottomed vessel/boat	196
9727	313		flatboat	196
9728	314		floor	196
9729	315		floor ceiling	196
9730	316		floor frame	196
9731	317		floor joist	196
9732	318		floor joists	196
9733	319		floor timber (straight)	196
9734	320		floor timber (v-shaped)	196
9735	321		floor timber knee	196
9736	322		floortimber	196
9737	323		flour mill	196
9738	324		flush planking	196
9739	325		flute	196
9740	326		flute ship	196
9741	327		footboard	196
9742	328		fore channel	196
9743	329		fore lower mast	196
9744	330		fore top	196
9745	331		fore topgallant mast	196
9746	332		fore topgallant yard	196
9747	333		fore topmast	196
9748	334		fore topsail yard	196
9749	335		fore yard	196
9750	336		forecastle	196
9751	337		formwork	196
9752	338		fortification	196
9753	339		fortress	196
9754	340		forward deck	196
9755	341		foundation	196
9756	342		foundation hole	196
9757	343		foundation pile	196
9758	344		frame	196
9759	345		frame first	196
9760	346		frame spacing	196
9761	347		framed building	196
9762	348		fraterhouse	196
9763	349		freighter	196
9764	350		frieze	196
9765	351		frigate	196
9766	352		front facade	196
9767	353		furniture	196
9768	354		furring rafter	196
9769	355		futtock	196
9770	356		futtock rider	196
9771	357		gaff	196
9772	358		galeas	196
9773	359		galley	196
9774	360		galliot	196
9775	361		gallow	196
9776	362		gallows-field	196
9777	363		gallows-lee	196
9778	364		gangway	196
9779	365		garboard strake	196
9780	366		gatehouse	196
9781	367		gateway	196
9782	368		girder	196
9783	369		granary	196
9784	370		grating	196
9785	371		grave	196
9786	372		grave field	196
9787	373		graving piece	196
9788	374		guard post	196
9789	375		guitar	196
9790	376		gunwale	196
9791	377		hagboat	196
9792	378		half frame	196
9793	379		half timber work	196
9794	380		hall	196
9795	381		hallway	196
9796	382		hammerbeam truss	196
9797	383		handle	196
9798	384		handrail	196
9799	385		hanging truss	196
9800	386		hatch	196
9801	387		hatch coaming	196
9802	388		hauling	196
9803	389		haunche	196
9804	390		hawse hole	196
9805	391		hawse hole bolster	196
9806	392		hawse hole lining	196
9807	393		head	196
9808	394		head cheek	196
9809	395		head parapet	196
9810	396		head rail	196
9811	397		head timber	196
9812	398		header	196
9813	399		headledge	196
9814	400		heart	196
9815	401		hearth	196
9816	402		heel	196
9817	403		heel beam cap	196
9818	404		heeling	196
9819	405		helve	196
9820	406		herve	196
9821	407		hillock	196
9822	408		hip rafter	196
9823	409		hip roof	196
9824	410		hog	196
9825	411		hogged vessel	196
9826	412		hold	196
9827	413		hold rider	196
9828	414		hole	196
9829	415		homeward bounder	196
9830	416		hooker	196
9831	417		horreum	196
9832	418		hospital	196
9833	419		hound	196
9834	420		house	196
9835	421		house plan	196
9836	422		howker	196
9837	423		hub	196
9838	424		hull	196
9839	425		hull plank	196
9840	426		hull strake	196
9841	427		hut	196
9842	428		icon	196
9843	429		inboard	196
9844	430		inclined clamp	196
9845	431		infrastructure	196
9846	432		internal	196
9847	433		interweaving	196
9848	434		inwale	196
9849	435		inwale, stringer	196
9850	436		jack rafter	196
9851	437		jackstaff	196
9852	438		jamb	196
9853	439		jibboom	196
9854	440		jibboom saddle	196
9855	441		jig	196
9856	442		joint	196
9857	443		joist	196
9858	444		joisting	196
9859	445		jolly	196
9860	446		jolly boat	196
9861	447		keel	196
9862	448		keel beam	196
9863	449		keel plank	196
9864	450		keelson	196
9865	451		keep	196
9866	452		kevel	196
9867	453		kevel bitt	196
9868	454		kevel-head	196
9869	455		king plank	196
9870	456		king post	196
9871	457		kingpost	196
9872	458		knee	196
9873	459		knee of the head	196
9874	460		knife	196
9875	461		knighthead	196
9876	462		knoll	196
9877	463		knuckle frame	196
9878	464		knuckle framed ship	196
9879	465		l-shaped chine	196
9880	466		l-shaped covering board	196
9881	467		ladder	196
9882	468		ladder side	196
9883	469		lance	196
9884	470		land abutment	196
9885	471		landing	196
9886	472		landing place	196
9887	473		landing stage	196
9888	474		lap strake	196
9889	475		larboard	196
9890	476		larboard side	196
9891	477		lath	196
9892	478		latrine	196
9893	479		launch	196
9894	480		leaf	196
9895	481		ledge	196
9896	482		leg of a table	196
9897	483		lid	196
9898	484		lierne rib	196
9899	485		limber hole, watercourse	196
9900	486		limberpassage	196
9901	487		limbers	196
9902	488		line of flotation	196
9903	489		link beam	196
9904	490		lintel	196
9905	491		list	196
9906	492		lock	196
9907	493		locker	196
9908	494		loft	196
9909	495		log cabin construction	196
9910	496		long floating rule	196
9911	497		long tackle block	196
9912	498		long-case clock	196
9913	499		longboat	196
9914	500		longitudinal bracing	196
9915	501		longitudinal stiffener	196
9916	502		lookout tower	196
9917	503		lower façade	196
9918	504		lower front	196
9919	505		lute	196
9920	506		lyre	196
9921	507		main boom	196
9922	508		main channel	196
9923	509		main deck	196
9924	510		main lower mast	196
9925	511		main rail timber head	196
9926	512		main top	196
9927	513		main topgallant mast	196
9928	514		main topgallant yard	196
9929	515		main topmast	196
9930	516		main topsail yard	196
9931	517		main wale	196
9932	518		main yard	196
9933	519		manor	196
9934	520		manor house	196
9935	521		manorial farm	196
9936	522		mansion	196
9937	523		mast	196
9938	524		mast beam	196
9939	525		mast cleat	196
9940	526		mast fid	196
9941	527		mast frame	196
9942	528		mast heel	196
9943	529		mast step	196
9944	530		mast thwart	196
9945	531		mast truck	196
9946	532		mast woolding	196
9947	533		mat work	196
9948	534		merchant vessel	196
9949	535		mezzanine	196
9950	536		military camp	196
9951	537		mill	196
9952	538		mill wheel	196
9953	539		miscellaneous finds	196
9954	540		mizzen channel	196
9955	541		mizzen lower mast	196
9956	542		mizzen stool	196
9957	543		mizzen top	196
9958	544		mizzen topgallant mast	196
9959	545		mizzen topgallant yard	196
9960	546		mizzen topmast	196
9961	547		mizzen topsail yard	196
9962	548		mizzen yard	196
9963	549		moat	196
9964	550		modillion	196
9965	551		monastery	196
9966	552		mortice	196
9967	553		mortice-and-tenon	196
9968	554		mortise	196
9969	555		mortise-and-tenon (joint)	196
9970	556		mortise-and-tenon joint	196
9971	557		motte	196
9972	558		mould	196
9973	559		moulding	196
9974	560		mullion	196
9975	561		museum	196
9976	562		musical instrument	196
9977	563		nail	196
9978	564		nail (small)	196
9979	565		nail (wooden)	196
9980	566		nail dowel	196
9981	567		nail hole	196
9982	568		narrow boat	196
9983	569		nave	196
9984	570		newel (post)	196
9985	571		newel-post stair	196
9986	572		oar	196
9987	573		oar lock	196
9988	574		oar port	196
9989	575		organ	196
9990	576		ornament	196
9991	577		orphanage	196
9992	578		outer bailey	196
9993	579		outer hull	196
9994	580		outlet sluice	196
9995	581		outside ladder	196
9996	582		overlap	196
9997	583		packet, packet boat	196
9998	584		paddle	196
9999	585		paddle wheel	196
10000	586		painting	196
10001	587		palace	196
10002	588		palisade	196
10003	589		pane	196
10004	590		panel	196
10005	591		paneling	196
10006	592		panelling	196
10007	593		pantry	196
10008	594		parral	196
10009	595		parral rib	196
10010	596		parral truck	196
10011	597		parrel rib	196
10012	598		parsonage	196
10013	599		partition	196
10014	600		partition wall	196
10015	601		passage(way)	196
10016	602		passing brace	196
10017	603		pavillion	196
10018	604		peg	196
10019	605		philibert roof	196
10020	606		philibert truss	196
10021	607		piece of furniture	196
10022	608		pier	196
10023	609		pilaster	196
10024	610		pile	196
10025	611		piling	196
10026	612		pillar, stanchion	196
10027	613		pink	196
10028	614		pinnace	196
10029	615		pit	196
10030	616		plaiting	196
10031	617		plank	196
10032	618		planking	196
10033	619		planksheer	196
10034	620		plaque	196
10035	621		plate	196
10036	622		platform	196
10037	623		poop deck	196
10038	624		port	196
10039	625		port lid	196
10040	626		port side	196
10041	627		portal	196
10042	628		post	196
10043	629		post hole	196
10044	630		post-mill	196
10045	631		praam	196
10046	632		pram	196
10047	633		principal rafter	196
10048	634		prow block	196
10049	635		prow block (stem)	196
10050	636		prow block (stern)	196
10051	637		pulley	196
10052	638		pulpit	196
10053	639		pump	196
10054	640		pump dale	196
10055	641		puncheon	196
10056	642		punt	196
10057	643		punt-like vessel	196
10058	644		punting	196
10059	645		purlin	196
10060	646		purlin roof	196
10061	647		putlog	196
10062	648		quarter	196
10063	649		quarter bar	196
10064	650		quarter deck	196
10065	651		quarter gallery	196
10066	652		quay	196
10067	653		queenpost	196
10068	654		quiver	196
10069	655		quoin	196
10070	656		rabbet	196
10071	657		rafter	196
10072	658		rafter single roof	196
10073	659		rail timber	196
10074	660		railing	196
10075	661		raking	196
10076	662		ram	196
10077	663		rampart	196
10078	664		rear (side)	196
10079	665		rear part	196
10080	666		rebate	196
10081	667		redoubt	196
10082	668		refectory	196
10083	669		refuge hill	196
10084	670		refugium	196
10085	671		relief	196
10086	672		reredos	196
10087	673		residence	196
10088	674		retabel	196
10089	675		revetment	196
10090	676		rib	196
10091	677		ribband	196
10092	678		rider	196
10093	679		ridge	196
10094	680		ridge (pole/beam/piece)	196
10095	681		ridge (purlin)	196
10096	682		ridge purlin	196
10097	683		ridge turret	196
10098	684		ridge-beam	196
10099	685		ridgepiece	196
10100	686		rig	196
10101	687		rigging	196
10102	688		rising floor timber	196
10103	689		road	196
10104	690		rod	196
10105	691		rood gallery	196
10106	692		rood loft	196
10107	693		rood screen	196
10108	694		roof	196
10109	695		roof boarding	196
10110	696		roof construction	196
10111	697		roof framing	196
10112	698		roof hip	196
10113	699		roof plate	196
10114	700		roof timber	196
10115	701		roof truss(es)	196
10116	702		roof turret	196
10117	703		roof-beam	196
10118	704		rooftop	196
10119	705		room	196
10120	706		root	196
10121	707		root system	196
10122	708		round bottom	196
10123	709		round bottomed vessel	196
10124	710		round house	196
10125	711		roundup	196
10126	712		rowing	196
10127	713		rowlock	196
10128	714		rudder	196
10129	715		running-board	196
10130	716		rustic work	196
10131	717		rustication	196
10132	718		sacristy	196
10133	719		sailing gear	196
10134	720		saint andrew's cross	196
10135	721		sanctuary	196
10136	722		sap wood	196
10137	723		scabbard	196
10138	724		scantling	196
10139	725		scarf	196
10140	726		scarf joint	196
10141	727		school	196
10142	728		school building	196
10143	729		scissors brace	196
10144	730		sconse	196
10145	731		scoop	196
10146	732		scull	196
10147	733		sculpture	196
10148	734		scupper	196
10149	735		seam	196
10150	736		sentry	196
10151	737		set of frames	196
10152	738		settlement	196
10153	739		shape	196
10154	740		sheat	196
10155	741		sheathing	196
10156	742		shed	196
10157	743		sheer	196
10158	744		sheer rail	196
10159	745		sheers	196
10160	746		sheet piling	196
10161	747		sheeting	196
10162	748		sheeting board	196
10163	749		shell	196
10164	750		shell first	196
10165	751		shield	196
10166	752		shingle	196
10167	753		ship	196
10168	754		ship shape	196
10169	755		ship type	196
10170	756		ship’s shell	196
10171	757		ship’s side	196
10172	758		shipbuilding yard	196
10173	759		shipyard	196
10174	760		shoe	196
10175	761		shore	196
10176	762		shovel	196
10177	763		shroud	196
10178	764		side	196
10179	765		side aisle	196
10180	766		side strake	196
10181	767		sill	196
10182	768		skeleton	196
10183	769		skylight	196
10184	770		slide (for carronade carriage)	196
10185	771		sling brace	196
10186	772		slingpiece	196
10187	773		slipway	196
10188	774		sloop	196
10189	775		sluice	196
10190	776		sole piece	196
10191	777		soleplate	196
10192	778		solid newel stair	196
10193	779		soulace	196
10194	780		sound box	196
10195	781		soundboard	196
10196	782		sounding board	196
10197	783		spade	196
10198	784		spar	196
10199	785		spiral stair	196
10200	786		spire	196
10201	787		spire mast	196
10202	788		spirketting	196
10203	789		spits	196
10204	790		splayed indent scarf	196
10205	791		splayed joint with part abutments	196
10206	792		splayed scarf-joint	196
10207	793		splayed-and-tabled	196
10208	794		spoon	196
10209	795		sprit	196
10210	796		sprit topsail yard	196
10211	797		spritsail yard	196
10212	798		spur (tie)	196
10213	799		square sterned ship	196
10214	800		stable	196
10215	801		stair	196
10216	802		stair tower	196
10217	803		staircase	196
10218	804		staircase turret	196
10219	805		stanchion	196
10220	806		starboard	196
10221	807		starboard side	196
10222	808		statue	196
10223	809		statue of the virgin mary	196
10224	810		stave	196
10225	811		stay	196
10226	812		stealer	196
10227	813		steeple	196
10228	814		steering gear	196
10229	815		steering oar	196
10230	816		steering wheel	196
10231	817		stem	196
10232	818		stem (fore)	196
10233	819		stem post (fore)	196
10234	820		stemson	196
10235	821		step	196
10236	822		step (in ladder)	196
10237	823		stern	196
10238	824		stern (aft)	196
10239	825		stern balcony	196
10240	826		stern outboard	196
10241	827		stern post (aft)	196
10242	828		stern transom	196
10243	829		stern wing	196
10244	830		stern-	196
10245	831		sternson	196
10246	832		stiffening	196
10247	833		stop log	196
10248	834		storehouse	196
10249	835		storey	196
10250	836		story	196
10251	837		strair	196
10252	838		strake	196
10253	839		stream	196
10254	840		string	196
10255	841		stringer	196
10256	842		strip	196
10257	843		structure	196
10258	844		strut	196
10259	845		stud	196
10260	846		stump	196
10261	847		stunsail boom	196
10262	848		summer	196
10263	849		summerbeam	196
10264	850		summerhouse	196
10265	851		superimposed tiebeam	196
10266	852		supporting beam	196
10267	853		supporting statue	196
10268	854		sweep	196
10269	855		swim-head	196
10270	856		synagogue	196
10271	857		table	196
10272	858		table-leg	196
10273	859		tabling	196
10274	860		taffrail	196
10275	861		taffrail figure	196
10276	862		taffrail medallion	196
10277	863		taffrail side figure	196
10278	864		tapered cheek	196
10279	865		template	196
10280	866		temple	196
10281	867		tenon	196
10282	868		terp	196
10283	869		thole	196
10284	870		three-decker	196
10285	871		threshold	196
10286	872		thwart	196
10287	873		thwart stanchion	196
10288	874		tie	196
10289	875		tie beam	196
10290	876		tie-beam support	196
10291	877		tier	196
10292	878		tile lath	196
10293	879		tiller	196
10294	880		timber framing	196
10295	881		timber stockade	196
10296	882		timbering	196
10297	883		tomb	196
10298	884		tool mark	196
10299	885		top rim	196
10300	886		topgallant royal mast	196
10301	887		tower	196
10302	888		tower mill	196
10303	889		town	196
10304	890		town hall	196
10305	891		town wall	196
10306	892		toys	196
10307	893		trader	196
10308	894		trading ship/vessel	196
10309	895		trailboard	196
10310	896		transept	196
10311	897		transom	196
10312	898		transom (bar)	196
10313	899		transom side figure	196
10314	900		transom timber	196
10315	901		transom(bar)	196
10316	902		transverse timber	196
10317	903		tray	196
10318	904		tread	196
10319	905		tree-stump	196
10320	906		trenail	196
10321	907		trench	196
10322	908		trestle tree	196
10323	909		trimmer	196
10324	910		trimming	196
10325	911		trimming rafter	196
10326	912		triptych	196
10327	913		truck (for gun cariage)	196
10328	914		trunk	196
10329	915		(tree-)trunk	196
10330	916		truss	196
10331	917		truss beam	196
10332	918		truss post	196
10333	919		truss tie	196
10334	920		tub	196
10335	921		tun	196
10336	922		underrafter	196
10337	923		unknown	196
10338	924		uphroe	196
10339	925		upper channel wale (ship of the line)	196
10340	926		upper deck	196
10341	927		upper door	196
10342	928		upright extension	196
10343	929		valley	196
10344	930		valley rafter	196
10345	931		vallum	196
10346	932		vat	196
10347	933		vault	196
10348	934		vehicle	196
10349	935		vestry	196
10350	936		vicarage	196
10351	937		villa (rustica)	196
10352	938		viola	196
10353	939		violin	196
10354	940		wainscot	196
10355	941		wainscoting	196
10356	942		wale	196
10357	943		wall	196
10358	944		wall piece	196
10359	945		wall plate	196
10360	946		wall post	196
10361	947		wane	196
10362	948		warehouse	196
10363	949		warship	196
10364	950		wash board	196
10365	951		wash strake	196
10366	952		waste pit	196
10367	953		watch	196
10368	954		watchtower	196
10369	955		water carrier	196
10370	956		water conduit	196
10371	957		water hoy	196
10372	958		water mill	196
10373	959		water pipe	196
10374	960		water well	196
10375	961		water wheel	196
10376	962		watercastle	196
10377	963		waterway	196
10378	964		wattle	196
10379	965		way	196
10380	966		weapon	196
10381	967		wedge	196
10382	968		weighhouse	196
10383	969		well	196
10384	970		wharf	196
10385	971		wheel	196
10386	972		whelp	196
10387	973		whip	196
10388	974		whipstaff	196
10389	975		winch	196
10390	976		windbrace	196
10391	977		windmill	196
10392	978		window	196
10393	979		window head	196
10394	980		wing transom	196
10395	981		wooden construction	196
10396	982		woodroll	196
10397	983		yacht	196
10398	984		yard	196
10399	985		yard cleat	196
10400	986		yawl	196
10401	987		yoke	196
10402	0		abbey	197
10403	1		abbey church	197
10404	2		abutment	197
10405	3		aft	197
10406	4		after deck	197
10407	5		aisle	197
10408	6		altar	197
10409	7		altarpiece	197
10410	8		amidships	197
10411	9		anchor	197
10412	10		anchor beam	197
10413	11		anchor bolster	197
10414	12		anchor stock	197
10415	13		annex	197
10416	14		arch	197
10417	15		arch brace	197
10418	16		arrow shaft	197
10419	17		ashlar piece	197
10420	18		ashlar post	197
10421	19		attic	197
10422	20		back (side)	197
10423	21		back aisle	197
10424	22		back room	197
10425	23		backstay	197
10426	24		bad bevel	197
10427	25		baffle(-board)	197
10428	26		bailey	197
10429	27		baldachin	197
10430	28		balustrade	197
10431	29		bar	197
10432	30		barge	197
10433	31		bark, barque	197
10434	32		barkentine	197
10435	33		barn	197
10436	34		barquetine	197
10437	35		barrack	197
10438	36		barracks	197
10439	37		barrel	197
10440	38		base	197
10441	39		bass	197
10442	40		bastion	197
10443	41		batten	197
10444	42		battening	197
10445	43		bay	197
10446	44		beam	197
10447	45		beam end	197
10448	46		bed	197
10449	47		bee block	197
10450	48		belaying	197
10451	49		belaying pin	197
10452	50		belaying rack	197
10453	51		belfry	197
10454	52		best room	197
10455	53		bibb	197
10456	54		bilge	197
10457	55		bilge gutter	197
10458	56		bilge stringer	197
10459	57		bilge water	197
10460	58		bin	197
10461	59		binder	197
10462	60		binding strake	197
10463	61		binnacle	197
10464	62		bitt	197
10465	63		black strake	197
10466	64		blade	197
10467	65		blanket chest	197
10468	66		block	197
10469	67		board	197
10470	68		boarding	197
10471	69		boaster	197
10472	70		boat	197
10473	71		boat boom	197
10474	72		bollard	197
10475	73		bolster	197
10476	74		bolt	197
10477	75		boom	197
10478	76		boom cradle	197
10479	77		boom crutch	197
10480	78		boomkin	197
10481	79		border joist	197
10482	80		bosse	197
10483	81		bottom	197
10484	82		bottom first	197
10485	83		bottom plank	197
10486	84		bottom strake	197
10487	85		bottom, floor	197
10488	86		bow	197
10489	87		bowl	197
10490	88		bowsprit	197
10491	89		bowsprit bees	197
10492	90		box	197
10493	91		box beam	197
10494	92		brace	197
10495	93		bracket	197
10496	94		brake	197
10497	95		branch	197
10498	96		branching	197
10499	97		breasthook, breast knee	197
10500	98		bridge	197
10501	99		bridge head	197
10502	100		bridging	197
10503	101		bridging joist	197
10504	102		brig	197
10505	103		brigantine	197
10506	104		brook	197
10507	105		buckler	197
10508	106		building	197
10509	107		bulkhead	197
10510	108		bulwark	197
10511	109		bumkin	197
10512	110		bumpkin	197
10513	111		burial pit	197
10514	112		buttress	197
10515	113		cabinet	197
10516	114		camber	197
10517	115		campanile	197
10518	116		campshed(ding)	197
10519	117		campsheeting	197
10520	118		campshot	197
10521	119		canal	197
10522	120		canalboat	197
10523	121		canoe	197
10524	122		canopy	197
10525	123		cap	197
10526	124		capping	197
10527	125		capstan	197
10528	126		cargo vessel	197
10529	127		carling	197
10530	128		carrack	197
10531	129		carriage	197
10532	130		carvel	197
10533	131		carvelbuilt	197
10534	132		case	197
10535	133		case furniture	197
10536	134		castel	197
10537	135		castellum	197
10538	136		castle	197
10539	137		cat	197
10540	138		cat block	197
10541	139		cat kevel	197
10542	140		cathead	197
10543	141		caulkage	197
10544	142		caulking	197
10545	143		caulking mallet	197
10546	144		caulking material	197
10547	145		caulking method	197
10548	146		caulking nail	197
10549	147		ceiling	197
10550	148		ceiling plank	197
10551	149		cellar	197
10552	150		cello	197
10553	151		cemetery	197
10554	152		central post	197
10555	153		central vertical post	197
10556	154		cesspit	197
10557	155		cesspool	197
10558	156		chain plate	197
10559	157		chair	197
10560	158		chairleg	197
10561	159		chamber	197
10562	160		chancel	197
10563	161		channel	197
10564	162		channel capping strip	197
10565	163		channel knee	197
10566	164		channel wale (frigate)	197
10567	165		chapel	197
10568	166		cheek	197
10569	167		chest	197
10570	168		chevet	197
10571	169		chine	197
10572	170		chine block	197
10573	171		chine cleat	197
10574	172		chine-block	197
10575	173		chock	197
10576	174		choir	197
10577	175		choir stall	197
10578	176		church	197
10579	177		churchtower	197
10580	178		churchyard	197
10581	179		city	197
10582	180		city hall	197
10583	181		clamp	197
10584	182		cleat	197
10585	183		clinker	197
10586	184		clinker built	197
10587	185		clock	197
10588	186		closet	197
10589	187		clout nail	197
10590	188		coach	197
10591	189		coaming	197
10592	190		coating	197
10593	191		cockloft	197
10594	192		coffin	197
10595	193		cog	197
10596	194		cog ship	197
10597	195		collar	197
10598	196		collar beam	197
10599	197		collarpurlin	197
10600	198		common joist	197
10601	199		common rafter	197
10602	200		common rafter roof	197
10603	201		console	197
10604	202		console table	197
10605	203		construction cleat	197
10606	204		constructional section	197
10607	205		contrabass	197
10608	206		convent	197
10609	207		corbel	197
10610	208		corbel piece	197
10611	209		corn-mill	197
10612	210		corner rafter	197
10613	211		cornice	197
10614	212		corona	197
10615	213		corridor	197
10616	214		counter	197
10617	215		counter brace	197
10618	216		counter timber	197
10619	217		country estate	197
10620	218		country house	197
10621	219		cove	197
10622	220		covering board	197
10623	221		crafts house	197
10624	222		crate	197
10625	223		creek	197
10626	224		creel	197
10627	225		crock	197
10628	226		cross beam	197
10629	227		cross brace	197
10630	228		cross tree	197
10631	229		crossbeam	197
10632	230		crossbridging	197
10633	231		crossbridgings	197
10634	232		crossing	197
10635	233		crossjack yard	197
10636	234		crown	197
10637	235		crown of beam	197
10638	236		crutch	197
10639	237		cuddy	197
10640	238		cult place	197
10641	239		culvert	197
10642	240		cupboard	197
10643	241		curved brace	197
10644	242		cutter	197
10645	243		cutting	197
10646	244		dais	197
10647	245		dam	197
10648	246		darby	197
10649	247		dead rise	197
10650	248		deadeye	197
10651	249		deadeye chain	197
10652	250		deadwood	197
10653	251		deal	197
10654	252		deck	197
10655	253		deckbeam, joist	197
10656	254		deckhouse	197
10657	255		deckplank	197
10658	256		defence wall	197
10659	257		defensive wall	197
10660	258		defensive work	197
10661	259		dike	197
10662	260		disc wheel	197
10663	261		dish	197
10664	262		ditch	197
10665	263		dollhouse	197
10666	264		dolphin	197
10667	265		door	197
10668	266		door frame	197
10669	267		door head	197
10670	268		door jamb	197
10671	269		door post	197
10672	270		doorstep	197
10673	271		doorway	197
10674	272		double bass	197
10675	273		dowel	197
10676	274		drainage sluice	197
10677	275		drawer	197
10678	276		driven pile	197
10679	277		dugout	197
10680	278		dull edge	197
10681	279		dutch bombé chest	197
10682	280		dwelling	197
10683	281		enclosure	197
10684	282		ensign staff	197
10685	283		entrance hall	197
10686	284		entrenchment	197
10687	285		euphroe	197
10688	286		excavation	197
10689	287		facade	197
10690	288		facing	197
10691	289		faintail	197
10692	290		falsework	197
10693	291		fantail	197
10694	292		farmhouse	197
10695	293		fashion frame	197
10696	294		fashion piece	197
10697	295		feature	197
10698	296		fender	197
10699	297		fife rail	197
10700	298		figurehead	197
10701	299		filler	197
10702	300		fireplace	197
10703	301		first futtock	197
10704	302		fish davit	197
10705	303		fish weir	197
10706	304		fish well	197
10707	305		fittings	197
10708	306		flank	197
10709	307		flanking aisle	197
10710	308		flat	197
10711	309		flat bottom [gb]	197
10712	310		flat bottomed vessel	197
10713	311		flat roof	197
10714	312		flat-bottomed vessel/boat	197
10715	313		flatboat	197
10716	314		floor	197
10717	315		floor ceiling	197
10718	316		floor frame	197
10719	317		floor joist	197
10720	318		floor joists	197
10721	319		floor timber (straight)	197
10722	320		floor timber (v-shaped)	197
10723	321		floor timber knee	197
10724	322		floortimber	197
10725	323		flour mill	197
10726	324		flush planking	197
10727	325		flute	197
10728	326		flute ship	197
10729	327		footboard	197
10730	328		fore channel	197
10731	329		fore lower mast	197
10732	330		fore top	197
10733	331		fore topgallant mast	197
10734	332		fore topgallant yard	197
10735	333		fore topmast	197
10736	334		fore topsail yard	197
10737	335		fore yard	197
10738	336		forecastle	197
10739	337		formwork	197
10740	338		fortification	197
10741	339		fortress	197
10742	340		forward deck	197
10743	341		foundation	197
10744	342		foundation hole	197
10745	343		foundation pile	197
10746	344		frame	197
10747	345		frame first	197
10748	346		frame spacing	197
10749	347		framed building	197
10750	348		fraterhouse	197
10751	349		freighter	197
10752	350		frieze	197
10753	351		frigate	197
10754	352		front facade	197
10755	353		furniture	197
10756	354		furring rafter	197
10757	355		futtock	197
10758	356		futtock rider	197
10759	357		gaff	197
10760	358		galeas	197
10761	359		galley	197
10762	360		galliot	197
10763	361		gallow	197
10764	362		gallows-field	197
10765	363		gallows-lee	197
10766	364		gangway	197
10767	365		garboard strake	197
10768	366		gatehouse	197
10769	367		gateway	197
10770	368		girder	197
10771	369		granary	197
10772	370		grating	197
10773	371		grave	197
10774	372		grave field	197
10775	373		graving piece	197
10776	374		guard post	197
10777	375		guitar	197
10778	376		gunwale	197
10779	377		hagboat	197
10780	378		half frame	197
10781	379		half timber work	197
10782	380		hall	197
10783	381		hallway	197
10784	382		hammerbeam truss	197
10785	383		handle	197
10786	384		handrail	197
10787	385		hanging truss	197
10788	386		hatch	197
10789	387		hatch coaming	197
10790	388		hauling	197
10791	389		haunche	197
10792	390		hawse hole	197
10793	391		hawse hole bolster	197
10794	392		hawse hole lining	197
10795	393		head	197
10796	394		head cheek	197
10797	395		head parapet	197
10798	396		head rail	197
10799	397		head timber	197
10800	398		header	197
10801	399		headledge	197
10802	400		heart	197
10803	401		hearth	197
10804	402		heel	197
10805	403		heel beam cap	197
10806	404		heeling	197
10807	405		helve	197
10808	406		herve	197
10809	407		hillock	197
10810	408		hip rafter	197
10811	409		hip roof	197
10812	410		hog	197
10813	411		hogged vessel	197
10814	412		hold	197
10815	413		hold rider	197
10816	414		hole	197
10817	415		homeward bounder	197
10818	416		hooker	197
10819	417		horreum	197
10820	418		hospital	197
10821	419		hound	197
10822	420		house	197
10823	421		house plan	197
10824	422		howker	197
10825	423		hub	197
10826	424		hull	197
10827	425		hull plank	197
10828	426		hull strake	197
10829	427		hut	197
10830	428		icon	197
10831	429		inboard	197
10832	430		inclined clamp	197
10833	431		infrastructure	197
10834	432		internal	197
10835	433		interweaving	197
10836	434		inwale	197
10837	435		inwale, stringer	197
10838	436		jack rafter	197
10839	437		jackstaff	197
10840	438		jamb	197
10841	439		jibboom	197
10842	440		jibboom saddle	197
10843	441		jig	197
10844	442		joint	197
10845	443		joist	197
10846	444		joisting	197
10847	445		jolly	197
10848	446		jolly boat	197
10849	447		keel	197
10850	448		keel beam	197
10851	449		keel plank	197
10852	450		keelson	197
10853	451		keep	197
10854	452		kevel	197
10855	453		kevel bitt	197
10856	454		kevel-head	197
10857	455		king plank	197
10858	456		king post	197
10859	457		kingpost	197
10860	458		knee	197
10861	459		knee of the head	197
10862	460		knife	197
10863	461		knighthead	197
10864	462		knoll	197
10865	463		knuckle frame	197
10866	464		knuckle framed ship	197
10867	465		l-shaped chine	197
10868	466		l-shaped covering board	197
10869	467		ladder	197
10870	468		ladder side	197
10871	469		lance	197
10872	470		land abutment	197
10873	471		landing	197
10874	472		landing place	197
10875	473		landing stage	197
10876	474		lap strake	197
10877	475		larboard	197
10878	476		larboard side	197
10879	477		lath	197
10880	478		latrine	197
10881	479		launch	197
10882	480		leaf	197
10883	481		ledge	197
10884	482		leg of a table	197
10885	483		lid	197
10886	484		lierne rib	197
10887	485		limber hole, watercourse	197
10888	486		limberpassage	197
10889	487		limbers	197
10890	488		line of flotation	197
10891	489		link beam	197
10892	490		lintel	197
10893	491		list	197
10894	492		lock	197
10895	493		locker	197
10896	494		loft	197
10897	495		log cabin construction	197
10898	496		long floating rule	197
10899	497		long tackle block	197
10900	498		long-case clock	197
10901	499		longboat	197
10902	500		longitudinal bracing	197
10903	501		longitudinal stiffener	197
10904	502		lookout tower	197
10905	503		lower façade	197
10906	504		lower front	197
10907	505		lute	197
10908	506		lyre	197
10909	507		main boom	197
10910	508		main channel	197
10911	509		main deck	197
10912	510		main lower mast	197
10913	511		main rail timber head	197
10914	512		main top	197
10915	513		main topgallant mast	197
10916	514		main topgallant yard	197
10917	515		main topmast	197
10918	516		main topsail yard	197
10919	517		main wale	197
10920	518		main yard	197
10921	519		manor	197
10922	520		manor house	197
10923	521		manorial farm	197
10924	522		mansion	197
10925	523		mast	197
10926	524		mast beam	197
10927	525		mast cleat	197
10928	526		mast fid	197
10929	527		mast frame	197
10930	528		mast heel	197
10931	529		mast step	197
10932	530		mast thwart	197
10933	531		mast truck	197
10934	532		mast woolding	197
10935	533		mat work	197
10936	534		merchant vessel	197
10937	535		mezzanine	197
10938	536		military camp	197
10939	537		mill	197
10940	538		mill wheel	197
10941	539		miscellaneous finds	197
10942	540		mizzen channel	197
10943	541		mizzen lower mast	197
10944	542		mizzen stool	197
10945	543		mizzen top	197
10946	544		mizzen topgallant mast	197
10947	545		mizzen topgallant yard	197
10948	546		mizzen topmast	197
10949	547		mizzen topsail yard	197
10950	548		mizzen yard	197
10951	549		moat	197
10952	550		modillion	197
10953	551		monastery	197
10954	552		mortice	197
10955	553		mortice-and-tenon	197
10956	554		mortise	197
10957	555		mortise-and-tenon (joint)	197
10958	556		mortise-and-tenon joint	197
10959	557		motte	197
10960	558		mould	197
10961	559		moulding	197
10962	560		mullion	197
10963	561		museum	197
10964	562		musical instrument	197
10965	563		nail	197
10966	564		nail (small)	197
10967	565		nail (wooden)	197
10968	566		nail dowel	197
10969	567		nail hole	197
10970	568		narrow boat	197
10971	569		nave	197
10972	570		newel (post)	197
10973	571		newel-post stair	197
10974	572		oar	197
10975	573		oar lock	197
10976	574		oar port	197
10977	575		organ	197
10978	576		ornament	197
10979	577		orphanage	197
10980	578		outer bailey	197
10981	579		outer hull	197
10982	580		outlet sluice	197
10983	581		outside ladder	197
10984	582		overlap	197
10985	583		packet, packet boat	197
10986	584		paddle	197
10987	585		paddle wheel	197
10988	586		painting	197
10989	587		palace	197
10990	588		palisade	197
10991	589		pane	197
10992	590		panel	197
10993	591		paneling	197
10994	592		panelling	197
10995	593		pantry	197
10996	594		parral	197
10997	595		parral rib	197
10998	596		parral truck	197
10999	597		parrel rib	197
11000	598		parsonage	197
11001	599		partition	197
11002	600		partition wall	197
11003	601		passage(way)	197
11004	602		passing brace	197
11005	603		pavillion	197
11006	604		peg	197
11007	605		philibert roof	197
11008	606		philibert truss	197
11009	607		piece of furniture	197
11010	608		pier	197
11011	609		pilaster	197
11012	610		pile	197
11013	611		piling	197
11014	612		pillar, stanchion	197
11015	613		pink	197
11016	614		pinnace	197
11017	615		pit	197
11018	616		plaiting	197
11019	617		plank	197
11020	618		planking	197
11021	619		planksheer	197
11022	620		plaque	197
11023	621		plate	197
11024	622		platform	197
11025	623		poop deck	197
11026	624		port	197
11027	625		port lid	197
11028	626		port side	197
11029	627		portal	197
11030	628		post	197
11031	629		post hole	197
11032	630		post-mill	197
11033	631		praam	197
11034	632		pram	197
11035	633		principal rafter	197
11036	634		prow block	197
11037	635		prow block (stem)	197
11038	636		prow block (stern)	197
11039	637		pulley	197
11040	638		pulpit	197
11041	639		pump	197
11042	640		pump dale	197
11043	641		puncheon	197
11044	642		punt	197
11045	643		punt-like vessel	197
11046	644		punting	197
11047	645		purlin	197
11048	646		purlin roof	197
11049	647		putlog	197
11050	648		quarter	197
11051	649		quarter bar	197
11052	650		quarter deck	197
11053	651		quarter gallery	197
11054	652		quay	197
11055	653		queenpost	197
11056	654		quiver	197
11057	655		quoin	197
11058	656		rabbet	197
11059	657		rafter	197
11060	658		rafter single roof	197
11061	659		rail timber	197
11062	660		railing	197
11063	661		raking	197
11064	662		ram	197
11065	663		rampart	197
11066	664		rear (side)	197
11067	665		rear part	197
11068	666		rebate	197
11069	667		redoubt	197
11070	668		refectory	197
11071	669		refuge hill	197
11072	670		refugium	197
11073	671		relief	197
11074	672		reredos	197
11075	673		residence	197
11076	674		retabel	197
11077	675		revetment	197
11078	676		rib	197
11079	677		ribband	197
11080	678		rider	197
11081	679		ridge	197
11082	680		ridge (pole/beam/piece)	197
11083	681		ridge (purlin)	197
11084	682		ridge purlin	197
11085	683		ridge turret	197
11086	684		ridge-beam	197
11087	685		ridgepiece	197
11088	686		rig	197
11089	687		rigging	197
11090	688		rising floor timber	197
11091	689		road	197
11092	690		rod	197
11093	691		rood gallery	197
11094	692		rood loft	197
11095	693		rood screen	197
11096	694		roof	197
11097	695		roof boarding	197
11098	696		roof construction	197
11099	697		roof framing	197
11100	698		roof hip	197
11101	699		roof plate	197
11102	700		roof timber	197
11103	701		roof truss(es)	197
11104	702		roof turret	197
11105	703		roof-beam	197
11106	704		rooftop	197
11107	705		room	197
11108	706		root	197
11109	707		root system	197
11110	708		round bottom	197
11111	709		round bottomed vessel	197
11112	710		round house	197
11113	711		roundup	197
11114	712		rowing	197
11115	713		rowlock	197
11116	714		rudder	197
11117	715		running-board	197
11118	716		rustic work	197
11119	717		rustication	197
11120	718		sacristy	197
11121	719		sailing gear	197
11122	720		saint andrew's cross	197
11123	721		sanctuary	197
11124	722		sap wood	197
11125	723		scabbard	197
11126	724		scantling	197
11127	725		scarf	197
11128	726		scarf joint	197
11129	727		school	197
11130	728		school building	197
11131	729		scissors brace	197
11132	730		sconse	197
11133	731		scoop	197
11134	732		scull	197
11135	733		sculpture	197
11136	734		scupper	197
11137	735		seam	197
11138	736		sentry	197
11139	737		set of frames	197
11140	738		settlement	197
11141	739		shape	197
11142	740		sheat	197
11143	741		sheathing	197
11144	742		shed	197
11145	743		sheer	197
11146	744		sheer rail	197
11147	745		sheers	197
11148	746		sheet piling	197
11149	747		sheeting	197
11150	748		sheeting board	197
11151	749		shell	197
11152	750		shell first	197
11153	751		shield	197
11154	752		shingle	197
11155	753		ship	197
11156	754		ship shape	197
11157	755		ship type	197
11158	756		ship’s shell	197
11159	757		ship’s side	197
11160	758		shipbuilding yard	197
11161	759		shipyard	197
11162	760		shoe	197
11163	761		shore	197
11164	762		shovel	197
11165	763		shroud	197
11166	764		side	197
11167	765		side aisle	197
11168	766		side strake	197
11169	767		sill	197
11170	768		skeleton	197
11171	769		skylight	197
11172	770		slide (for carronade carriage)	197
11173	771		sling brace	197
11174	772		slingpiece	197
11175	773		slipway	197
11176	774		sloop	197
11177	775		sluice	197
11178	776		sole piece	197
11179	777		soleplate	197
11180	778		solid newel stair	197
11181	779		soulace	197
11182	780		sound box	197
11183	781		soundboard	197
11184	782		sounding board	197
11185	783		spade	197
11186	784		spar	197
11187	785		spiral stair	197
11188	786		spire	197
11189	787		spire mast	197
11190	788		spirketting	197
11191	789		spits	197
11192	790		splayed indent scarf	197
11193	791		splayed joint with part abutments	197
11194	792		splayed scarf-joint	197
11195	793		splayed-and-tabled	197
11196	794		spoon	197
11197	795		sprit	197
11198	796		sprit topsail yard	197
11199	797		spritsail yard	197
11200	798		spur (tie)	197
11201	799		square sterned ship	197
11202	800		stable	197
11203	801		stair	197
11204	802		stair tower	197
11205	803		staircase	197
11206	804		staircase turret	197
11207	805		stanchion	197
11208	806		starboard	197
11209	807		starboard side	197
11210	808		statue	197
11211	809		statue of the virgin mary	197
11212	810		stave	197
11213	811		stay	197
11214	812		stealer	197
11215	813		steeple	197
11216	814		steering gear	197
11217	815		steering oar	197
11218	816		steering wheel	197
11219	817		stem	197
11220	818		stem (fore)	197
11221	819		stem post (fore)	197
11222	820		stemson	197
11223	821		step	197
11224	822		step (in ladder)	197
11225	823		stern	197
11226	824		stern (aft)	197
11227	825		stern balcony	197
11228	826		stern outboard	197
11229	827		stern post (aft)	197
11230	828		stern transom	197
11231	829		stern wing	197
11232	830		stern-	197
11233	831		sternson	197
11234	832		stiffening	197
11235	833		stop log	197
11236	834		storehouse	197
11237	835		storey	197
11238	836		story	197
11239	837		strair	197
11240	838		strake	197
11241	839		stream	197
11242	840		string	197
11243	841		stringer	197
11244	842		strip	197
11245	843		structure	197
11246	844		strut	197
11247	845		stud	197
11248	846		stump	197
11249	847		stunsail boom	197
11250	848		summer	197
11251	849		summerbeam	197
11252	850		summerhouse	197
11253	851		superimposed tiebeam	197
11254	852		supporting beam	197
11255	853		supporting statue	197
11256	854		sweep	197
11257	855		swim-head	197
11258	856		synagogue	197
11259	857		table	197
11260	858		table-leg	197
11261	859		tabling	197
11262	860		taffrail	197
11263	861		taffrail figure	197
11264	862		taffrail medallion	197
11265	863		taffrail side figure	197
11266	864		tapered cheek	197
11267	865		template	197
11268	866		temple	197
11269	867		tenon	197
11270	868		terp	197
11271	869		thole	197
11272	870		three-decker	197
11273	871		threshold	197
11274	872		thwart	197
11275	873		thwart stanchion	197
11276	874		tie	197
11277	875		tie beam	197
11278	876		tie-beam support	197
11279	877		tier	197
11280	878		tile lath	197
11281	879		tiller	197
11282	880		timber framing	197
11283	881		timber stockade	197
11284	882		timbering	197
11285	883		tomb	197
11286	884		tool mark	197
11287	885		top rim	197
11288	886		topgallant royal mast	197
11289	887		tower	197
11290	888		tower mill	197
11291	889		town	197
11292	890		town hall	197
11293	891		town wall	197
11294	892		toys	197
11295	893		trader	197
11296	894		trading ship/vessel	197
11297	895		trailboard	197
11298	896		transept	197
11299	897		transom	197
11300	898		transom (bar)	197
11301	899		transom side figure	197
11302	900		transom timber	197
11303	901		transom(bar)	197
11304	902		transverse timber	197
11305	903		tray	197
11306	904		tread	197
11307	905		tree-stump	197
11308	906		trenail	197
11309	907		trench	197
11310	908		trestle tree	197
11311	909		trimmer	197
11312	910		trimming	197
11313	911		trimming rafter	197
11314	912		triptych	197
11315	913		truck (for gun cariage)	197
11316	914		trunk	197
11317	915		(tree-)trunk	197
11318	916		truss	197
11319	917		truss beam	197
11320	918		truss post	197
11321	919		truss tie	197
11322	920		tub	197
11323	921		tun	197
11324	922		underrafter	197
11325	923		unknown	197
11326	924		uphroe	197
11327	925		upper channel wale (ship of the line)	197
11328	926		upper deck	197
11329	927		upper door	197
11330	928		upright extension	197
11331	929		valley	197
11332	930		valley rafter	197
11333	931		vallum	197
11334	932		vat	197
11335	933		vault	197
11336	934		vehicle	197
11337	935		vestry	197
11338	936		vicarage	197
11339	937		villa (rustica)	197
11340	938		viola	197
11341	939		violin	197
11342	940		wainscot	197
11343	941		wainscoting	197
11344	942		wale	197
11345	943		wall	197
11346	944		wall piece	197
11347	945		wall plate	197
11348	946		wall post	197
11349	947		wane	197
11350	948		warehouse	197
11351	949		warship	197
11352	950		wash board	197
11353	951		wash strake	197
11354	952		waste pit	197
11355	953		watch	197
11356	954		watchtower	197
11357	955		water carrier	197
11358	956		water conduit	197
11359	957		water hoy	197
11360	958		water mill	197
11361	959		water pipe	197
11362	960		water well	197
11363	961		water wheel	197
11364	962		watercastle	197
11365	963		waterway	197
11366	964		wattle	197
11367	965		way	197
11368	966		weapon	197
11369	967		wedge	197
11370	968		weighhouse	197
11371	969		well	197
11372	970		wharf	197
11373	971		wheel	197
11374	972		whelp	197
11375	973		whip	197
11376	974		whipstaff	197
11377	975		winch	197
11378	976		windbrace	197
11379	977		windmill	197
11380	978		window	197
11381	979		window head	197
11382	980		wing transom	197
11383	981		wooden construction	197
11384	982		woodroll	197
11385	983		yacht	197
11386	984		yard	197
11387	985		yard cleat	197
11388	986		yawl	197
11389	987		yoke	197
\.


--
-- Data for Name: curationstatus; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.curationstatus (id, createtime, label, authenticateduser_id, datasetversion_id) FROM stdin;
\.


--
-- Data for Name: customfieldmap; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.customfieldmap (id, sourcedatasetfield, sourcetemplate, targetdatasetfield) FROM stdin;
\.


--
-- Data for Name: customquestion; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.customquestion (id, displayorder, hidden, questionstring, questiontype, required, guestbook_id) FROM stdin;
\.


--
-- Data for Name: customquestionresponse; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.customquestionresponse (id, response, customquestion_id, guestbookresponse_id) FROM stdin;
\.


--
-- Data for Name: customquestionvalue; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.customquestionvalue (id, displayorder, valuestring, customquestion_id) FROM stdin;
\.


--
-- Data for Name: customzipservicerequest; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.customzipservicerequest (key, storagelocation, filename, issuetime) FROM stdin;
\.


--
-- Data for Name: datafile; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datafile (id, checksumtype, checksumvalue, contenttype, filesize, ingeststatus, previousdatafileid, prov_entityname, restricted, rootdatafileid, embargo_id, retention_id) FROM stdin;
5	SHA1	ab7c83f0ac10f4ae423a44630c4f17397a48a236	image/jpeg	242994	A	\N	\N	f	-1	\N	\N
7	SHA1	fc55c9568e63c1399d3fc1370c888a54a9b65ca3	image/jpeg	65025	A	\N	\N	f	-1	\N	\N
9	SHA1	ce336eefc302ac8f5a447a67ea4d894e9960a589	image/jpeg	1240972	A	\N	\N	f	-1	\N	\N
13	SHA1	d8a0333ee15f7a7fd022dea3aaac61805e548051	image/jpeg	129557	A	\N	\N	f	-1	1	\N
12	SHA1	92f70ba9ca6004975be973bd23041213f41cfb82	image/jpeg	287880	A	\N	\N	t	-1	\N	\N
14	SHA1	abc07a9bc0614c418b7d1dec0eb49aeaed797bf3	image/jpeg	295265	A	\N	\N	f	-1	\N	1
16	SHA1	d8a0333ee15f7a7fd022dea3aaac61805e548051	image/jpeg	129557	A	\N	\N	f	-1	\N	\N
18	SHA1	92f70ba9ca6004975be973bd23041213f41cfb82	image/jpeg	287880	A	\N	\N	f	-1	\N	\N
17	SHA1	abc07a9bc0614c418b7d1dec0eb49aeaed797bf3	image/jpeg	295265	A	\N	\N	t	-1	\N	\N
\.


--
-- Data for Name: datafilecategory; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datafilecategory (id, name, dataset_id) FROM stdin;
\.


--
-- Data for Name: datafiletag; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datafiletag (id, type, datafile_id) FROM stdin;
\.


--
-- Data for Name: dataset; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.dataset (id, datasetfilecountlimit, embargocitationdate, externallabelsetname, fileaccessrequest, guestbookatrequest, harvestidentifier, lastexporttime, metadatalanguage, pidgeneratorspecs, storagedriver, usegenericthumbnail, citationdatedatasetfieldtype_id, datasettype_id, harvestingclient_id, template_id, guestbook_id, thumbnailfile_id) FROM stdin;
4	\N	\N	\N	t	\N	\N	2026-03-05 03:16:21.816	\N	{"protocol":"doi","authority":"10.5072","shoulder":"DVNL/","separator":"/"}	\N	f	\N	1	\N	\N	\N	5
6	\N	\N	\N	t	\N	\N	2026-03-05 03:19:17.385	\N	{"protocol":"doi","authority":"10.5072","shoulder":"DVNL/","separator":"/"}	\N	f	\N	1	\N	\N	\N	7
8	\N	\N	\N	t	\N	\N	2026-03-05 03:22:14.057	\N	{"protocol":"doi","authority":"10.5072","shoulder":"DVNL/","separator":"/"}	\N	f	\N	1	\N	\N	\N	9
11	\N	2026-06-11 00:00:00	\N	t	\N	\N	2026-06-10 10:29:11.957	\N	{"protocol":"doi","authority":"10.5072","shoulder":"DVNL/","separator":"/"}	\N	f	\N	1	\N	\N	\N	\N
10	\N	\N	\N	t	\N	\N	2026-06-10 12:28:30.759	\N	{"protocol":"doi","authority":"10.5072","shoulder":"DVNL/","separator":"/"}	\N	f	\N	1	\N	\N	\N	\N
15	\N	\N	\N	t	\N	\N	2026-06-10 12:54:11.693	\N	{"protocol":"doi","authority":"10.5072","shoulder":"DVNL/","separator":"/"}	\N	f	\N	1	\N	\N	\N	16
\.


--
-- Data for Name: datasetexternalcitations; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datasetexternalcitations (id, citedbyurl, dataset_id) FROM stdin;
\.


--
-- Data for Name: datasetfield; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datasetfield (id, datasetfieldtype_id, datasetversion_id, parentdatasetfieldcompoundvalue_id, template_id) FROM stdin;
1	17	1	\N	\N
2	8	1	\N	\N
5	13	1	\N	\N
6	15	\N	5	\N
7	1	1	\N	\N
8	16	\N	5	\N
9	9	\N	2	\N
12	18	\N	1	\N
13	14	\N	5	\N
14	10	\N	2	\N
16	20	1	\N	\N
17	60	1	\N	\N
19	59	1	\N	\N
20	180	1	\N	\N
21	179	1	\N	\N
22	177	1	\N	\N
23	178	1	\N	\N
24	8	2	\N	\N
27	13	2	\N	\N
28	17	2	\N	\N
29	59	2	\N	\N
31	15	\N	9	\N
34	16	\N	9	\N
35	1	2	\N	\N
36	10	\N	6	\N
37	60	2	\N	\N
38	20	2	\N	\N
39	18	\N	10	\N
40	9	\N	6	\N
42	14	\N	9	\N
43	177	2	\N	\N
44	180	2	\N	\N
45	178	2	\N	\N
46	179	2	\N	\N
47	17	3	\N	\N
50	13	3	\N	\N
51	8	3	\N	\N
53	59	3	\N	\N
54	60	3	\N	\N
55	14	\N	14	\N
57	1	3	\N	\N
59	18	\N	11	\N
60	16	\N	14	\N
61	10	\N	15	\N
62	20	3	\N	\N
64	15	\N	14	\N
65	9	\N	15	\N
66	179	3	\N	\N
67	178	3	\N	\N
68	180	3	\N	\N
69	177	3	\N	\N
70	8	4	\N	\N
72	13	4	\N	\N
73	17	4	\N	\N
76	9	\N	16	\N
77	16	\N	18	\N
78	10	\N	16	\N
79	18	\N	19	\N
80	60	4	\N	\N
83	1	4	\N	\N
84	20	4	\N	\N
85	14	\N	18	\N
86	59	4	\N	\N
87	15	\N	18	\N
89	8	5	\N	\N
91	17	5	\N	\N
92	13	5	\N	\N
95	59	5	\N	\N
96	9	\N	21	\N
97	20	5	\N	\N
99	60	5	\N	\N
100	1	5	\N	\N
101	15	\N	24	\N
103	16	\N	24	\N
104	18	\N	23	\N
105	14	\N	24	\N
107	10	\N	21	\N
108	180	5	\N	\N
109	178	5	\N	\N
110	179	5	\N	\N
111	177	5	\N	\N
112	178	4	\N	\N
113	177	4	\N	\N
114	180	4	\N	\N
115	179	4	\N	\N
116	8	6	\N	\N
119	17	6	\N	\N
120	13	6	\N	\N
121	1	6	\N	\N
122	16	\N	30	\N
123	9	\N	26	\N
124	20	6	\N	\N
125	10	\N	26	\N
126	18	\N	29	\N
130	59	6	\N	\N
132	14	\N	30	\N
133	60	6	\N	\N
134	15	\N	30	\N
135	180	6	\N	\N
136	177	6	\N	\N
137	178	6	\N	\N
138	179	6	\N	\N
\.


--
-- Data for Name: datasetfield_controlledvocabularyvalue; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datasetfield_controlledvocabularyvalue (datasetfield_id, controlledvocabularyvalues_id) FROM stdin;
16	4
38	7
62	3
84	3
97	3
124	3
\.


--
-- Data for Name: datasetfieldcompoundvalue; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datasetfieldcompoundvalue (id, displayorder, parentdatasetfield_id) FROM stdin;
1	0	1
2	0	2
5	0	5
6	0	24
9	0	27
10	0	28
11	0	47
14	0	50
15	0	51
16	0	70
18	0	72
19	0	73
21	0	89
23	0	91
24	0	92
26	0	116
29	0	119
30	0	120
\.


--
-- Data for Name: datasetfielddefaultvalue; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datasetfielddefaultvalue (id, displayorder, strvalue, datasetfield_id, defaultvalueset_id, parentdatasetfielddefaultvalue_id) FROM stdin;
\.


--
-- Data for Name: datasetfieldtype; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datasetfieldtype (id, advancedsearchfieldtype, allowcontrolledvocabulary, allowmultiples, description, displayformat, displayoncreate, displayorder, facetable, fieldtype, name, required, title, uri, validationformat, watermark, metadatablock_id, parentdatasetfieldtype_id) FROM stdin;
72	f	f	f	The name of software used to generate the Dataset	#VALUE	t	71	f	TEXT	softwareName	f	Name	\N	\N		1	71
111	t	f	f	Percentage of sample members who provided information.		t	19	t	TEXTBOX	responseRate	f	Response Rate	\N	\N		3	\N
1	t	f	f	The main title of the Dataset		t	0	f	TEXT	title	t	Title	http://purl.org/dc/terms/title	\N		1	\N
2	f	f	f	A secondary title that amplifies or states certain limitations on the main title		t	1	f	TEXT	subtitle	f	Subtitle	\N	\N		1	\N
3	f	f	t	Either 1) a title commonly used to refer to the Dataset or 2) an abbreviation of the main title		t	2	f	TEXT	alternativeTitle	f	Alternative Title	http://purl.org/dc/terms/alternative	\N		1	\N
4	f	f	f	Another URL where one can view or access the data in the Dataset, e.g. a project or personal webpage	<a href="#VALUE" target="_blank">#VALUE</a>	t	3	f	URL	alternativeURL	f	Alternative URL	https://schema.org/distribution	\N	https://	1	\N
5	f	f	t	Another unique identifier for the Dataset (e.g. producer's or another repository's identifier)	:	t	4	f	NONE	otherId	f	Other Identifier	\N	\N		1	\N
6	f	f	f	The name of the agency that generated the other identifier	#VALUE	t	5	f	TEXT	otherIdAgency	f	Agency	\N	\N		1	5
7	f	f	f	Another identifier uniquely identifies the Dataset	#VALUE	t	6	f	TEXT	otherIdValue	f	Identifier	\N	\N		1	5
8	f	f	t	The entity, e.g. a person or organization, that created the Dataset		t	7	f	NONE	author	t	Author	http://purl.org/dc/terms/creator	\N		1	\N
9	t	f	f	The name of the author, such as the person's name or the name of an organization	#VALUE	t	8	t	TEXT	authorName	t	Name	\N	\N	1) Family Name, Given Name or 2) Organization XYZ	1	8
10	t	f	f	The name of the entity affiliated with the author, e.g. an organization's name	(#VALUE)	t	9	t	TEXT	authorAffiliation	f	Affiliation	\N	\N	Organization XYZ	1	8
11	f	t	f	The type of identifier that uniquely identifies the author (e.g. ORCID, ISNI)	- #VALUE:	t	10	f	TEXT	authorIdentifierScheme	f	Identifier Type	http://purl.org/spar/datacite/AgentIdentifierScheme	\N		1	8
12	f	f	f	Uniquely identifies the author when paired with an identifier type	#VALUE	t	11	f	TEXT	authorIdentifier	f	Identifier	http://purl.org/spar/datacite/AgentIdentifier	\N		1	8
13	f	f	t	The entity, e.g. a person or organization, that users of the Dataset can contact with questions		t	12	f	NONE	datasetContact	t	Point of Contact	\N	\N		1	\N
14	f	f	f	The name of the point of contact, e.g. the person's name or the name of an organization	#VALUE	t	13	f	TEXT	datasetContactName	f	Name	\N	\N	1) FamilyName, GivenName or 2) Organization	1	13
15	f	f	f	The name of the entity affiliated with the point of contact, e.g. an organization's name	(#VALUE)	t	14	f	TEXT	datasetContactAffiliation	f	Affiliation	\N	\N	Organization XYZ	1	13
16	f	f	f	The point of contact's email address	#EMAIL	t	15	f	EMAIL	datasetContactEmail	t	E-mail	\N	\N	name@email.xyz	1	13
17	f	f	t	A summary describing the purpose, nature, and scope of the Dataset		t	16	f	NONE	dsDescription	t	Description	\N	\N		1	\N
18	t	f	f	A summary describing the purpose, nature, and scope of the Dataset	#VALUE	t	17	f	TEXTBOX	dsDescriptionValue	t	Text	\N	\N		1	17
19	f	f	f	The date when the description was added to the Dataset. If the Dataset contains more than one description, e.g. the data producer supplied one description and the data repository supplied another, this date is used to distinguish between the descriptions	(#VALUE)	t	18	f	DATE	dsDescriptionDate	f	Date	\N	\N	YYYY-MM-DD	1	17
20	t	t	t	The area of study relevant to the Dataset		t	19	t	TEXT	subject	t	Subject	http://purl.org/dc/terms/subject	\N		1	\N
21	f	f	t	A key term that describes an important aspect of the Dataset and information about any controlled vocabulary used		t	20	f	NONE	keyword	f	Keyword	\N	\N		1	\N
22	t	f	f	A key term that describes important aspects of the Dataset	#VALUE	t	21	t	TEXT	keywordValue	f	Term	\N	\N		1	21
23	f	f	f	A URI that points to the web presence of the Keyword Term	<a href="#VALUE" target="_blank" rel="noopener">#VALUE</a>	t	22	f	URL	keywordTermURI	f	Term URI	\N	\N	https://	1	21
24	f	f	f	The controlled vocabulary used for the keyword term (e.g. LCSH, MeSH)	(#VALUE)	t	23	f	TEXT	keywordVocabulary	f	Controlled Vocabulary Name	\N	\N		1	21
25	f	f	f	The URL where one can access information about the term's controlled vocabulary	<a href="#VALUE" target="_blank" rel="noopener">#VALUE</a>	t	24	f	URL	keywordVocabularyURI	f	Controlled Vocabulary URL	\N	\N	https://	1	21
26	f	f	t	Indicates a broad, important topic or subject that the Dataset covers and information about any controlled vocabulary used		t	25	f	NONE	topicClassification	f	Topic Classification	\N	\N		1	\N
27	t	f	f	A topic or subject term	#VALUE	t	26	t	TEXT	topicClassValue	f	Term	\N	\N		1	26
28	f	f	f	The controlled vocabulary used for the keyword term (e.g. LCSH, MeSH)	(#VALUE)	t	27	f	TEXT	topicClassVocab	f	Controlled Vocabulary Name	\N	\N		1	26
66	f	f	f	The date when the data collection ended	#NAME: #VALUE	t	65	f	DATE	dateOfCollectionEnd	f	End Date	\N	\N	YYYY-MM-DD	1	64
29	f	f	f	The URL where one can access information about the term's controlled vocabulary	<a href="#VALUE" target="_blank" rel="noopener">#VALUE</a>	t	28	f	URL	topicClassVocabURI	f	Controlled Vocabulary URL	\N	\N	https://	1	26
30	f	f	t	The article or report that uses the data in the Dataset. The full list of related publications will be displayed on the metadata tab		t	29	f	NONE	publication	f	Related Publication	http://purl.org/dc/terms/isReferencedBy	\N		1	\N
31	t	t	f	The nature of the relationship between this Dataset and the related publication	#VALUE:	t	30	f	TEXT	publicationRelationType	f	Relation Type	http://datacite.org/schema/kernel-4/simpleTypes#relationType	\N		1	30
32	t	f	f	The full bibliographic citation for the related publication	#VALUE	t	31	f	TEXTBOX	publicationCitation	f	Citation	http://purl.org/dc/terms/bibliographicCitation	\N		1	30
33	t	t	f	The type of identifier that uniquely identifies a related publication	#VALUE:	t	32	f	TEXT	publicationIDType	f	Identifier Type	http://purl.org/spar/datacite/ResourceIdentifierScheme	\N		1	30
34	t	f	f	The identifier for a related publication	#VALUE	t	33	f	TEXT	publicationIDNumber	f	Identifier	http://purl.org/spar/datacite/ResourceIdentifier	\N		1	30
35	f	f	f	The URL form of the identifier entered in the Identifier field, e.g. the DOI URL if a DOI was entered in the Identifier field. Used to display what was entered in the ID Type and ID Number fields as a link. If what was entered in the Identifier field has no URL form, the URL of the publication webpage is used, e.g. a journal article webpage	<a href="#VALUE" target="_blank" rel="noopener">#VALUE</a>	t	34	f	URL	publicationURL	f	URL	https://schema.org/distribution	\N	https://	1	30
36	f	f	f	Additional information about the Dataset		t	35	f	TEXTBOX	notesText	f	Notes	\N	\N		1	\N
37	t	t	t	A language that the Dataset's files is written in		t	36	t	TEXT	language	f	Language	http://purl.org/dc/terms/language	\N		1	\N
38	f	f	t	The entity, such a person or organization, managing the finances or other administrative processes involved in the creation of the Dataset		t	37	f	NONE	producer	f	Producer	\N	\N		1	\N
39	t	f	f	The name of the entity, e.g. the person's name or the name of an organization	#VALUE	t	38	t	TEXT	producerName	t	Name	\N	\N	1) FamilyName, GivenName or 2) Organization	1	38
40	f	f	f	The name of the entity affiliated with the producer, e.g. an organization's name	(#VALUE)	t	39	f	TEXT	producerAffiliation	f	Affiliation	\N	\N	Organization XYZ	1	38
41	f	f	f	The producer's abbreviated name (e.g. IQSS, ICPSR)	(#VALUE)	t	40	f	TEXT	producerAbbreviation	f	Abbreviated Name	\N	\N		1	38
42	f	f	f	The URL of the producer's website	<a href="#VALUE" target="_blank" rel="noopener">#VALUE</a>	t	41	f	URL	producerURL	f	URL	\N	\N	https://	1	38
43	f	f	f	The URL of the producer's logo	<img src="#VALUE" alt="#NAME" class="metadata-logo"/><br/>	t	42	f	URL	producerLogoURL	f	Logo URL	\N	\N	https://	1	38
44	t	f	f	The date when the data were produced (not distributed, published, or archived)		t	43	t	DATE	productionDate	f	Production Date	\N	\N	YYYY-MM-DD	1	\N
45	t	f	t	The location where the data and any related materials were produced or collected		t	44	t	TEXT	productionPlace	f	Production Location	\N	\N		1	\N
46	f	f	t	The entity, such as a person or organization, responsible for collecting, managing, or otherwise contributing to the development of the Dataset	:	t	45	f	NONE	contributor	f	Contributor	http://purl.org/dc/terms/contributor	\N		1	\N
47	t	t	f	Indicates the type of contribution made to the dataset	#VALUE	t	46	t	TEXT	contributorType	f	Type	\N	\N		1	46
48	t	f	f	The name of the contributor, e.g. the person's name or the name of an organization	#VALUE	t	47	t	TEXT	contributorName	f	Name	\N	\N	1) FamilyName, GivenName or 2) Organization	1	46
49	f	f	t	Information about the Dataset's financial support	:	t	48	f	NONE	grantNumber	f	Funding Information	https://schema.org/sponsor	\N		1	\N
50	t	f	f	The agency that provided financial support for the Dataset	#VALUE	t	49	t	TEXT	grantNumberAgency	f	Agency	\N	\N	Organization XYZ	1	49
51	t	f	f	The grant identifier or contract identifier of the agency that provided financial support for the Dataset	#VALUE	t	50	t	TEXT	grantNumberValue	f	Identifier	\N	\N		1	49
52	f	f	t	The entity, such as a person or organization, designated to generate copies of the Dataset, including any editions or revisions		t	51	f	NONE	distributor	f	Distributor	\N	\N		1	\N
53	t	f	f	The name of the entity, e.g. the person's name or the name of an organization	#VALUE	t	52	t	TEXT	distributorName	f	Name	\N	\N	1) FamilyName, GivenName or 2) Organization	1	52
54	f	f	f	The name of the entity affiliated with the distributor, e.g. an organization's name	(#VALUE)	t	53	f	TEXT	distributorAffiliation	f	Affiliation	\N	\N	Organization XYZ	1	52
55	f	f	f	The distributor's abbreviated name (e.g. IQSS, ICPSR)	(#VALUE)	t	54	f	TEXT	distributorAbbreviation	f	Abbreviated Name	\N	\N		1	52
56	f	f	f	The URL of the distributor's webpage	<a href="#VALUE" target="_blank" rel="noopener">#VALUE</a>	t	55	f	URL	distributorURL	f	URL	\N	\N	https://	1	52
57	f	f	f	The URL of the distributor's logo image, used to show the image on the Dataset's page	<img src="#VALUE" alt="#NAME" class="metadata-logo"/><br/>	t	56	f	URL	distributorLogoURL	f	Logo URL	\N	\N	https://	1	52
58	t	f	f	The date when the Dataset was made available for distribution/presentation		t	57	t	DATE	distributionDate	f	Distribution Date	\N	\N	YYYY-MM-DD	1	\N
59	f	f	f	The entity, such as a person or organization, that deposited the Dataset in the repository		t	58	f	TEXT	depositor	f	Depositor	\N	\N	1) FamilyName, GivenName or 2) Organization	1	\N
60	f	f	f	The date when the Dataset was deposited into the repository		t	59	t	DATE	dateOfDeposit	f	Deposit Date	http://purl.org/dc/terms/dateSubmitted	\N	YYYY-MM-DD	1	\N
61	f	f	t	The time period that the data refer to. Also known as span. This is the time period covered by the data, not the dates of coding, collecting data, or making documents machine-readable	;	t	60	f	NONE	timePeriodCovered	f	Time Period	https://schema.org/temporalCoverage	\N		1	\N
62	t	f	f	The start date of the time period that the data refer to	#NAME: #VALUE	t	61	t	DATE	timePeriodCoveredStart	f	Start Date	\N	\N	YYYY-MM-DD	1	61
63	t	f	f	The end date of the time period that the data refer to	#NAME: #VALUE	t	62	t	DATE	timePeriodCoveredEnd	f	End Date	\N	\N	YYYY-MM-DD	1	61
64	f	f	t	The dates when the data were collected or generated	;	t	63	f	NONE	dateOfCollection	f	Date of Collection	\N	\N		1	\N
65	f	f	f	The date when the data collection started	#NAME: #VALUE	t	64	f	DATE	dateOfCollectionStart	f	Start Date	\N	\N	YYYY-MM-DD	1	64
67	t	f	t	The type of data included in the files (e.g. survey data, clinical data, or machine-readable text)		t	66	t	TEXT	kindOfData	f	Data Type	http://rdf-vocabulary.ddialliance.org/discovery#kindOfData	\N		1	\N
68	f	f	t	Information about the dataset series to which the Dataset belong	:	t	67	f	NONE	series	f	Series	\N	\N		1	\N
69	t	f	f	The name of the dataset series	#VALUE	t	68	t	TEXT	seriesName	f	Name	\N	\N		1	68
70	f	f	f	Can include 1) a history of the series and 2) a summary of features that apply to the series	#VALUE	t	69	f	TEXTBOX	seriesInformation	f	Information	\N	\N		1	68
71	f	f	t	Information about the software used to generate the Dataset	,	t	70	f	NONE	software	f	Software	https://www.w3.org/TR/prov-o/#wasGeneratedBy	\N		1	\N
73	f	f	f	The version of the software used to generate the Dataset, e.g. 4.11	#NAME: #VALUE	t	72	f	TEXT	softwareVersion	f	Version	\N	\N		1	71
74	f	f	t	Information, such as a persistent ID or citation, about the material related to the Dataset, such as appendices or sampling information available outside of the Dataset		t	73	f	TEXTBOX	relatedMaterial	f	Related Material	\N	\N		1	\N
75	f	f	t	Information, such as a persistent ID or citation, about a related dataset, such as previous research on the Dataset's subject		t	74	f	TEXTBOX	relatedDatasets	f	Related Dataset	http://purl.org/dc/terms/relation	\N		1	\N
76	f	f	t	Information, such as a persistent ID or citation, about another type of resource that provides background or supporting material to the Dataset		t	75	f	TEXT	otherReferences	f	Other Reference	http://purl.org/dc/terms/references	\N		1	\N
77	f	f	t	Information, such as a persistent ID or citation, about sources of the Dataset (e.g. a book, article, serial, or machine-readable data file)		t	76	f	TEXTBOX	dataSources	f	Data Source	https://www.w3.org/TR/prov-o/#wasDerivedFrom	\N		1	\N
78	f	f	f	For historical sources, the origin and any rules followed in establishing them as sources		t	77	f	TEXTBOX	originOfSources	f	Origin of Historical Sources	\N	\N		1	\N
79	f	f	f	Characteristics not already noted elsewhere		t	78	f	TEXTBOX	characteristicOfSources	f	Characteristic of Sources	\N	\N		1	\N
80	f	f	f	1) Methods or procedures for accessing data sources and 2) any special permissions needed for access		t	79	f	TEXTBOX	accessToSources	f	Documentation and Access to Sources	\N	\N		1	\N
81	f	f	t	Information on the geographic coverage of the data. Includes the total geographic scope of the data.		t	0	f	NONE	geographicCoverage	f	Geographic Coverage	\N	\N		2	\N
82	t	t	f	The country or nation that the Dataset is about.	#VALUE,	t	1	t	TEXT	country	f	Country / Nation	\N	\N		2	81
83	t	f	f	The state or province that the Dataset is about. Use GeoNames for correct spelling and avoid abbreviations.	#VALUE,	t	2	t	TEXT	state	f	State / Province	\N	\N		2	81
84	t	f	f	The name of the city that the Dataset is about. Use GeoNames for correct spelling and avoid abbreviations.	#VALUE,	t	3	t	TEXT	city	f	City	\N	\N		2	81
85	f	f	f	Other information on the geographic coverage of the data.	#VALUE,	t	4	t	TEXT	otherGeographicCoverage	f	Other	\N	\N		2	81
86	t	f	t	Lowest level of geographic aggregation covered by the Dataset, e.g., village, county, region.		t	5	t	TEXT	geographicUnit	f	Geographic Unit	\N	\N		2	\N
87	f	f	t	The fundamental geometric description for any Dataset that models geography is the geographic bounding box. It describes the minimum box, defined by west and east longitudes and north and south latitudes, which includes the largest geographic extent of the  Dataset's geographic coverage. This element is used in the first pass of a coordinate-based search. Inclusion of this element in the codebook is recommended, but is required if the bound polygon box is included.		t	6	f	NONE	geographicBoundingBox	f	Geographic Bounding Box	\N	\N		2	\N
88	f	f	f	Westernmost coordinate delimiting the geographic extent of the Dataset. A valid range of values,  expressed in decimal degrees, is -180.0 <= West  Bounding Longitude Value <= 180.0.		t	7	f	TEXT	westLongitude	f	Westernmost (Left) Longitude	\N	\N		2	87
89	f	f	f	Easternmost coordinate delimiting the geographic extent of the Dataset. A valid range of values,  expressed in decimal degrees, is -180.0 <= East Bounding Longitude Value <= 180.0.		t	8	f	TEXT	eastLongitude	f	Easternmost (Right) Longitude	\N	\N		2	87
90	f	f	f	Northernmost coordinate delimiting the geographic extent of the Dataset. A valid range of values,  expressed in decimal degrees, is -90.0 <= North Bounding Latitude Value <= 90.0.		t	9	f	TEXT	northLatitude	f	Northernmost (Top) Latitude	\N	\N		2	87
91	f	f	f	Southernmost coordinate delimiting the geographic extent of the Dataset. A valid range of values,  expressed in decimal degrees, is -90.0 <= South Bounding Latitude Value <= 90.0.		t	10	f	TEXT	southLatitude	f	Southernmost (Bottom) Latitude	\N	\N		2	87
92	t	f	t	Basic unit of analysis or observation that this Dataset describes, such as individuals, families/households, groups, institutions/organizations, administrative units, and more. For information about the DDI's controlled vocabulary for this element, please refer to the DDI web page at http://www.ddialliance.org/controlled-vocabularies.		t	0	t	TEXTBOX	unitOfAnalysis	f	Unit of Analysis	\N	\N		3	\N
93	t	f	t	Description of the population covered by the data in the file; the group of people or other elements that are the object of the study and to which the study results refer. Age, nationality, and residence commonly help to  delineate a given universe, but any number of other factors may be used, such as age limits, sex, marital status, race, ethnic group, nationality, income, veteran status, criminal convictions, and more. The universe may consist of elements other than persons, such as housing units, court cases, deaths, countries, and so on. In general, it should be possible to tell from the description of the universe whether a given individual or element is a member of the population under study. Also known as the universe of interest, population of interest, and target population.		t	1	t	TEXTBOX	universe	f	Universe	\N	\N		3	\N
94	t	f	f	The time method or time dimension of the data collection, such as panel, cross-sectional, trend, time- series, or other.		t	2	t	TEXT	timeMethod	f	Time Method	\N	\N		3	\N
95	f	f	f	Individual, agency or organization responsible for  administering the questionnaire or interview or compiling the data.		t	3	f	TEXT	dataCollector	f	Data Collector	\N	\N	FamilyName, GivenName or Organization	3	\N
96	f	f	f	Type of training provided to the data collector		t	4	f	TEXT	collectorTraining	f	Collector Training	\N	\N		3	\N
178	f	f	f	The version number used by Dataverse		t	1	f	TEXT	dansDataversePidVersion	f	DV PID Version	\N	\N		8	\N
97	t	f	f	If the data collected includes more than one point in time, indicate the frequency with which the data was collected; that is, monthly, quarterly, or other.		t	5	t	TEXT	frequencyOfDataCollection	f	Frequency	\N	\N		3	\N
98	f	f	f	Type of sample and sample design used to select the survey respondents to represent the population. May include reference to the target sample size and the sampling fraction.		t	6	f	TEXTBOX	samplingProcedure	f	Sampling Procedure	\N	\N		3	\N
99	f	f	f	Specific information regarding the target sample size, actual  sample size, and the formula used to determine this.		t	7	f	NONE	targetSampleSize	f	Target Sample Size	\N	\N		3	\N
100	f	f	f	Actual sample size.		t	8	f	INT	targetSampleActualSize	f	Actual	\N	\N	Enter an integer...	3	99
101	f	f	f	Formula used to determine target sample size.		t	9	f	TEXT	targetSampleSizeFormula	f	Formula	\N	\N		3	99
102	f	f	f	Show correspondence as well as discrepancies between the sampled units (obtained) and available statistics for the population (age, sex-ratio, marital status, etc.) as a whole.		t	10	f	TEXT	deviationsFromSampleDesign	f	Major Deviations for Sample Design	\N	\N		3	\N
103	f	f	t	Method used to collect the data; instrumentation characteristics (e.g., telephone interview, mail questionnaire, or other).		t	11	f	TEXTBOX	collectionMode	f	Collection Mode	\N	\N		3	\N
104	f	f	f	Type of data collection instrument used. Structured indicates an instrument in which all respondents are asked the same questions/tests, possibly with precoded answers. If a small portion of such a questionnaire includes open-ended questions, provide appropriate comments. Semi-structured indicates that the research instrument contains mainly open-ended questions. Unstructured indicates that in-depth interviews were conducted.		t	12	f	TEXT	researchInstrument	f	Type of Research Instrument	\N	\N		3	\N
192	t	t	f	Available analytic data (wet lab).		t	7	t	TEXT	comrades-dclAnalysis	f	Analysis	\N	\N		9	188
105	f	f	f	Description of noteworthy aspects of the data collection situation. Includes information on factors such as cooperativeness of respondents, duration of interviews, number of call backs, or similar.		t	13	f	TEXTBOX	dataCollectionSituation	f	Characteristics of Data Collection Situation	\N	\N		3	\N
106	f	f	f	Summary of actions taken to minimize data loss. Include information on actions such as follow-up visits, supervisory checks, historical matching, estimation, and so on.		t	14	f	TEXT	actionsToMinimizeLoss	f	Actions to Minimize Losses	\N	\N		3	\N
107	f	f	f	Control OperationsMethods to facilitate data control performed by the primary investigator or by the data archive.		t	15	f	TEXT	controlOperations	f	Control Operations	\N	\N		3	\N
108	f	f	f	The use of sampling procedures might make it necessary to apply weights to produce accurate statistical results. Describes the criteria for using weights in analysis of a collection. If a weighting formula or coefficient was developed, the formula is provided, its elements are defined, and it is indicated how the formula was applied to the data.		t	16	f	TEXTBOX	weighting	f	Weighting	\N	\N		3	\N
109	f	f	f	Methods used to clean the data collection, such as consistency checking, wildcode checking, or other.		t	17	f	TEXT	cleaningOperations	f	Cleaning Operations	\N	\N		3	\N
110	f	f	f	Note element used for any information annotating or clarifying the methodology and processing of the study.		t	18	f	TEXT	datasetLevelErrorNotes	f	Study Level Error Notes	\N	\N		3	\N
112	f	f	f	Measure of how precisely one can estimate a population value from a given sample.		t	20	f	TEXT	samplingErrorEstimates	f	Estimates of Sampling Error	\N	\N		3	\N
113	f	f	f	Other issues pertaining to the data appraisal. Describe issues such as response variance, nonresponse rate  and testing for bias, interviewer and response bias, confidence levels, question bias, or similar.		t	21	f	TEXT	otherDataAppraisal	f	Other Forms of Data Appraisal	\N	\N		3	\N
114	f	f	f	General notes about this Dataset.		t	22	f	NONE	socialScienceNotes	f	Notes	\N	\N		3	\N
115	f	f	f	Type of note.		t	23	f	TEXT	socialScienceNotesType	f	Type	\N	\N		3	114
116	f	f	f	Note subject.		t	24	f	TEXT	socialScienceNotesSubject	f	Subject	\N	\N		3	114
117	f	f	f	Text for this note.		t	25	f	TEXTBOX	socialScienceNotesText	f	Text	\N	\N		3	114
118	t	t	t	The nature or genre of the content of the files in the dataset.		t	0	t	TEXT	astroType	f	Type	\N	\N		4	\N
119	t	f	t	The observatory or facility where the data was obtained.		t	1	t	TEXT	astroFacility	f	Facility	\N	\N		4	\N
120	t	f	t	The instrument used to collect the data.		t	2	t	TEXT	astroInstrument	f	Instrument	\N	\N		4	\N
121	t	f	t	Astronomical Objects represented in the data (Given as SIMBAD recognizable names preferred).		t	3	t	TEXT	astroObject	f	Object	\N	\N		4	\N
122	t	f	f	The spatial (angular) resolution that is typical of the observations, in decimal degrees.		t	4	t	TEXT	resolution.Spatial	f	Spatial Resolution	\N	\N		4	\N
123	t	f	f	The spectral resolution that is typical of the observations, given as the ratio \\u03bb/\\u0394\\u03bb.		t	5	t	TEXT	resolution.Spectral	f	Spectral Resolution	\N	\N		4	\N
124	f	f	f	The temporal resolution that is typical of the observations, given in seconds.		t	6	f	TEXT	resolution.Temporal	f	Time Resolution	\N	\N		4	\N
125	t	f	t	Conventional bandpass name		t	7	t	TEXT	coverage.Spectral.Bandpass	f	Bandpass	\N	\N		4	\N
126	t	f	t	The central wavelength of the spectral bandpass, in meters.		t	8	t	FLOAT	coverage.Spectral.CentralWavelength	f	Central Wavelength (m)	\N	\N	Enter a floating-point number.	4	\N
127	f	f	t	The minimum and maximum wavelength of the spectral bandpass.		t	9	f	NONE	coverage.Spectral.Wavelength	f	Wavelength Range	\N	\N	Enter a floating-point number.	4	\N
128	t	f	f	The minimum wavelength of the spectral bandpass, in meters.		t	10	t	FLOAT	coverage.Spectral.MinimumWavelength	f	Minimum (m)	\N	\N	Enter a floating-point number.	4	127
129	t	f	f	The maximum wavelength of the spectral bandpass, in meters.		t	11	t	FLOAT	coverage.Spectral.MaximumWavelength	f	Maximum (m)	\N	\N	Enter a floating-point number.	4	127
130	f	f	t	Time period covered by the data.		t	12	f	NONE	coverage.Temporal	f	Dataset Date Range	\N	\N		4	\N
131	t	f	f	Dataset Start Date		t	13	t	DATE	coverage.Temporal.StartTime	f	Start	\N	\N	YYYY-MM-DD	4	130
132	t	f	f	Dataset End Date		t	14	t	DATE	coverage.Temporal.StopTime	f	End	\N	\N	YYYY-MM-DD	4	130
133	f	f	t	The sky coverage of the data object.		t	15	f	TEXT	coverage.Spatial	f	Sky Coverage	\N	\N		4	\N
134	f	f	f	The (typical) depth coverage, or sensitivity, of the data object in Jy.		t	16	f	FLOAT	coverage.Depth	f	Depth Coverage	\N	\N	Enter a floating-point number.	4	\N
135	f	f	f	The (typical) density of objects, catalog entries, telescope pointings, etc., on the sky, in number per square degree.		t	17	f	FLOAT	coverage.ObjectDensity	f	Object Density	\N	\N	Enter a floating-point number.	4	\N
136	f	f	f	The total number of objects, catalog entries, etc., in the data object.		t	18	f	INT	coverage.ObjectCount	f	Object Count	\N	\N	Enter an integer.	4	\N
137	f	f	f	The fraction of the sky represented in the observations, ranging from 0 to 1.		t	19	f	FLOAT	coverage.SkyFraction	f	Fraction of Sky	\N	\N	Enter a floating-point number.	4	\N
138	f	f	f	The polarization coverage		t	20	f	TEXT	coverage.Polarization	f	Polarization	\N	\N		4	\N
139	f	f	f	RedshiftType string C "Redshift"; or "Optical" or "Radio" definitions of Doppler velocity used in the data object.		t	21	f	TEXT	redshiftType	f	RedshiftType	\N	\N		4	\N
140	f	f	f	The resolution in redshift (unitless) or Doppler velocity (km/s) in the data object.		t	22	f	FLOAT	resolution.Redshift	f	Redshift Resolution	\N	\N	Enter a floating-point number.	4	\N
141	f	f	t	The value of the redshift (unitless) or Doppler velocity (km/s in the data object.		t	23	f	NONE	coverage.RedshiftValue	f	Redshift Value	\N	\N	Enter a floating-point number.	4	\N
142	f	f	f	The minimum value of the redshift (unitless) or Doppler velocity (km/s in the data object.		t	24	f	FLOAT	coverage.Redshift.MinimumValue	f	Minimum	\N	\N	Enter a floating-point number.	4	141
143	f	f	f	The maximum value of the redshift (unitless) or Doppler velocity (km/s in the data object.		t	25	f	FLOAT	coverage.Redshift.MaximumValue	f	Maximum	\N	\N	Enter a floating-point number.	4	141
144	t	t	t	Design types that are based on the overall experimental design.		t	0	t	TEXT	studyDesignType	f	Design Type	\N	\N		5	\N
145	t	f	t	If Other was selected in Design Type, list any other design types that were used in this Dataset.		t	1	t	TEXT	studyOtherDesignType	f	Other Design Type	\N	\N		5	\N
146	t	t	t	Factors used in the Dataset.		t	2	t	TEXT	studyFactorType	f	Factor Type	\N	\N		5	\N
147	t	f	t	If Other was selected in Factor Type, list any other factor types that were used in this Dataset.		t	3	t	TEXT	studyOtherFactorType	f	Other Factor Type	\N	\N		5	\N
148	t	t	t	The taxonomic name of the organism used in the Dataset or from which the  starting biological material derives.		t	4	t	TEXT	studyAssayOrganism	f	Organism	\N	\N		5	\N
149	t	f	t	If Other was selected in Organism, list any other organisms that were used in this Dataset. Terms from the NCBI Taxonomy are recommended.		t	5	t	TEXT	studyAssayOtherOrganism	f	Other Organism	\N	\N		5	\N
150	t	t	t	A term to qualify the endpoint, or what is being measured (e.g. gene expression profiling; protein identification).		t	6	t	TEXT	studyAssayMeasurementType	f	Measurement Type	\N	\N		5	\N
151	t	f	t	If Other was selected in Measurement Type, list any other measurement types that were used. Terms from NCBO Bioportal are recommended.		t	7	t	TEXT	studyAssayOtherMeasurmentType	f	Other Measurement Type	\N	\N		5	\N
152	t	t	t	A term to identify the technology used to perform the measurement (e.g. DNA microarray; mass spectrometry).		t	8	t	TEXT	studyAssayTechnologyType	f	Technology Type	\N	\N		5	\N
153	t	f	t	If Other was selected in Technology Type, list any other technology types that were used in this Dataset.		t	9	t	TEXT	studyAssayOtherTechnologyType	f	Other Technology Type	\N	\N		5	\N
154	t	t	t	The manufacturer and name of the technology platform used in the assay (e.g. Bruker AVANCE).		t	10	t	TEXT	studyAssayPlatform	f	Technology Platform	\N	\N		5	\N
155	t	f	t	If Other was selected in Technology Platform, list any other technology platforms that were used in this Dataset.		t	11	t	TEXT	studyAssayOtherPlatform	f	Other Technology Platform	\N	\N		5	\N
156	t	f	t	The name of the cell line from which the source or sample derives.		t	12	t	TEXT	studyAssayCellType	f	Cell Type	\N	\N		5	\N
157	f	f	t	Indicates the volume, issue and date of a journal, which this Dataset is associated with.		t	0	f	NONE	journalVolumeIssue	f	Journal	\N	\N		6	\N
158	t	f	f	The journal volume which this Dataset is associated with (e.g., Volume 4).		t	1	t	TEXT	journalVolume	f	Volume	\N	\N		6	157
159	t	f	f	The journal issue number which this Dataset is associated with (e.g., Number 2, Autumn).		t	2	t	TEXT	journalIssue	f	Issue	\N	\N		6	157
160	t	f	f	The publication date for this journal volume/issue, which this Dataset is associated with (e.g., 1999).		t	3	t	DATE	journalPubDate	f	Publication Date	\N	\N	YYYY or YYYY-MM or YYYY-MM-DD	6	157
161	t	t	f	Indicates what kind of article this is, for example, a research article, a commentary, a book or product review, a case report, a calendar, etc (based on JATS).		t	4	t	TEXT	journalArticleType	f	Type of Article	\N	\N		6	\N
162	t	t	f	The technique used for capturing the 3D data	#VALUE	t	0	t	TEXT	3d3DTechnique	f	3D Technique	\N	\N		7	\N
163	t	f	f	The equipment used for capturing the 3D data	#VALUE	t	1	f	TEXT	3dEquipment	f	Equipment	\N	\N		7	\N
164	t	t	f	The lighting used while capturing the 3D data	#VALUE	t	2	t	TEXT	3dLightingSetup	f	Lighting Setup	\N	\N		7	\N
165	t	f	f	The high-resolution polygon count	#VALUE	t	3	f	TEXT	3dMasterFilePolygonCount	f	Master File Polygon Count	\N	\N		7	\N
166	t	f	t	The exported mesh polygon count	#VALUE	t	4	f	TEXT	3dExportedFilePolygonCount	f	Exported File Polygon Count	\N	\N		7	\N
167	t	t	f	The format of the exported mesh	#VALUE	t	5	t	TEXT	3dExportedFileFormat	f	Exported File Format	\N	\N		7	\N
168	f	f	f	A physical description of the object modeled	#VALUE	t	6	f	TEXTBOX	3dAltText	f	Alt-Text	\N	\N		7	\N
169	t	f	t	The material used to create the object, e.g. stone	#VALUE	t	7	t	TEXT	3dMaterialComposition	f	Material Composition	\N	\N		7	\N
170	f	f	f	The general measurements of the physical object	;	t	8	f	NONE	3dObjectDimensions	f	Object Dimensions	\N	\N		7	\N
171	f	f	f	The rough length of the object	Length: #VALUE	t	9	f	TEXT	3dLength	f	Length	\N	\N		7	170
172	f	f	f	The rough width of the object	Width: #VALUE	t	10	f	TEXT	3dWidth	f	Width	\N	\N		7	170
173	f	f	f	The rough height of the object	Height: #VALUE	t	11	f	TEXT	3dHeight	f	Height	\N	\N		7	170
174	f	f	f	The rough weight of the object	Weight:#VALUE	t	12	f	TEXT	3dWeight	f	Weight	\N	\N		7	170
175	f	t	f	The unit of measurement used for the object dimensions	Unit: #VALUE	t	13	t	TEXT	3dUnit	f	Unit	\N	\N		7	170
176	f	f	f	Safety and special handling instructions for the object	#VALUE	t	14	f	TEXTBOX	3dHandling	f	Instructions	\N	\N		7	\N
177	f	f	f	The PID used by Dataverse (version independent)		t	0	f	TEXT	dansDataversePid	f	DV PID	\N	\N		8	\N
179	f	f	f	The URN:UUID of the bag stored in on tape (corresponds to one version)		t	2	f	TEXT	dansBagId	f	Bag ID	\N	\N		8	\N
180	f	f	f	The URN:NBN of this dataset (version independent)		t	3	f	TEXT	dansNbn	f	NBN	\N	\N		8	\N
181	f	f	f	ID used by the depositing organization, may be a PID, must be namespaced		t	4	f	TEXT	dansOtherId	f	Other ID	\N	\N		8	\N
182	f	f	f	The version number used by the depositing organization, if empty “Other ID” refers to a specific version		t	5	f	TEXT	dansOtherIdVersion	f	Other ID Version	\N	\N		8	\N
183	f	f	f	The UUID of the first version, the base revision (version independent)		t	6	f	TEXT	dansSwordToken	f	SWORD Token	\N	\N		8	\N
184	f	f	f	Shortname for an organizational data supplier (only provided for automated deposits)		t	7	f	TEXT	dansDataSupplier	f	Data Supplier	\N	\N		8	\N
185	t	t	f	Work package.		t	0	t	TEXT	comrades-dclWorkPackage	t	Work package	\N	\N		9	\N
186	f	f	f	Dry Lab		t	1	f	NONE	comrades-dclDryLab	f	Dry Lab	\N	\N		9	\N
187	t	t	f	Reactor. (dry lab)		t	2	t	TEXT	comrades-dclIndustrialCase	f	Industrial case	\N	\N		9	186
188	f	f	f	Wet Lab	,	t	3	f	NONE	comrades-dclWetLab	f	Wet Lab	\N	\N		9	\N
189	t	t	f	Strain (wet lab).		t	4	t	TEXT	comrades-dclStrain	f	Strain	\N	\N		9	188
190	t	t	f	Operation conditions (wet lab).		t	5	t	TEXT	comrades-dclOperationPoint	f	Operation point	\N	\N		9	188
191	t	t	f	Configuration of reactors scale down (wet lab).		t	6	t	TEXT	comrades-dclScaleDownApproach	f	Scale down approach	\N	\N		9	188
193	t	t	t	The type of research (questions) this project was conducted for	#VALUE	t	0	t	TEXT	dccd-projectType	t	Project Type	\N	\N		10	\N
194	t	t	f	The category of research (objects) a project was conducted for	#VALUE	t	1	t	TEXT	dccd-category	t	Project Category	\N	\N		10	\N
195	t	f	f	Lead researcher of this project	#VALUE	t	2	t	TEXT	dccd-principalInvestigator	f	Principal Investigator	\N	\N		10	\N
196	t	t	t	Types of objects that are studied through dendrochronological research	#VALUE	t	3	t	TEXT	dccd-objectType	f	Object Type	\N	\N		10	\N
197	t	t	t	Types of items (parts of objects) that are studied through dendrochronological research	#VALUE	t	4	t	TEXT	dccd-elementType	f	Element Type	\N	\N		10	\N
198	t	t	t	The most detailed taxonomic name known for this element (species, genus, family etc).	#VALUE	t	5	t	TEXT	dccd-taxon	f	Taxon	\N	\N		10	\N
199	f	f	t	Coordinates (WGS84) of the approximate geographical (deposit) location of objects under study		t	6	f	NONE	dccd-location	f	Location	\N	\N		10	\N
200	t	f	f	Latitude coordinate in decimal notation	#NAME: #VALUE	t	7	f	FLOAT	dccd-latitude	f	Latitude	\N	\N		10	199
201	t	f	f	Longitude coordinate in decimal notation	#NAME: #VALUE	t	8	f	FLOAT	dccd-longitude	f	Longitude	\N	\N		10	199
202	f	f	t	Time range containing the publicly available earliest and latest (astronomical) years within this dataset	;	t	9	f	NONE	dccd-period	f	Time Period	\N	\N		10	\N
203	t	f	f	Calendar year dendrochronologically assigned to the oldest annual tree ring in this data collection	#NAME: #VALUE	t	10	f	INT	dccd-periodStart	f	First Year	\N	\N		10	202
204	t	f	f	Calendar year dendrochronologically assigned to the youngest annual tree ring in this data collection	#NAME: #VALUE	t	11	f	INT	dccd-periodEnd	f	Last Year	\N	\N		10	202
\.


--
-- Data for Name: datasetfieldvalue; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datasetfieldvalue (id, displayorder, value, datasetfield_id) FROM stdin;
1	0	https://ror.org/043c0p156	14
2	0	Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7	12
3	0	User01, Test01	9
4	0	User01, Test01	19
5	0	user001@dans.knaw.nl	8
6	0	User01, Test01	13
7	0	DANS	6
8	0	2026-03-05	17
9	0	Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7	7
10	0	urn:uuid:7eb53c11-a224-4e9b-b9d7-81568ac1b438	21
11	0	1.0	23
12	0	urn:nbn:nl:ui:13-13e401e0-5e6b-4f0c-9045-b2cae994d76f	20
13	0	doi:10.5072/DVNL/V0DKKR	22
14	0	Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (DANS Collection)	35
15	0	Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (DANS Collection)	39
16	0	https://ror.org/008pnp284	36
17	0	2026-03-05	37
18	0	User01, Test01	29
19	0	User01, Test01	40
20	0	user001@dans.knaw.nl	34
21	0	DANS	31
22	0	User01, Test01	42
23	0	doi:10.5072/DVNL/CUAIFJ	43
24	0	urn:uuid:bd1f29db-33c9-4161-9cd4-02714646c38c	46
25	0	1.0	45
26	0	urn:nbn:nl:ui:13-4d272cbc-5fa3-439a-a28e-7d153048e1fb	44
27	0	User01, Test01	55
28	0	user001@dans.knaw.nl	60
29	0	Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (General Test collection)	57
30	0	2026-03-05	54
31	0	User01, Test01	53
32	0	DANS	64
33	0	Test dev_dataversenl dataverse v6.9-DANS-DataStation-PATCH-7 (General Test collection)	59
34	0	User01, Test01	65
35	0	https://ror.org/04jsz6e67	61
36	0	urn:uuid:5d5dd98e-219f-49cb-b264-8284ac0770dc	66
37	0	doi:10.5072/DVNL/RGE3TU	69
38	0	1.0	67
39	0	urn:nbn:nl:ui:13-1cfe89a4-ddbb-4eaf-ae72-ce8056abc68b	68
40	0	dataverse@mailinator.com	77
41	0	test	79
42	0	Admin, Dataverse	76
43	0	2026-06-10	80
44	0	Dataverse.org	87
45	0	Admin, Dataverse	85
46	0	test terms of use and license fileds	83
47	0	Admin, Dataverse	86
48	0	Dataverse.org	78
49	0	dataverse@mailinator.com	103
50	0	2026-06-10	99
51	0	test terms of use and license fileds	100
52	0	Admin, Dataverse	96
53	0	Admin, Dataverse	95
54	0	test	104
55	0	Dataverse.org	101
56	0	Dataverse.org	107
57	0	Admin, Dataverse	105
58	0	urn:uuid:a3dd6096-aa16-484e-8670-cafe7a7de504	110
59	0	urn:nbn:nl:ui:13-60f60c77-9ff3-4855-a1b7-50685f656425	108
60	0	doi:10.5072/DVNL/KBNAKW	111
61	0	1.0	109
62	0	doi:10.5072/DVNL/W1RSLU	113
63	0	urn:uuid:aeb4b2f0-c801-4e10-8ec3-bde345ad60db	115
64	0	urn:nbn:nl:ui:13-4b91806b-16d1-446f-9b3e-e4b67ce66e13	114
65	0	1.0	112
66	0	2026-06-10	133
67	0	Admin, Dataverse	132
68	0	Dataverse.org	134
69	0	Dataverse.org	125
70	0	v	121
71	0	Admin, Dataverse	130
72	0	Admin, Dataverse	123
73	0	v	126
74	0	dataverse@mailinator.com	122
75	0	urn:uuid:4e3832cf-7531-4759-8f21-fd01e446e60e	138
76	0	urn:nbn:nl:ui:13-ef64fe69-6527-4868-89e1-6c34fb5b9d02	135
77	0	1.0	137
78	0	doi:10.5072/DVNL/QN4JZY	136
\.


--
-- Data for Name: datasetlinkingdataverse; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datasetlinkingdataverse (id, linkcreatetime, dataset_id, linkingdataverse_id) FROM stdin;
\.


--
-- Data for Name: datasetlock; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datasetlock (id, info, reason, starttime, dataset_id, user_id) FROM stdin;
\.


--
-- Data for Name: datasetmetrics; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datasetmetrics (id, countrycode, downloadstotalmachine, downloadstotalregular, downloadsuniquemachine, downloadsuniqueregular, monthyear, viewstotalmachine, viewstotalregular, viewsuniquemachine, viewsuniqueregular, dataset_id) FROM stdin;
\.


--
-- Data for Name: datasettype; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datasettype (id, name) FROM stdin;
1	dataset
\.


--
-- Data for Name: datasettype_license; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datasettype_license (datasettype_id, licenses_id) FROM stdin;
\.


--
-- Data for Name: datasettype_metadatablock; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datasettype_metadatablock (datasettype_id, metadatablocks_id) FROM stdin;
\.


--
-- Data for Name: datasetversion; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datasetversion (id, unf, archivalcopylocation, archivetime, createtime, deaccessionlink, deaccessionnote, lastupdatetime, minorversionnumber, releasetime, version, versionnote, versionnumber, versionstate, dataset_id, termsofuseandaccess_id) FROM stdin;
1	\N	\N	\N	2026-03-05 03:16:11.093	\N	\N	2026-03-05 03:16:20.791	0	2026-03-05 03:16:20.791	6	\N	1	RELEASED	4	1
2	\N	\N	\N	2026-03-05 03:19:10.869	\N	\N	2026-03-05 03:19:17.08	0	2026-03-05 03:19:17.08	6	\N	1	RELEASED	6	2
3	\N	\N	\N	2026-03-05 03:22:03.269	\N	\N	2026-03-05 03:22:13.767	0	2026-03-05 03:22:13.767	6	\N	1	RELEASED	8	3
5	\N	\N	\N	2026-06-10 10:24:45.871	\N	\N	2026-06-10 10:29:11.114	0	2026-06-10 10:29:11.114	11	whoops	1	RELEASED	11	5
4	\N	\N	\N	2026-06-10 10:23:32.53	\N	\N	2026-06-10 12:28:30.478	0	2026-06-10 12:28:30.478	5	\N	1	RELEASED	10	4
6	\N	\N	\N	2026-06-10 12:52:28.841	\N	\N	2026-06-10 12:54:10.714	0	2026-06-10 12:54:10.714	8	x	1	RELEASED	15	6
\.


--
-- Data for Name: datasetversionuser; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datasetversionuser (id, lastupdatedate, authenticateduser_id, datasetversion_id) FROM stdin;
1	2026-03-05 03:16:20.791	2	1
2	2026-03-05 03:19:17.08	2	2
3	2026-03-05 03:22:13.767	2	3
5	2026-06-10 10:29:11.114	1	5
4	2026-06-10 12:28:30.478	1	4
6	2026-06-10 12:54:10.714	1	6
\.


--
-- Data for Name: datatable; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datatable (id, casequantity, originalfileformat, originalfilename, originalfilesize, originalformatversion, recordspercase, storedwithvariableheader, unf, varquantity, datafile_id) FROM stdin;
\.


--
-- Data for Name: datavariable; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.datavariable (id, factor, fileendposition, fileorder, filestartposition, format, formatcategory, "interval", label, name, numberofdecimalpoints, orderedfactor, recordsegmentnumber, type, unf, weighted, datatable_id) FROM stdin;
\.


--
-- Data for Name: dataverse; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.dataverse (id, affiliation, alias, datasetfilecountlimit, dataversetype, description, externallabelsetname, facetroot, filepidsenabled, guestbookatrequest, guestbookroot, metadatablockfacetroot, metadatablockroot, metadatalanguage, name, permissionroot, pidgeneratorspecs, requirefilestopublishdataset, storagedriver, templateroot, themeroot, defaultcontributorrole_id, defaulttemplate_id) FROM stdin;
1	\N	root	\N	UNCATEGORIZED	<h1>Welcome to DataverseNL</h1> Store, share and publish research data online. Use the slider below to access the dataverses of the DataverseNL partners. <p> </p> Please use the <a href="https://demo.dataverse.nl/" rel="nofollow" target="_blank"> DataverseNL demo </a> for demonstration, training and testing purposes. If you have questions about how to use DataverseNL, please contact your institution directly via one of the email addresses on this <a href="https://dans.knaw.nl/en/data-services/dataversenl/institutions/" rel="nofollow" target="_blank">page</a>. 	\N	t	\N	\N	f	f	t	\N	DataverseNL (dev)	t	\N	\N	\N	f	t	11	\N
2	DANS	dans	\N	ORGANIZATIONS_INSTITUTIONS	DANS dataverse	\N	f	\N	\N	f	f	f	\N	DANS	t	\N	\N	\N	f	t	6	\N
3	dans.knaw.nl	general	\N	UNCATEGORIZED	This dataverse open to everyone, you do not need to be affiliated with a DataverseNL partner to use it. You do need to create an account to create a dataset here.	\N	f	\N	\N	f	f	f	\N	General Test dataverse	t	\N	\N	\N	f	t	6	\N
\.


--
-- Data for Name: dataverse_citationdatasetfieldtypes; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.dataverse_citationdatasetfieldtypes (dataverse_id, citationdatasetfieldtype_id) FROM stdin;
\.


--
-- Data for Name: dataverse_metadatablock; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.dataverse_metadatablock (dataverse_id, metadatablocks_id) FROM stdin;
1	1
1	8
\.


--
-- Data for Name: dataversecontact; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.dataversecontact (id, contactemail, displayorder, dataverse_id) FROM stdin;
1	root@mailinator.com	0	1
2	info@dataverse.nl	0	2
3	info@dataverse.nl	0	3
\.


--
-- Data for Name: dataversefacet; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.dataversefacet (id, displayorder, datasetfieldtype_id, dataverse_id) FROM stdin;
5	1	20	1
6	3	60	1
7	5	39	1
8	4	10	1
9	2	22	1
10	0	9	1
\.


--
-- Data for Name: dataversefeatureddataverse; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.dataversefeatureddataverse (id, displayorder, dataverse_id, featureddataverse_id) FROM stdin;
1	1	1	3
2	0	1	2
\.


--
-- Data for Name: dataversefeatureditem; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.dataversefeatureditem (id, content, displayorder, imagefilename, type, dataverse_id, dvobject_id) FROM stdin;
\.


--
-- Data for Name: dataversefieldtypeinputlevel; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.dataversefieldtypeinputlevel (id, displayoncreate, include, required, datasetfieldtype_id, dataverse_id) FROM stdin;
1	\N	f	f	177	1
2	\N	f	f	178	1
3	\N	f	f	179	1
4	\N	f	f	180	1
5	\N	f	f	181	1
6	\N	f	f	182	1
7	\N	f	f	183	1
8	\N	f	f	184	1
\.


--
-- Data for Name: dataverselinkingdataverse; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.dataverselinkingdataverse (id, linkcreatetime, dataverse_id, linkingdataverse_id) FROM stdin;
\.


--
-- Data for Name: dataversemetadatablockfacet; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.dataversemetadatablockfacet (id, dataverse_id, metadatablock_id) FROM stdin;
\.


--
-- Data for Name: dataverserole; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.dataverserole (id, alias, description, name, permissionbits, owner_id) FROM stdin;
1	admin	A person who has all permissions for dataverses, datasets, and files.	Admin	65535	\N
2	fileDownloader	A person who can download a published file.	File Downloader	16	\N
3	fullContributor	A person who can add subdataverses and datasets within a dataverse.	Dataverse + Dataset Creator	3	\N
4	dvContributor	A person who can add subdataverses within a dataverse.	Dataverse Creator	1	\N
5	dsContributor	A person who can add datasets within a dataverse.	Dataset Creator	2	\N
6	contributor	For datasets, a person who can edit License + Terms, and then submit them for review.	Contributor	32856	\N
7	curator	For datasets, a person who can edit License + Terms, edit Permissions, and publish and link datasets.	Curator	43871	\N
8	member	A person who can view both unpublished dataverses and datasets.	Member	28	\N
9	datamanager	A person who manages data.	Datamanager	35674	1
10	requestgranter	A person who can grant access to restricted files.	Access Request Granter	512	1
11	contributorplus	A contributor who also can grant access to restricted files	Contributor with ManageFilePermissions	33368	1
12	swordpublisher	A dataset creator who can publish dataset versions via SWORD	Dataset creator with SWORD publish rights	2	1
13	swordupdater	A contributor who can create a new version of the target dataset via SWORD	Contributor with SWORD rights	520	1
\.


--
-- Data for Name: dataversesubjects; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.dataversesubjects (dataverse_id, controlledvocabularyvalue_id) FROM stdin;
1	4
2	7
1	7
3	3
1	3
\.


--
-- Data for Name: dataversetheme; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.dataversetheme (id, backgroundcolor, linkcolor, linkurl, logo, logoalignment, logobackgroundcolor, logofooter, logofooteralignment, logofooterbackgroundcolor, logoformat, logothumbnail, tagline, textcolor, dataverse_id) FROM stdin;
1	\N	428aca	\N	\N	\N	\N	\N	\N	\N	\N	\N		888888	1
\.


--
-- Data for Name: defaultvalueset; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.defaultvalueset (id, name) FROM stdin;
\.


--
-- Data for Name: dvobject; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.dvobject (id, dtype, authority, createdate, globalidcreatetime, identifier, identifierregistered, indextime, modificationtime, permissionindextime, permissionmodificationtime, previewimageavailable, previewimagefail, protocol, publicationdate, separator, storageidentifier, creator_id, owner_id, releaseuser_id) FROM stdin;
7	DataFile	\N	2026-03-05 03:19:11.14	\N	\N	f	\N	2026-03-05 03:19:16.967	\N	2026-03-05 03:19:02.899	t	f	\N	2026-03-05 03:19:17.08	\N	file://19cbbca9973-d9b51cffe753	2	6	\N
2	Dataverse	\N	2026-03-05 03:10:12.519	\N	\N	f	2026-03-05 03:19:17.156	2026-03-05 03:10:14.584	2026-03-05 03:19:17.159	2026-03-05 03:10:12.546	f	f	\N	2026-03-05 03:10:14.583	\N	\N	1	1	1
6	Dataset	10.5072	2026-03-05 03:19:10.867	2026-03-05 03:19:17.101	DVNL/CUAIFJ	t	2026-03-05 03:19:17.493	2026-03-05 03:19:17.08	2026-03-05 03:19:17.489	2026-03-05 03:19:10.867	f	f	doi	2026-03-05 03:19:17.087	/	file://10.5072/DVNL/CUAIFJ	2	2	2
12	DataFile	\N	2026-06-10 10:24:46.022	\N	\N	f	\N	2026-06-10 10:29:10.993	\N	2026-06-10 10:24:17.803	t	f	\N	2026-06-10 10:29:11.114	\N	file://19eb0a1da8b-9982dc3c25fe	1	11	\N
9	DataFile	\N	2026-03-05 03:22:03.579	\N	\N	f	\N	2026-03-05 03:22:13.613	\N	2026-03-05 03:21:59.984	t	f	\N	2026-03-05 03:22:13.767	\N	file://19cbbcd4d30-11c71da8095a	2	8	\N
13	DataFile	\N	2026-06-10 10:24:46.022	\N	\N	f	\N	2026-06-10 10:29:10.993	\N	2026-06-10 10:24:18.24	t	f	\N	2026-06-10 10:29:11.114	\N	file://19eb0a1dc40-a1fd33bb64a6	1	11	\N
5	DataFile	\N	2026-03-05 03:16:11.999	\N	\N	f	\N	2026-03-05 03:16:20.573	\N	2026-03-05 03:16:03.611	t	f	\N	2026-03-05 03:16:20.791	\N	file://19cbbc7dd1b-15891fe54a00	2	4	\N
14	DataFile	\N	2026-06-10 10:24:46.022	\N	\N	f	\N	2026-06-10 10:29:10.993	\N	2026-06-10 10:24:18.026	t	f	\N	2026-06-10 10:29:11.114	\N	file://19eb0a1db6a-d468a14f25aa	1	11	\N
4	Dataset	10.5072	2026-03-05 03:16:11.071	2026-03-05 03:16:20.836	DVNL/V0DKKR	t	2026-03-05 03:16:21.901	2026-03-05 03:16:20.791	2026-03-05 03:16:21.897	2026-03-05 03:16:11.071	f	f	doi	2026-03-05 03:16:20.807	/	file://10.5072/DVNL/V0DKKR	2	1	2
1	Dataverse	\N	2026-03-05 02:56:20.877	\N	\N	f	\N	2026-03-05 03:16:58.389	\N	2026-03-05 02:56:20.892	f	f	\N	2026-03-05 03:06:29.605	\N	\N	1	\N	1
8	Dataset	10.5072	2026-03-05 03:22:03.267	2026-03-05 03:22:13.823	DVNL/RGE3TU	t	2026-03-05 03:22:14.181	2026-03-05 03:22:13.767	2026-03-05 03:22:14.177	2026-03-05 03:22:03.267	f	f	doi	2026-03-05 03:22:13.786	/	file://10.5072/DVNL/RGE3TU	2	3	2
11	Dataset	10.5072	2026-06-10 10:24:45.869	2026-06-10 10:29:11.156	DVNL/KBNAKW	t	2026-06-10 10:29:12.032	2026-06-10 10:29:11.114	2026-06-10 10:29:12.03	2026-06-10 10:24:45.869	f	f	doi	2026-06-10 10:29:11.125	/	file://10.5072/DVNL/KBNAKW	1	3	1
3	Dataverse	\N	2026-03-05 03:10:14.007	\N	\N	f	2026-06-10 12:28:30.536	2026-03-05 03:10:15.04	2026-06-10 12:28:30.537	2026-03-05 03:10:14.017	f	f	\N	2026-03-05 03:10:15.04	\N	\N	1	1	1
10	Dataset	10.5072	2026-06-10 10:23:32.518	2026-06-10 12:28:30.503	DVNL/W1RSLU	t	2026-06-10 12:28:30.849	2026-06-10 12:28:30.478	2026-06-10 12:28:30.842	2026-06-10 10:23:32.518	f	f	doi	2026-06-10 12:28:30.492	/	file://10.5072/DVNL/W1RSLU	1	3	1
15	Dataset	10.5072	2026-06-10 12:52:28.829	2026-06-10 12:54:10.753	DVNL/QN4JZY	t	2026-06-10 12:54:11.889	2026-06-10 12:54:10.714	2026-06-10 12:54:11.882	2026-06-10 12:52:28.829	f	f	doi	2026-06-10 12:54:10.729	/	file://10.5072/DVNL/QN4JZY	1	1	1
16	DataFile	\N	2026-06-10 12:52:29.482	\N	\N	f	\N	2026-06-10 12:54:10.596	\N	2026-06-10 12:51:58.61	t	f	\N	2026-06-10 12:54:10.714	\N	file://19eb1290f12-f4d92860e4f8	1	15	\N
17	DataFile	\N	2026-06-10 12:52:29.482	\N	\N	f	\N	2026-06-10 12:54:10.596	\N	2026-06-10 12:51:58.254	t	f	\N	2026-06-10 12:54:10.714	\N	file://19eb1290dae-876a542fea7a	1	15	\N
18	DataFile	\N	2026-06-10 12:52:29.482	\N	\N	f	\N	2026-06-10 12:54:10.596	\N	2026-06-10 12:51:58.883	t	f	\N	2026-06-10 12:54:10.714	\N	file://19eb1291023-eff57d876e42	1	15	\N
\.


--
-- Data for Name: embargo; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.embargo (id, dateavailable, reason) FROM stdin;
1	2026-06-11	secret for a whil
\.


--
-- Data for Name: explicitgroup; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.explicitgroup (id, description, displayname, groupalias, groupaliasinowner, owner_id) FROM stdin;
\.


--
-- Data for Name: explicitgroup_authenticateduser; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.explicitgroup_authenticateduser (explicitgroup_id, containedauthenticatedusers_id) FROM stdin;
\.


--
-- Data for Name: explicitgroup_containedroleassignees; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.explicitgroup_containedroleassignees (explicitgroup_id, containedroleassignees) FROM stdin;
\.


--
-- Data for Name: explicitgroup_explicitgroup; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.explicitgroup_explicitgroup (explicitgroup_id, containedexplicitgroups_id) FROM stdin;
\.


--
-- Data for Name: externalfileuploadinprogress; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.externalfileuploadinprogress (id, fileinfo, taskid) FROM stdin;
\.


--
-- Data for Name: externaltool; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.externaltool (id, allowedapicalls, contenttype, description, displayname, requirements, scope, toolname, toolparameters, toolurl) FROM stdin;
1	\N	audio/mp3	Play the audio file.	Play Audio	\N	FILE	audioPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/AudioPreview.html
2	\N	audio/x-m4a	Play the audio file.	Play Audio	\N	FILE	audioPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/AudioPreview.html
3	\N	audio/mp4	Play the audio file.	Play Audio	\N	FILE	audioPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/AudioPreview.html
4	\N	audio/mpeg	Play the audio file.	Play Audio	\N	FILE	audioPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/AudioPreview.html
5	\N	audio/wav	Play the audio file.	Play Audio	\N	FILE	audioPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/AudioPreview.html
6	\N	audio/ogg	Play the audio file.	Play Audio	\N	FILE	audioPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/AudioPreview.html
7	\N	application/x-json-hypothesis	View the Hypothesis file.	HypothesisPreview	\N	FILE	hypothesisPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/HypothesisPreview.html
8	\N	image/jpeg	Display the image file.	Display Image	\N	FILE	imagePreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/ImagePreview.html
9	\N	image/png	Display the image file.	Display Image	\N	FILE	imagePreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/ImagePreview.html
10	\N	image/gif	Display the image file.	Display Image	\N	FILE	imagePreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/ImagePreview.html
11	\N	application/geo+json	View the map file.	View Map	\N	FILE	mapPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/MapPreview.html
12	\N	text/markdown	View the markdown file.	View Markdown	\N	FILE	mdPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/MdPreview.html
13	\N	application/pdf	View the PDF file.	View PDF	\N	FILE	pdfPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/PDFPreview.html
14	\N	text/tab-separated-values	View the spreadsheet file.	View Spreadsheet	\N	FILE	spreadsheetPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/SpreadsheetPreview.html
15	\N	text/csv	View the spreadsheet file.	View Spreadsheet	\N	FILE	spreadsheetPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/SpreadsheetPreview.html
16	\N	text/tsv	View the spreadsheet file.	View Spreadsheet	\N	FILE	spreadsheetPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/SpreadsheetPreview.html
17	\N	text/plain	Read the text file.	Read Text	\N	FILE	textPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/TextPreview.html
18	\N	text/vtt	Read the text file.	Read Text	\N	FILE	textPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/TextPreview.html
19	\N	video/mp4	View the video file.	View Video	\N	FILE	videoPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/VideoPreview.html
20	\N	video/ogg	View the video file.	View Video	\N	FILE	videoPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/VideoPreview.html
21	\N	video/quicktime	View the video file.	View Video	\N	FILE	videoPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/VideoPreview.html
22	\N	video/webm	View the video file.	View Video	\N	FILE	videoPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/VideoPreview.html
23	\N	application/zip	View the ZIP file.	View ZIP	\N	FILE	zipPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/ZipPreview.html
24	\N	application/vnd.eln+zip	View the ZIP file.	View ZIP	\N	FILE	zipPreviewer	{"queryParameters":[{"fileid":"{fileId}"},{"siteUrl":"{siteUrl}"},{"key":"{apiToken}"},{"datasetid":"{datasetId}"},{"datasetversion":"{datasetVersion}"},{"locale":"{localeCode}"}]}	https://dev.dataverse.nl/dataverse-previewers-1.5/ZipPreview.html
\.


--
-- Data for Name: externaltooltype; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.externaltooltype (id, type, externaltool_id) FROM stdin;
1	PREVIEW	1
2	PREVIEW	2
3	PREVIEW	3
4	PREVIEW	4
5	PREVIEW	5
6	PREVIEW	6
7	PREVIEW	7
8	PREVIEW	8
9	PREVIEW	9
10	PREVIEW	10
11	PREVIEW	11
12	PREVIEW	12
13	PREVIEW	13
14	PREVIEW	14
15	PREVIEW	15
16	PREVIEW	16
17	PREVIEW	17
18	PREVIEW	18
19	PREVIEW	19
20	PREVIEW	20
21	PREVIEW	21
22	PREVIEW	22
23	PREVIEW	23
24	PREVIEW	24
\.


--
-- Data for Name: externalvocabularyvalue; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.externalvocabularyvalue (id, lastupdatedate, uri, value) FROM stdin;
1	2026-03-05 03:16:11.509744	https://ror.org/043c0p156	{"scheme":"http://www.grid.ac/ontology/","termName":"Royal Netherlands Academy of Arts and Sciences","@type":"https://schema.org/Organization"}
2	2026-03-05 03:19:11.067416	https://ror.org/008pnp284	{"scheme":"http://www.grid.ac/ontology/","termName":"Data Archiving Networked Services (DANS)","@type":"https://schema.org/Organization"}
3	2026-03-05 03:22:03.493392	https://ror.org/04jsz6e67	{"scheme":"http://www.grid.ac/ontology/","termName":"Dutch Research Council","@type":"https://schema.org/Organization"}
\.


--
-- Data for Name: fileaccessrequests; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.fileaccessrequests (datafile_id, authenticated_user_id, creation_time, request_state, id, guestbookresponse_id) FROM stdin;
\.


--
-- Data for Name: filemetadata; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.filemetadata (id, description, directorylabel, label, prov_freeform, restricted, version, datafile_id, datasetversion_id) FROM stdin;
1	\N	\N	Astronomy.jpg	\N	f	1	5	1
2	\N	\N	gettyimages-Programming.jpg	\N	f	1	7	2
3	\N	\N	Archeology-site-cal-poly-humboldt.jpg	\N	f	1	9	3
4	\N	\N	IMG_5405.jpg	\N	f	1	14	5
5	\N	\N	IMG_5407.jpg	\N	f	1	13	5
6	\N	\N	IMG_5408.jpg	\N	t	2	12	5
7	\N	\N	IMG_5408.jpg	\N	f	1	18	6
8	\N	\N	IMG_5407.jpg	\N	f	1	16	6
9	\N	\N	IMG_5405.jpg	\N	t	2	17	6
\.


--
-- Data for Name: filemetadata_datafilecategory; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.filemetadata_datafilecategory (filecategories_id, filemetadatas_id) FROM stdin;
\.


--
-- Data for Name: flyway_schema_history; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.flyway_schema_history (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) FROM stdin;
1	1	<< Flyway Baseline >>	BASELINE	<< Flyway Baseline >>	\N	dvnuser	2026-03-05 02:55:50.250159	0	t
2	4.11	5513-database-variablemetadata	SQL	V4.11__5513-database-variablemetadata.sql	767369850	dvnuser	2026-03-05 02:55:50.291008	5	t
3	4.11.0.1	5565-sanitize-directory-labels	SQL	V4.11.0.1__5565-sanitize-directory-labels.sql	-274470039	dvnuser	2026-03-05 02:55:50.313864	5	t
4	4.12.0.1	4.13-re-sanitize-filemetadata	SQL	V4.12.0.1__4.13-re-sanitize-filemetadata.sql	-95635412	dvnuser	2026-03-05 02:55:50.328511	2	t
5	4.13.0.1	3575-usernames	SQL	V4.13.0.1__3575-usernames.sql	1916037265	dvnuser	2026-03-05 02:55:50.33616	2	t
6	4.14.0.1	5822-export-var-meta	SQL	V4.14.0.1__5822-export-var-meta.sql	2019772659	dvnuser	2026-03-05 02:55:50.345229	1	t
7	4.15.0.1	2043-split-gbr-table	SQL	V4.15.0.1__2043-split-gbr-table.sql	-1955706731	dvnuser	2026-03-05 02:55:50.350958	7	t
8	4.16.0.1	5303-addColumn-to-settingTable	SQL	V4.16.0.1__5303-addColumn-to-settingTable.sql	1442682945	dvnuser	2026-03-05 02:55:50.363979	4	t
9	4.16.0.2	5028-dataset-explore	SQL	V4.16.0.2__5028-dataset-explore.sql	797098461	dvnuser	2026-03-05 02:55:50.372961	1	t
10	4.16.0.3	6156-FooterImageforSub-Dataverse	SQL	V4.16.0.3__6156-FooterImageforSub-Dataverse.sql	-88679435	dvnuser	2026-03-05 02:55:50.381012	0	t
11	4.17.0.1	5991-update-scribejava	SQL	V4.17.0.1__5991-update-scribejava.sql	-1195698165	dvnuser	2026-03-05 02:55:50.38531	1	t
12	4.17.0.2	3578-file-page-preview	SQL	V4.17.0.2__3578-file-page-preview.sql	-4976721	dvnuser	2026-03-05 02:55:50.390576	1	t
13	4.18.1.1	6459-contenttype-nullable	SQL	V4.18.1.1__6459-contenttype-nullable.sql	-294036505	dvnuser	2026-03-05 02:55:50.396299	0	t
14	4.19.0.1	6485 multistore	SQL	V4.19.0.1__6485_multistore.sql	-889428141	dvnuser	2026-03-05 02:55:50.401174	1	t
15	4.19.0.2	6644-update-editor-role-alias	SQL	V4.19.0.2__6644-update-editor-role-alias.sql	1822084145	dvnuser	2026-03-05 02:55:50.407898	0	t
16	4.20.0.1	2734-alter-data-table-add-orig-file-name	SQL	V4.20.0.1__2734-alter-data-table-add-orig-file-name.sql	-842134191	dvnuser	2026-03-05 02:55:50.415871	0	t
17	4.20.0.2	6748-configure-dropdown-toolname	SQL	V4.20.0.2__6748-configure-dropdown-toolname.sql	-222908387	dvnuser	2026-03-05 02:55:50.420044	1	t
18	4.20.0.3	6558-file-validation	SQL	V4.20.0.3__6558-file-validation.sql	1209461763	dvnuser	2026-03-05 02:55:50.426124	0	t
19	4.20.0.4	6936-maildomain-groups	SQL	V4.20.0.4__6936-maildomain-groups.sql	576953306	dvnuser	2026-03-05 02:55:50.430251	0	t
20	4.20.0.5	6505-zipdownload-jobs	SQL	V4.20.0.5__6505-zipdownload-jobs.sql	-409990981	dvnuser	2026-03-05 02:55:50.434449	1	t
21	5.0.0.1	6872-assign-storage-drivers-to-datasets	SQL	V5.0.0.1__6872-assign-storage-drivers-to-datasets.sql	-2016308089	dvnuser	2026-03-05 02:55:50.438825	0	t
22	5.1.1.1	7344-maildomaingroups-add-regex-flag	SQL	V5.1.1.1__7344-maildomaingroups-add-regex-flag.sql	1450587934	dvnuser	2026-03-05 02:55:50.44216	0	t
23	5.1.1.2	6919-preview-tools	SQL	V5.1.1.2__6919-preview-tools.sql	-806791328	dvnuser	2026-03-05 02:55:50.445693	3	t
24	5.2.0.1	7256-purge-referencedata	SQL	V5.2.0.1__7256-purge-referencedata.sql	-1946003894	dvnuser	2026-03-05 02:55:50.453898	4	t
25	5.3.0.1	7409-remove-worldmap-geoconnect	SQL	V5.3.0.1__7409-remove-worldmap-geoconnect.sql	-1002675895	dvnuser	2026-03-05 02:55:50.461671	1	t
26	5.3.0.2	7512-update-notification-types	SQL	V5.3.0.2__7512-update-notification-types.sql	1667988938	dvnuser	2026-03-05 02:55:50.466358	1	t
27	5.3.0.3	7551-expanded-compound-datasetfield-validation	SQL	V5.3.0.3__7551-expanded-compound-datasetfield-validation.sql	-1982379152	dvnuser	2026-03-05 02:55:50.474013	1	t
28	5.3.0.4	7563-workflow	SQL	V5.3.0.4__7563-workflow.sql	-1920845036	dvnuser	2026-03-05 02:55:50.479183	0	t
29	5.3.0.5	7564-workflow	SQL	V5.3.0.5__7564-workflow.sql	-1999395162	dvnuser	2026-03-05 02:55:50.482529	0	t
30	5.3.0.6	2419-deactivate-users	SQL	V5.3.0.6__2419-deactivate-users.sql	-655412585	dvnuser	2026-03-05 02:55:50.485914	1	t
31	5.4.1.1	7400-opendp-download	SQL	V5.4.1.1__7400-opendp-download.sql	-949830723	dvnuser	2026-03-05 02:55:50.491201	0	t
32	5.5.0.1	7826-set-deactivated-not-null	SQL	V5.5.0.1__7826-set-deactivated-not-null.sql	-1012465059	dvnuser	2026-03-05 02:55:50.495152	0	t
33	5.5.0.2	7177-newmetrics	SQL	V5.5.0.2__7177-newmetrics.sql	-1326087984	dvnuser	2026-03-05 02:55:50.498557	0	t
34	5.5.0.3	1724-anonymizedaccess	SQL	V5.5.0.3__1724-anonymizedaccess.sql	1852161397	dvnuser	2026-03-05 02:55:50.50319	0	t
35	5.5.0.4	7451-unique-constraint-storageidentifier	SQL	V5.5.0.4__7451-unique-constraint-storageidentifier.sql	818733346	dvnuser	2026-03-05 02:55:50.50824	2	t
36	5.5.0.5	7548-stored-procedure-update	SQL	V5.5.0.5__7548-stored-procedure-update.sql	2001406735	dvnuser	2026-03-05 02:55:50.514829	1	t
37	5.5.0.6	7388 i18n metadata	SQL	V5.5.0.6__7388_i18n_metadata.sql	328545903	dvnuser	2026-03-05 02:55:50.520723	1	t
38	5.6.0.1	7967 external-curation-labels	SQL	V5.6.0.1__7967_external-curation-labels.sql	-352549083	dvnuser	2026-03-05 02:55:50.525664	0	t
39	5.7.0.1	7743-add-embargo-fk-to-datafiles	SQL	V5.7.0.1__7743-add-embargo-fk-to-datafiles.sql	-1271421784	dvnuser	2026-03-05 02:55:50.529812	0	t
40	5.8.0.1	8109-add-manage-files-permission	SQL	V5.8.0.1__8109-add-manage-files-permission.sql	-2071480063	dvnuser	2026-03-05 02:55:50.533632	0	t
41	5.8.0.2	8018-invalid-characters	SQL	V5.8.0.2__8018-invalid-characters.sql	1609268027	dvnuser	2026-03-05 02:55:50.538718	1	t
42	5.8.0.3	7804-optimizations	SQL	V5.8.0.3__7804-optimizations.sql	-1189421779	dvnuser	2026-03-05 02:55:50.543627	1	t
43	5.9.0.1	7440-configurable-license-list	SQL	V5.9.0.1__7440-configurable-license-list.sql	-321570520	dvnuser	2026-03-05 02:55:50.549053	2	t
44	5.10.1.1	8533-semantic-updates	SQL	V5.10.1.1__8533-semantic-updates.sql	-821376407	dvnuser	2026-03-05 02:55:50.555044	1	t
45	5.10.1.2	7492-muting-notifications	SQL	V5.10.1.2__7492-muting-notifications.sql	-1357289336	dvnuser	2026-03-05 02:55:50.55988	5	t
46	5.10.1.3	8599-legacy-templates	SQL	V5.10.1.3__8599-legacy-templates.sql	-1765875789	dvnuser	2026-03-05 02:55:50.570788	3	t
47	5.11.1.1	8605-support-archival-status	SQL	V5.11.1.1__8605-support-archival-status.sql	-974370701	dvnuser	2026-03-05 02:55:50.579976	0	t
48	5.11.1.3	hdc-3b	SQL	V5.11.1.3__hdc-3b.sql	802240579	dvnuser	2026-03-05 02:55:50.58375	0	t
49	5.11.1.4	hdc-3b2-template-instructions	SQL	V5.11.1.4__hdc-3b2-template-instructions.sql	360641	dvnuser	2026-03-05 02:55:50.588225	1	t
50	5.11.1.5	8536-metadata-block-facet	SQL	V5.11.1.5__8536-metadata-block-facet.sql	-559424936	dvnuser	2026-03-05 02:55:50.59264	1	t
51	5.11.1.6	storageconstraint	SQL	V5.11.1.6__storageconstraint.sql	1046506990	dvnuser	2026-03-05 02:55:50.597177	0	t
52	5.12.1.1	8671-sorting licenses	SQL	V5.12.1.1__8671-sorting_licenses.sql	-830976828	dvnuser	2026-03-05 02:55:50.602573	1	t
53	5.12.1.2	7715-signed-urls-for-tools	SQL	V5.12.1.2__7715-signed-urls-for-tools.sql	1121369850	dvnuser	2026-03-05 02:55:50.608767	0	t
54	5.12.1.3	8840-improve-guestbook-estimates	SQL	V5.12.1.3__8840-improve-guestbook-estimates.sql	248532695	dvnuser	2026-03-05 02:55:50.612611	0	t
55	5.12.1.4	9153-extract-metadata	SQL	V5.12.1.4__9153-extract-metadata.sql	-1105319433	dvnuser	2026-03-05 02:55:50.616037	0	t
56	5.12.1.5	9231 custom headers oai requests	SQL	V5.12.1.5__9231_custom_headers_oai_requests.sql	-422402425	dvnuser	2026-03-05 02:55:50.619542	0	t
57	5.13.0.1	8092-timestamp-of-data-access-request	SQL	V5.13.0.1__8092-timestamp-of-data-access-request.sql	-1546175577	dvnuser	2026-03-05 02:55:50.622733	4	t
58	5.13.0.2	8889-filepids-in-collections	SQL	V5.13.0.2__8889-filepids-in-collections.sql	-202890369	dvnuser	2026-03-05 02:55:50.630669	0	t
59	6.0.0.1	9599-guestbook-at-request	SQL	V6.0.0.1__9599-guestbook-at-request.sql	-1055941626	dvnuser	2026-03-05 02:55:50.633781	5	t
60	6.0.0.2	9763-embargocitationdate	SQL	V6.0.0.2__9763-embargocitationdate.sql	663311928	dvnuser	2026-03-05 02:55:50.643396	1	t
61	6.0.0.3	10095-guestbook-at-request2	SQL	V6.0.0.3__10095-guestbook-at-request2.sql	1970682393	dvnuser	2026-03-05 02:55:50.648286	0	t
62	6.0.0.4	10093-privateurluser id update	SQL	V6.0.0.4__10093-privateurluser_id_update.sql	-206275259	dvnuser	2026-03-05 02:55:50.651793	0	t
63	6.0.0.5	8549-collection-quotas	SQL	V6.0.0.5__8549-collection-quotas.sql	940864067	dvnuser	2026-03-05 02:55:50.654707	4	t
64	6.0.0.6	9506-track-thumb-failures	SQL	V6.0.0.6__9506-track-thumb-failures.sql	68008433	dvnuser	2026-03-05 02:55:50.66366	0	t
65	6.1.0.1	9728-universe-variablemetadata	SQL	V6.1.0.1__9728-universe-variablemetadata.sql	-158011308	dvnuser	2026-03-05 02:55:50.668278	0	t
66	6.1.0.2	8524-store-tabular-files-with-varheaders	SQL	V6.1.0.2__8524-store-tabular-files-with-varheaders.sql	-10930835	dvnuser	2026-03-05 02:55:50.674769	0	t
67	6.1.0.3	9983-missing-unique-constraints	SQL	V6.1.0.3__9983-missing-unique-constraints.sql	1661392029	dvnuser	2026-03-05 02:55:50.678136	2	t
68	6.1.0.4	5645-geospatial-fieldname-fix	SQL	V6.1.0.4__5645-geospatial-fieldname-fix.sql	192364397	dvnuser	2026-03-05 02:55:50.683281	0	t
69	6.1.0.5	3623-multiple-pid-providers	SQL	V6.1.0.5__3623-multiple-pid-providers.sql	-1397880962	dvnuser	2026-03-05 02:55:50.68605	0	t
70	6.1.0.6		SQL	V6.1.0.6.sql	1100825351	dvnuser	2026-03-05 02:55:50.689766	0	t
71	6.1.0.7		SQL	V6.1.0.7.sql	1143395054	dvnuser	2026-03-05 02:55:50.693493	0	t
72	6.2.0.1		SQL	V6.2.0.1.sql	-1519923681	dvnuser	2026-03-05 02:55:50.696904	0	t
73	6.3.0.1		SQL	V6.3.0.1.sql	1522303490	dvnuser	2026-03-05 02:55:50.700639	0	t
74	6.3.0.2		SQL	V6.3.0.2.sql	780812626	dvnuser	2026-03-05 02:55:50.703877	0	t
75	6.3.0.3		SQL	V6.3.0.3.sql	585889070	dvnuser	2026-03-05 02:55:50.707118	1	t
76	6.4.0.1		SQL	V6.4.0.1.sql	-1127369468	dvnuser	2026-03-05 02:55:50.711476	0	t
77	6.4.0.2		SQL	V6.4.0.2.sql	-71245499	dvnuser	2026-03-05 02:55:50.714345	0	t
78	6.4.0.3		SQL	V6.4.0.3.sql	-2130844320	dvnuser	2026-03-05 02:55:50.723347	0	t
79	6.5.0.1		SQL	V6.5.0.1.sql	436375001	dvnuser	2026-03-05 02:55:50.728743	0	t
80	6.5.0.2		SQL	V6.5.0.2.sql	1651833462	dvnuser	2026-03-05 02:55:50.732614	0	t
81	6.5.0.3		SQL	V6.5.0.3.sql	901573359	dvnuser	2026-03-05 02:55:50.736797	0	t
82	6.5.0.4		SQL	V6.5.0.4.sql	549721598	dvnuser	2026-03-05 02:55:50.74055	0	t
83	6.5.0.5		SQL	V6.5.0.5.sql	-80408634	dvnuser	2026-03-05 02:55:50.744384	1	t
84	6.5.0.6		SQL	V6.5.0.6.sql	1869945754	dvnuser	2026-03-05 02:55:50.750566	1	t
85	6.5.0.7		SQL	V6.5.0.7.sql	-2060423642	dvnuser	2026-03-05 02:55:50.75539	0	t
86	6.5.0.8		SQL	V6.5.0.8.sql	-1218086545	dvnuser	2026-03-05 02:55:50.760574	1	t
87	6.5.0.9		SQL	V6.5.0.9.sql	1847474735	dvnuser	2026-03-05 02:55:50.766196	2	t
88	6.5.0.10		SQL	V6.5.0.10.sql	1150679532	dvnuser	2026-03-05 02:55:50.77236	0	t
89	6.5.0.11		SQL	V6.5.0.11.sql	-2145275269	dvnuser	2026-03-05 02:55:50.776305	2	t
90	6.5.0.12		SQL	V6.5.0.12.sql	-1390209251	dvnuser	2026-03-05 02:55:50.781454	0	t
91	6.6.0.1		SQL	V6.6.0.1.sql	1110314469	dvnuser	2026-03-05 02:55:50.784508	0	t
92	6.6.0.2		SQL	V6.6.0.2.sql	-586616564	dvnuser	2026-03-05 02:55:50.787737	0	t
93	6.6.0.3		SQL	V6.6.0.3.sql	141827169	dvnuser	2026-03-05 02:55:50.791195	2	t
94	6.7.1.1		SQL	V6.7.1.1.sql	893345516	dvnuser	2026-03-05 02:55:50.79752	1	t
95	6.7.1.2		SQL	V6.7.1.2.sql	-1610527213	dvnuser	2026-03-05 02:55:50.802014	0	t
96	6.8.0.1		SQL	V6.8.0.1.sql	27807233	dvnuser	2026-03-05 02:55:50.805869	3	t
97	6.8.0.2		SQL	V6.8.0.2.sql	2113186794	dvnuser	2026-03-05 02:55:50.813387	6	t
98	6.8.0.3		SQL	V6.8.0.3.sql	1892658442	dvnuser	2026-03-05 02:55:50.824405	1	t
99	6.8.0.4		SQL	V6.8.0.4.sql	-299956287	dvnuser	2026-03-05 02:55:50.829307	1	t
\.


--
-- Data for Name: foreignmetadatafieldmapping; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.foreignmetadatafieldmapping (id, datasetfieldname, foreignfieldxpath, isattribute, foreignmetadataformatmapping_id, parentfieldmapping_id) FROM stdin;
1	title	:title	f	1	\N
2	otherIdValue	:identifier	f	1	\N
3	authorName	:creator	f	1	\N
4	productionDate	:date	f	1	\N
5	keywordValue	:subject	f	1	\N
6	dsDescriptionValue	:description	f	1	\N
7	relatedMaterial	:relation	f	1	\N
8	publicationCitation	:isReferencedBy	f	1	\N
9	publicationURL	holdingsURI	t	1	8
10	publicationIDType	agency	t	1	8
11	publicationIDNumber	IDNo	t	1	8
12	otherGeographicCoverage	:coverage	f	1	\N
13	kindOfData	:type	f	1	\N
14	dataSources	:source	f	1	\N
15	authorAffiliation	affiliation	t	1	3
16	contributorName	:contributor	f	1	\N
17	contributorType	type	t	1	16
18	distributorName	:publisher	f	1	\N
19	language	:language	f	1	\N
\.


--
-- Data for Name: foreignmetadataformatmapping; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.foreignmetadataformatmapping (id, displayname, name, schemalocation, startelement) FROM stdin;
1	dcterms: DCMI Metadata Terms	http://purl.org/dc/terms/	http://dublincore.org/schemas/xmls/qdc/dcterms.xsd	entry
\.


--
-- Data for Name: globustaskinprogress; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.globustaskinprogress (id, globustoken, ruleid, starttime, taskid, tasktype, dataset_id, user_id) FROM stdin;
\.


--
-- Data for Name: guestbook; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.guestbook (id, createtime, emailrequired, enabled, institutionrequired, name, namerequired, positionrequired, dataverse_id) FROM stdin;
1	2026-03-05 02:55:50.83854	f	t	f	Default	f	f	\N
\.


--
-- Data for Name: guestbookresponse; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.guestbookresponse (id, email, eventtype, institution, name, "position", responsetime, sessionid, authenticateduser_id, datafile_id, dataset_id, datasetversion_id, guestbook_id) FROM stdin;
\.


--
-- Data for Name: harvestingclient; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.harvestingclient (id, allowharvestingmissingcvv, archivedescription, archiveurl, customhttpheaders, deleted, harveststyle, harvesttype, harvestingnow, harvestingset, harvestingurl, metadataprefix, name, scheduledayofweek, schedulehourofday, scheduleperiod, scheduled, sourcename, uselistrecords, useoaiidaspid, dataverse_id) FROM stdin;
\.


--
-- Data for Name: harvestingdataverseconfig; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.harvestingdataverseconfig (id, archivedescription, archiveurl, harveststyle, harvesttype, harvestingset, harvestingurl, dataverse_id) FROM stdin;
\.


--
-- Data for Name: ingestreport; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.ingestreport (id, endtime, report, starttime, status, type, datafile_id) FROM stdin;
\.


--
-- Data for Name: ingestrequest; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.ingestrequest (id, controlcard, forcetypecheck, labelsfile, textencoding, datafile_id) FROM stdin;
\.


--
-- Data for Name: ipv4range; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.ipv4range (id, bottomaslong, topaslong, owner_id) FROM stdin;
\.


--
-- Data for Name: ipv6range; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.ipv6range (id, bottoma, bottomb, bottomc, bottomd, topa, topb, topc, topd, owner_id) FROM stdin;
\.


--
-- Data for Name: license; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.license (id, active, iconurl, isdefault, language_code, name, rights_identifier, rights_identifier_scheme, scheme_uri, shortdescription, sortorder, uri) FROM stdin;
1	t	https://licensebuttons.net/p/zero/1.0/88x31.png	t	en	CC0 1.0	CC0-1.0	SPDX	https://spdx.org/licenses/	Creative Commons CC0 1.0 Universal Public Domain Dedication.	0	http://creativecommons.org/publicdomain/zero/1.0
2	t	https://licensebuttons.net/l/by/4.0/88x31.png	f	en	CC BY 4.0	CC-BY-4.0	SPDX	https://spdx.org/licenses/	Creative Commons Attribution 4.0 International License.	2	http://creativecommons.org/licenses/by/4.0
3	t	https://i.creativecommons.org/l/by-sa/4.0/88x31.png	f	\N	CC-BY-SA-4.0	\N	\N	\N	Creative Commons Attribution-ShareAlike 4.0 International License.	3	http://creativecommons.org/licenses/by-sa/4.0
4	t	https://i.creativecommons.org/l/by-nc/4.0/88x31.png	f	\N	CC-BY-NC-4.0	\N	\N	\N	Creative Commons Attribution-NonCommercial 4.0 International License.	4	http://creativecommons.org/licenses/by-nc/4.0
5	t	https://i.creativecommons.org/l/by-nd/4.0/88x31.png	f	\N	CC-BY-ND-4.0	\N	\N	\N	Creative Commons Attribution-NoDerivatives 4.0 International License.	5	http://creativecommons.org/licenses/by-nd/4.0
6	t	https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png	f	\N	CC-BY-NC-ND-4.0	\N	\N	\N	Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.	6	http://creativecommons.org/licenses/by-nc-nd/4.0
7	t	https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png	f	\N	CC-BY-NC-SA-4.0	\N	\N	\N	Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.	7	http://creativecommons.org/licenses/by-nc-sa/4.0
\.


--
-- Data for Name: makedatacountprocessstate; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.makedatacountprocessstate (id, server, state, statechangetimestamp, yearmonth) FROM stdin;
\.


--
-- Data for Name: metadatablock; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.metadatablock (id, displayname, name, namespaceuri, owner_id) FROM stdin;
1	Citation Metadata	citation	https://dataverse.org/schema/citation/	\N
2	Geospatial Metadata	geospatial	\N	\N
3	Social Science and Humanities Metadata	socialscience	\N	\N
4	Astronomy and Astrophysics Metadata	astrophysics	\N	\N
5	Life Sciences Metadata	biomedical	\N	\N
6	Journal Metadata	journal	\N	\N
7	3D Objects Metadata	3dobjects	\N	\N
8	Data Vault Metadata	dansDataVaultMetadata	https://schemas.dans.knaw.nl/metadatablock/dansDataVaultMetadata#	\N
9	Computation for Rational Design – Delft Custom Lab Metadata	comrades-dcl-metadata	\N	\N
10	DCCD Metadata	dccd	\N	\N
\.


--
-- Data for Name: metric; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.metric (id, datalocation, daystring, lastcalleddate, name, valuejson, dataverse_id) FROM stdin;
\.


--
-- Data for Name: oairecord; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.oairecord (id, globalid, lastupdatetime, removed, setname) FROM stdin;
\.


--
-- Data for Name: oaiset; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.oaiset (id, definition, deleted, description, name, spec, updateinprogress, version) FROM stdin;
\.


--
-- Data for Name: oauth2tokendata; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.oauth2tokendata (id, accesstoken, expirydate, oauthproviderid, rawresponse, refreshtoken, tokentype, user_id) FROM stdin;
\.


--
-- Data for Name: passwordresetdata; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.passwordresetdata (id, created, expires, reason, token, builtinuser_id) FROM stdin;
\.


--
-- Data for Name: pendingworkflowinvocation; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.pendingworkflowinvocation (invocationid, datasetexternallyreleased, ipaddress, lockid, nextminorversionnumber, nextversionnumber, pendingstepidx, typeordinal, userid, workflow_id, dataset_id) FROM stdin;
\.


--
-- Data for Name: pendingworkflowinvocation_localdata; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.pendingworkflowinvocation_localdata (pendingworkflowinvocation_invocationid, localdata, localdata_key) FROM stdin;
\.


--
-- Data for Name: persistedglobalgroup; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.persistedglobalgroup (id, dtype, description, displayname, persistedgroupalias, emaildomains, isregex) FROM stdin;
\.


--
-- Data for Name: retention; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.retention (id, dateunavailable, reason) FROM stdin;
1	2027-06-11	just for a while
\.


--
-- Data for Name: roleassignment; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.roleassignment (id, assigneeidentifier, privateurlanonymizedaccess, privateurltoken, definitionpoint_id, role_id) FROM stdin;
1	@dataverseAdmin	f	\N	1	1
2	:authenticated-users	f	\N	1	5
3	@user001	f	\N	1	12
4	@user002	f	\N	1	9
5	@datamanager001	f	\N	1	9
6	@dataverseAdmin	f	\N	2	1
7	@dataverseAdmin	f	\N	3	1
8	@user001	f	\N	4	11
9	@user001	f	\N	6	6
10	@user001	f	\N	8	6
11	@dataverseAdmin	f	\N	10	6
12	@dataverseAdmin	f	\N	11	6
13	@dataverseAdmin	f	\N	15	11
\.


--
-- Data for Name: roleassignmenthistory; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.roleassignmenthistory (entry_id, action_by_identifier, action_timestamp, action_type, assignee_identifier, definition_point_id, definition_point_identifier, role_alias, role_assignment_id, role_id) FROM stdin;
1	@dataverseAdmin	2026-03-05 03:06:05.566	ASSIGN	:authenticated-users	1	root	dsContributor	2	5
2	@dataverseAdmin	2026-03-05 03:06:25.212	ASSIGN	@user001	1	root	swordpublisher	3	12
3	@dataverseAdmin	2026-03-05 03:06:25.818	ASSIGN	@user002	1	root	datamanager	4	9
4	@dataverseAdmin	2026-03-05 03:06:26.329	ASSIGN	@datamanager001	1	root	datamanager	5	9
5	@dataverseAdmin	2026-03-05 03:10:12.543	ASSIGN	@dataverseAdmin	2	dans	admin	6	1
6	@dataverseAdmin	2026-03-05 03:10:14.016	ASSIGN	@dataverseAdmin	3	general	admin	7	1
7	@user001	2026-03-05 03:16:11.572	ASSIGN	@user001	4	doi:10.5072/DVNL/V0DKKR	contributorplus	8	11
8	@user001	2026-03-05 03:19:11.09	ASSIGN	@user001	6	doi:10.5072/DVNL/CUAIFJ	contributor	9	6
9	@user001	2026-03-05 03:22:03.525	ASSIGN	@user001	8	doi:10.5072/DVNL/RGE3TU	contributor	10	6
10	@dataverseAdmin	2026-06-10 10:23:32.586	ASSIGN	@dataverseAdmin	10	doi:10.5072/DVNL/W1RSLU	contributor	11	6
11	@dataverseAdmin	2026-06-10 10:24:45.902	ASSIGN	@dataverseAdmin	11	doi:10.5072/DVNL/KBNAKW	contributor	12	6
12	@dataverseAdmin	2026-06-10 12:52:28.91	ASSIGN	@dataverseAdmin	15	doi:10.5072/DVNL/QN4JZY	contributorplus	13	11
\.


--
-- Data for Name: savedsearch; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.savedsearch (id, query, creator_id, definitionpoint_id) FROM stdin;
\.


--
-- Data for Name: savedsearchfilterquery; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.savedsearchfilterquery (id, filterquery, savedsearch_id) FROM stdin;
\.


--
-- Data for Name: sequence; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.sequence (seq_name, seq_count) FROM stdin;
SEQ_GEN	0
\.


--
-- Data for Name: setting; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.setting (id, content, lang, name) FROM stdin;
2	/dataverseuser.xhtml?editMode=CREATE		:SignUpUrl
4	localhost-only		:BlockedApiPolicy
5	native/http		:UploadMethods
6	admin,builtin-users		:BlockedApiEndpoints
7	&#160;DANS		:FooterCopyright
1	True		:AllowSignUp
12	SHA-1		:FileFixityChecksumAlgorithm
13	False		:FilePIDsEnabled
14	10000000000		:MaxFileUploadSizeInBytes
15	true		:ExcludeEmailFromExport
16	true		:ShowMuteOptions
17	CONFIRMEMAIL,CREATEACC,GRANTFILEACCESS,REJECTFILEACCESS,REQUESTFILEACCESS,RETURNEDDS,SUBMITTEDDS		:NeverMuted
18	<!DOCTYPE html>\n<html>\n<body>\n\n<h1>DataverseNL General Terms of Use</h1>\n<p>Version: October 7, 2019</p>\n\n<h2>Content</h2>\n<ol>\n    <li>Acceptance of Terms of Use </li>\n    <li>Modification of Terms of Use</li>\n    <li>Definitions</li>\n    <li>Registration</li>\n    <li>User Submissions</li>\n    <li>Rules and Conduct</li>\n    <li>Privacy</li>\n    <li>Termination</li>\n    <li>No Warranties</li>\n    <li>Limitation of Liability</li>\n    <li>Indemnification</li>\n    <li>Dispute Resolution</li>\n    <li>Integration and Severability</li>\n    <li>Miscellaneous</li>\n    <li>Copyright and Trademark Notices </li>\n</ol>\n\n<h2>1. Acceptance of Terms of Use </h2>\n<p>The following terms and conditions govern all use of the DataverseNL website (<a href="https://dataverse.nl/">https://dataverse.nl/</a>) (the Site), the DataverseNL demonstration website (<a href="https://demo.dataverse.nl">https://demo.dataverse.nl</a>) and the services available on or at the Site (taken together, the Service). The Service is operated by Data Archiving and Networked Services (DANS). The Service is offered subject to acceptance without modification of all of the terms and conditions contained herein (Terms of Use) and all other operating rules, policies and procedures that may be published from time to time on this Site by DANS. </p>\n<p>You represent and warrant that you are not under any obligation or restriction created by law, contract or otherwise that would prevent you from entering into and fully performing these Terms of Use. </p>\n<p>By clicking “I accept” and/or by your use of the Service, you agree and accept all terms in this General Terms of Use , hereafter “Agreement”.</p>\n\n<h2>2. Modification of Terms of Use </h2>\n<p>DataverseNL reserves the right to modify or replace any of the Terms of Use at any time. It is your responsibility to check the Agreement periodically for changes. Your continued use of the Service following the posting of any changes to the Agreement constitutes acceptance of those changes. </p>\n\n<h2>3. Definitions</h2>\n<p>Account– A User-controlled means of access to DataverseNL. This can be an institutional account via the Federated login facility of SURFconext, or a local account that is protected by a User-created login username and password, with which Users can obtain access to DataverseNL Dataverse’s uploading and downloading functionalities.</p>\n<p>Administrator– The User who created, controls and is the main organizer, curator, and manager of a particular dataverse.</p>\n<p>Agreement– The General Terms of Use in its entirety.</p>\n<p>Author– The person(s) from whom the data within the dataset originated; the person(s) who conducted the research that led to the creation of the dataset. This person can but need not be the same as the Depositor.</p>\n<p>Content– Any information, data, text, software, scripts, graphics, and interactive features found on the DANS DataverseNL application.</p>\n<p>Curator - a person who can edit License + Terms, edit Permissions, and publish datasets.</p>\n<p>Data Use Agreement– This is the restricted data usage license agreement option that DataverseNL offers. If applied to a User Submission, the Data Use Agreement will be a legally-binding license contract between the Depositor and any Downloader of that User Submission.</p>\n<p>Data Usage License Agreement– The license agreement between a Depositor and a Downloader governing the limits and restrictions (or lack thereof) of how the downloaded User Submissions can be used.</p>\n<p>Dataset– A study, experiment, set of observations, or publication that is uploaded by a User. A dataset can comprise a single file or multiple files.</p>\n<p>Dataverse– A virtual container with which to store research data studies (including datasets and other dataverses) that can be customized and managed by its owner.</p>\n<p>Depositor– The User who uploads a collection of data files as a dataset to a dataverse on the application.</p>\n<p>DANS DataverseNL – The repository application server as a whole, including all Services, Content, and related features.</p>\n<p>Metadata– Accompanying information, either in a separate file or otherwise included in the dataset, about a particular dataset or dataverse, including but not limited to Author’s name, publishing date, title of data contents, description of contents, and other such related information.</p>\n<p>Publish– A function available for User Submissions by which Users can make their dataverse and/or their dataset containing data files publicly available and publicly searchable on DataverseNL search engine and third-party search engines (e.g., NARCIS, Google Search or Bing Search).</p>\n<p>Registration Information– Information required to register for an Account, including but not limited to name, email, institution and position. </p>\n<p>Restricted User Submissions – Any User Submissions that are published with either Data Use Agreement or with a customized Data Usage License Agreement that the Depositor drafts and/or designates for the Submission.</p>\n<p>Service– the DANS DataverseNL application and all of the available services, functions, and capabilities afforded on the application.</p>\n<p>Site– the DANS DataverseNL application and server.</p>\n<p>Spamming– Any unauthorized or unsolicited advertising, junk or bulk e-mail, messages, comments, or other communications directly or indirectly stemming from use of DataverseNL, including but not limited to comments posted to Author’s dataset pages and messages or other communications sent to User’s email addresses, accounts, or other means of contact.</p>\n<p>Unrestricted User Submissions– Any User Submissions that are published with a default CC0 default public domain dedication waiver agreement.</p>\n<p>Use of the Service– Any access to, use of, or other action involving the DANS DataverseNL application’s functions, services, resources, and repository of datasets, including but not limited to any uploading, posting, submitting, storing, searching for, downloading, distributing, facilitating distributions, and otherwise utilizing any Content found on the Harvard Dataverse application.</p>\n<p>User– Any individual or entity who owns and/or controls a registered account on DANS DataverseNL.</p>\n<p>User Submissions– Uploaded dataverses and datasets.</p>\n\n<h2>4. Registration</h2>\n<p>\n    As a condition to using the Service, you may be required to register with DataverseNL. If you are affiliated to a participating institution, you should use the login facility provided by your institution and DataverseNL (Federated Login Facility) and authenticate with your institution. Your institution may authorise your use of DataverseNL and allow you to create a DataverseNL Account. \n    If you are not affiliated with one of the participating institutions, you can create a local Account within DataverseNL. By registering for a local Account with the Service, you must enter your real name and a valid email address. You may in addition register your affiliation, and type of employment with your Account. You shall provide DataverseNL with accurate, complete, and updated registration information. Failure to do so shall constitute a breach of this Agreement, which may result in immediate termination of your DataverseNL Account. You shall not (i) select or use as a DataverseNL Login Name a name of another person with the intent to impersonate that person; (ii) use as a DataverseNL Login Name a name subject to any rights of a person other than you without appropriate authorization; or (iii) use as a DataverseNL Screen Name a name that is otherwise offensive, vulgar or obscene. DANS reserves the right to refuse registration of, or cancel a DataverseNL User Account in its sole discretion. You are solely responsible for activity that occurs on your Account and shall be responsible for maintaining the confidentiality of your DataverseNL and/or institution password. You shall never use another user's Account without such other user's express permission. You will immediately notify DANS in writing to <a href="mailto:info@dataverse.nl">info@dataverse.nl</a> of any unauthorized use of your Account, or other Account related security breach of which you are aware. \n</p>\n\n<h2>5. User Submissions</h2>\n<p>\n    Depending on the policies of your institute the Service provides you with the ability to upload, submit, disclose, distribute or otherwise post (hereafter, posting) Content to the Service (User Submissions) and to allow other users to do so. The Service provides you with the ability to display, organize, and accept Content through creating a Dataverse. For purposes of this Agreement, "Content" includes, without limitation, any information, data, text, software, scripts, graphics, and interactive features generated, provided, or otherwise made accessible on or through the Service.\n    An important part of the mission of DANS is to acquire and preserve research data and provide access to it. DANS archives the Content at multiple locations. DANS will use good archival practices to retain Content deposited into the Site.\n</p>\n<p>\n    You will be held legally and financially responsible for damages to any of the participants in DataverseNL if Content you contribute violates this Agreement.\n    The Service gives the Depositor the ability to restrict access to User Submissions to specified Accounts (Restricted User Submissions). All other User Submissions shall be deemed Unrestricted User Submissions.<br>\n    You give permission and any required licenses to DANS to make the Content available for archiving, preservation and access. You represent and warrant you are lawfully entitled and have full authority to license DANS to archive, preserve and give access to the User Submissions in the ways described in this Agreement.\n    You are solely responsible for the User Submissions you post on or through the Service. DANS does not review or endorse User Submissions and has no control over any User Submission. \n</p>\n<p>DANS has no obligation to monitor the Site, Service, Content, or User Submissions. DANS may remove any User Submission at any time if it does not comply with this Agreement for posting User Content. </p>\n\n<h2>6. Rules and Conduct</h2>\n<p>By posting User Submissions on or at the Site, or otherwise through the Service, to your Dataverse or other Dataverses, or by allowing others to do so, you make the following representations and warranties to DataverseNL: </p>\n<ol>\n    <li>You shall use the Service in agreement with the relevant VSNU and university codes of conduct for scientific integrity and for the use of personal data in research. </li>\n    <li>You shall ensure that Content meets this Agreement and the terms of your institute.</li>\n    <li>You shall, in the event of processing personal data as referred to in the General Data Protection Regulation (GDPR), only include personal data within a data file in a dataset that is subjected to Data Usage License Agreement with appropriate usage requirements. This means that any Content (i.e. Metadata, file names) that becomes public shall not contain personal data, except for personal data necessary for the accountability of the dataset (i.e. the author(s)).</li>\n    <li>You shall not use the Service for any purpose that is prohibited by this Agreement. </li>\n</ol>\n<p>You shall not (or permit others to) either (a) take any action or (b) upload, download, post, submit or otherwise distribute or facilitate distribution of any Content that: </p>\n<ol>\n    <li>Infringes the copyrights or other intellectual property rights, including, but not limited to any patent (applications), know how, trademark, trade secret, right of publicity or other right of any other person or entity; or </li>\n    <li>Is unlawful, threatening, abusive, harassing, defamatory, libellous, deceptive, fraudulent, invasive of another's privacy, tortious, obscene, offensive, or profane; or </li>\n    <li>Constitutes unauthorized or unsolicited advertising, junk or bulk e-mail ("spamming"); or </li>\n    <li>Contains software viruses or any other computer codes, files, or programs that are designed or intended to disrupt, damage, limit or interfere with the proper function of any software, hardware, or telecommunications equipment or to damage or obtain unauthorized access to any system, data or other information of DANS or any third party. </li>\n    <li>Imposes or may impose (as determined by DANS in its sole discretion) an unreasonable or disproportionately large load on DANS's (or its third party providers') infrastructure; (ii) interfere or attempt to interfere with the proper working of the Service or any activities conducted on the Service; or (iii) bypass any measures DataverseNL may use to prevent or restrict access to the Service (or other accounts, computer systems or networks connected to the Service). </li>\n</ol>\n<p>You will promptly notify DataverseNL of any confidentiality, privacy or data protection, licensing, or intellectual property issues regarding the User Submissions. <br>You acknowledge that DataverseNL will not be liable for any loss of or damage to the User Submissions, either in whole or in part. </p>\n\n<h2>7. Privacy</h2>\n<p>\n    If you are an Author or Depositor of a Dataset, your name will be part of the metadata of the Dataset. \n    By submitting an access request for a restricted dataset, your name and email address as included in your Account are shared with the Depositor, Curator or Administrator of the dataset.\n    When you want to download files, with or without an account, you may be asked to complete a Guestbook first. Your data will be shown to the depositor, curator or administrator of the relevant dataset. \n    The information in your Account may be used to contact you with regard to DataverseNL. DataverseNL will not actively distribute or in other ways provide access to your Account information to third parties.\n</p>\n\n<h2>8. Termination</h2>\n<p>\n    If you wish to terminate your Account, you may notify your institution. For contact information see: <a href="https://dans.knaw.nl/en/about/services/DataverseNL/support">https://dans.knaw.nl/en/about/services/DataverseNL/support</a>.\n    When You do not comply with the Rules and Conduct of this Agreement, or when your participating institution files a request to do so, DataverseNL may terminate your account and/or your access to all or any part of the Service at any time, with or without notice.\n    All provisions of this Agreement which by their nature should survive termination shall survive termination, including, without limitation, warranty disclaimers, indemnity and limitations of liability. \n</p>\n\n<h2>9. No Warranties</h2>\n<p>The Service (including, without limitation, the Content and the User Submissions) is provided 'as is' and 'as available' and is without warranty of any kind, express or implied, including but not limited to, the implied warranties of title, non-infringement, merchantability and fitness for a particular purpose. DANS makes no warranties, express or implied, by operation of law or otherwise, regarding or relating to the Service or Content provided. More specific, DANS does NOT warrant that: </p>\n<ol>\n    <li>The Content or User Submissions are timely, accurate, complete, reliable or correct;</li>\n    <li>The Service will be secure or available at any particular time or location; </li>\n    <li>Any defects or errors will be corrected; the Content or User Submissions are free of viruses or other harmful components ; or </li>\n    <li>The results of using the Service will meet your requirements. </li>\n</ol>\n<p>Your use of the Service is solely at your own risk. </p>\n\n<h2>10. Limitation of Liability</h2>\n<p>In no event shall DANS be liable with respect to the Service or any Content or User Submissions (i) for any lost profits or damages of any kind, (ii) for any bugs, software viruses or any other computer codes, files or programs designated or intended to disrupt, damage, limit or interfere with the proper function of the Service, or (iii) for any errors or omissions in any Content or User Submissions or for any loss or damage of any kind incurred as a result of your use of any Content or User Submission posted, email, transmitted or otherwise made available on or through the Service. </p>\n\n<h2>11. Indemnification</h2>\n<p>You will indemnify and hold DANS harmless from and against any and all loss, cost, expense, liability, or damage, including, without limitation, all reasonable attorneys' fees and court costs, arising from the i) use or misuse of the Service; (ii) your access to the Site, use of the Services, violation of this Agreement by you; or (iii) the infringement by you, or any third party using your Account, of any intellectual property or other right of any person or entity. Such losses, costs, expenses, damages, or liabilities shall include, without limitation, all actual, general, special, and consequential damages. </p>\n\n<h2>12. Dispute Resolution</h2>\n<p>This Agreement shall be governed by and interpreted in accordance with the laws of the Netherlands. Any dispute arising under or in connection with these Terms of Use and which cannot be settled amicably between you and DANS shall be finally settled by the competent courts of Amsterdam. </p>\n\n<h2>13. Integration and Severability</h2>\n<p>The Terms of Use are the entire agreement between you and DANS with respect to the Service and use of this Site, and supersede all prior or contemporaneous communications and proposals (whether oral, written or electronic) between you and DANS with respect to this Service (but excluding the use of any software which may be subject to a separate end-user license agreement). </p>\n\n<h2>14. Miscellaneous</h2>\n<p>The Terms of Use are personal to you, and are not assignable, transferable or sublicensable by you except with DANS's prior written consent. DANS may assign, transfer or delegate any of its rights and obligations hereunder without consent. No agency, partnership, joint venture, or employment relationship is created as a result of this Agreement of Use and neither party has any authority of any kind to bind the other in any respect. All notices under this Agreement will be in writing. </p>\n\n<h2>15. Copyright and Trademark Notices</h2>\n<p>You acknowledge that the copyright in any additional data added by DANS to the user materials, and any search software, user guides, documentation and any other intellectual property that is prepared by DANS to assist users in using the User Submissions will belong to DANS or the users creating the Content (respectively). </p>\n<p>You may not use the name "DANS" or “DataverseNL” (as an abbreviation or in full, alone or as part of another name) in advertising or promotional materials without DANS's prior written approval. DataverseNL and Dataverse logo are neither trademarks nor registered trademarks of DANS. </p>\n\n</body>\n</html>		:ApplicationTermsOfUse
19	true		:SolrFullTextIndexing
20	3000000		:SolrMaxFileSizeForFullTextIndexing
21	noreply@datastations.nl		:SystemEmail
22	2000		:ZipUploadFilesLimit
23	10000000000		:ZipDownloadLimit
24	false		:ShibIdpSelectEnabled
25	author, datasetContact, contributor, depositor, grantNumber, publication, distributor, producer		:AnonymizedFieldTypeNames
26	0		:TabularIngestSizeLimit
27	{"default": "true", "orcid-sandbox": "false"}		:AllowRemoteAuthSignUp
28	/var/opt/dans.knaw.nl/tmp/dve-outbox		:BagItLocalPath
29	edu.harvard.iq.dataverse.engine.command.impl.LocalSubmitToArchiveCommand		:ArchiverClassName
30	:BagItLocalPath,:BagGeneratorThreads		:ArchiverSettings
31	/etc/opt/dans.knaw.nl/dataverse-branding/custom-footer.html		:FooterCustomizationFile
32	/etc/opt/dans.knaw.nl/dataverse-branding/custom-stylesheet.css		:StyleCustomizationFile
33	/logos/branding/DataverseNL-logo-small.png		:LogoCustomizationFile
34	https://dans.knaw.nl/en/data-services/dataversenl/		:NavbarAboutUrl
35	https://dans.knaw.nl/en/data-services/dataversenl/institutions		:NavbarSupportUrl
36	https://dans.knaw.nl/en/data-services/dataversenl/user-guide/		:NavbarGuidesUrl
37	shib		:DefaultAuthProvider
38	24		:MaxEmbargoDurationInMonths
39	12		:MinRetentionDurationInMonths
40	[{"field-name": "authorAffiliation", "term-uri-field": "authorAffiliation", "js-url": ["/custom/ror.js", "/custom/cvocutils.js"], "protocol": "ror", "retrieval-uri": "https://api.ror.org/v2/organizations/{0}", "allow-free-text": true, "prefix": "https://ror.org/", "managed-fields": {}, "languages": "", "vocabs": {"rors": {"uriSpace": "https://ror.org/"}}, "retrieval-filtering": {"@context": {"termName": "https://schema.org/name", "scheme": "http://www.w3.org/2004/02/skos/core#inScheme", "lang": "@language", "content": "@value"}, "scheme": {"pattern": "http://www.grid.ac/ontology/"}, "termName": {"pattern": "{0}", "params": ["/names/types=ror_display/value"]}, "@type": {"pattern": "https://schema.org/Organization"}}}]		:CVocConf
42	{"Datastations default Labels": ["Curator Assigned", "Curation Started", "Author Contacted", "Awaiting Article Publication", "Publication on Hold"], "DataverseNL default Labels": ["Curator Assigned", "Curation Started", "Author Contacted", "Waiting for Reply", "Second Review", "Awaiting Final Approval", "Awaiting Article Publication", "Publication on Hold", "Author Contacted for Information", "Author Contacted for Adjustments"]}		:AllowedCurationLabels
43	true		:OAIServerEnabled
44	/etc/opt/dans.knaw.nl/dataverse-branding/analytics-code.html		:WebAnalyticsCode
45	1		:PrePublishDatasetWorkflowId
46	/dataverse-metrics		:MetricsUrl
47	schacHomeOrganization		:ShibAffiliationAttribute
48	/etc/opt/dans.knaw.nl/dataverse-branding/custom-home.html		:HomePageCustomizationFile
\.


--
-- Data for Name: shibgroup; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.shibgroup (id, attribute, name, pattern) FROM stdin;
\.


--
-- Data for Name: storagequota; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.storagequota (id, allocation, definitionpoint_id) FROM stdin;
\.


--
-- Data for Name: storagesite; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.storagesite (id, hostname, name, primarystorage, transferprotocols) FROM stdin;
\.


--
-- Data for Name: storageuse; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.storageuse (id, sizeinbytes, dvobjectcontainer_id) FROM stdin;
4	242994	4
2	65025	2
5	65025	6
6	1240972	8
7	0	10
3	1953674	3
8	712702	11
9	712702	15
1	2974395	1
\.


--
-- Data for Name: summarystatistic; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.summarystatistic (id, type, value, datavariable_id) FROM stdin;
\.


--
-- Data for Name: template; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.template (id, createtime, instructions, name, usagecount, dataverse_id, termsofuseandaccess_id) FROM stdin;
\.


--
-- Data for Name: termsofuseandaccess; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.termsofuseandaccess (id, availabilitystatus, citationrequirements, conditions, confidentialitydeclaration, contactforaccess, dataaccessplace, depositorrequirements, disclaimer, fileaccessrequest, originalarchive, restrictions, sizeofcollection, specialpermissions, studycompletion, termsofaccess, termsofuse, license_id) FROM stdin;
1	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	\N	\N	\N	\N	\N	1
2	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	\N	\N	\N	\N	\N	1
3	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	\N	\N	\N	\N	\N	1
4	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	\N	\N	\N	\N	\N	\N	1
5	as	cr	c	cd	cfa	dap	dr	d	t	oa	r	soc	sp	sc	personal use only	tou	\N
6	as	cr	c	cd	cfa	dap	dr	d	t	oa	r	soc	sp	sc	zo maar	tou	\N
\.


--
-- Data for Name: userbannermessage; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.userbannermessage (id, bannerdismissaltime, bannermessage_id, user_id) FROM stdin;
\.


--
-- Data for Name: usernotification; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.usernotification (id, additionalinfo, emailed, objectid, readnotification, senddate, type, requestor_id, user_id) FROM stdin;
1	\N	f	1	f	2026-03-05 02:56:20.877	2	\N	1
2	\N	f	\N	f	2026-03-05 03:06:21.462	4	\N	2
3	\N	f	\N	f	2026-03-05 03:06:21.852	4	\N	3
4	\N	f	\N	f	2026-03-05 03:06:21.979	4	\N	4
5	\N	f	\N	f	2026-03-05 03:06:22.091	4	\N	5
6	\N	f	\N	f	2026-03-05 03:06:22.204	4	\N	6
7	\N	f	\N	f	2026-03-05 03:06:22.306	4	\N	7
8	\N	f	1	f	2026-03-05 03:06:29.583	0	\N	1
9	\N	f	1	f	2026-03-05 03:06:29.596	0	\N	3
10	\N	f	1	f	2026-03-05 03:06:29.602	0	\N	7
11	\N	f	2	f	2026-03-05 03:10:12.519	2	\N	1
12	\N	f	3	f	2026-03-05 03:10:14.007	2	\N	1
13	\N	f	2	f	2026-03-05 03:10:14.538	0	\N	1
14	\N	f	3	f	2026-03-05 03:10:15.033	0	\N	1
15	\N	t	1	f	2026-03-05 03:16:11.071	3	\N	2
16	\N	t	1	f	2026-03-05 03:16:20.100254	19	\N	2
17	\N	t	1	f	2026-03-05 03:16:20.758764	19	\N	2
18	\N	t	1	f	2026-03-05 03:16:20.791	7	\N	7
19	\N	t	1	f	2026-03-05 03:16:20.791	7	\N	1
20	\N	t	1	f	2026-03-05 03:16:20.791	7	\N	2
21	\N	t	1	f	2026-03-05 03:16:20.791	7	\N	3
22	\N	t	2	f	2026-03-05 03:19:10.867	3	\N	2
23	\N	t	2	f	2026-03-05 03:19:16.73685	19	\N	2
24	\N	t	2	f	2026-03-05 03:19:17.066655	19	\N	2
25	\N	t	2	f	2026-03-05 03:19:17.08	7	\N	1
26	\N	t	2	f	2026-03-05 03:19:17.08	7	\N	2
27	\N	t	3	f	2026-03-05 03:22:03.267	3	\N	2
28	\N	t	3	f	2026-03-05 03:22:13.414296	19	\N	2
29	\N	t	3	f	2026-03-05 03:22:13.748717	19	\N	2
30	\N	t	3	f	2026-03-05 03:22:13.767	7	\N	1
31	\N	t	3	f	2026-03-05 03:22:13.767	7	\N	2
32	\N	t	4	f	2026-06-10 10:23:32.518	3	\N	1
33	\N	t	5	f	2026-06-10 10:24:45.869	3	\N	1
34	\N	t	5	f	2026-06-10 10:29:10.515094	19	\N	1
35	\N	t	5	f	2026-06-10 10:29:11.098756	19	\N	1
36	\N	t	5	f	2026-06-10 10:29:11.114	7	\N	1
37	\N	t	4	f	2026-06-10 12:28:30.144741	19	\N	1
38	\N	t	4	f	2026-06-10 12:28:30.460196	19	\N	1
39	\N	t	4	f	2026-06-10 12:28:30.478	7	\N	1
40	\N	t	6	f	2026-06-10 12:52:28.829	3	\N	1
41	\N	t	6	f	2026-06-10 12:54:10.137437	19	\N	1
42	\N	t	6	f	2026-06-10 12:54:10.695733	19	\N	1
43	\N	t	6	f	2026-06-10 12:54:10.714	7	\N	7
44	\N	t	6	f	2026-06-10 12:54:10.714	7	\N	1
45	\N	t	6	f	2026-06-10 12:54:10.714	7	\N	3
\.


--
-- Data for Name: vargroup; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.vargroup (id, label, filemetadata_id) FROM stdin;
\.


--
-- Data for Name: vargroup_datavariable; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.vargroup_datavariable (vargroup_id, varsingroup_id) FROM stdin;
\.


--
-- Data for Name: variablecategory; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.variablecategory (id, catorder, frequency, label, missing, value, datavariable_id) FROM stdin;
\.


--
-- Data for Name: variablemetadata; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.variablemetadata (id, interviewinstruction, isweightvar, label, literalquestion, notes, postquestion, universe, weighted, datavariable_id, filemetadata_id, weightvariable_id) FROM stdin;
\.


--
-- Data for Name: variablerange; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.variablerange (id, beginvalue, beginvaluetype, endvalue, endvaluetype, datavariable_id) FROM stdin;
\.


--
-- Data for Name: variablerangeitem; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.variablerangeitem (id, value, datavariable_id) FROM stdin;
\.


--
-- Data for Name: workflow; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.workflow (id, name) FROM stdin;
1	Data Station PrePublishDataset
\.


--
-- Data for Name: workflowcomment; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.workflowcomment (id, created, message, tobeshown, type, authenticateduser_id, datasetversion_id) FROM stdin;
1	2026-03-05 03:16:20.115	An external workflow to scan for viruses has completed and found no threats in the dataset	t	WORKFLOW_SUCCESS	2	1
2	2026-03-05 03:16:20.78		t	WORKFLOW_SUCCESS	2	1
3	2026-03-05 03:19:16.745	An external workflow to scan for viruses has completed and found no threats in the dataset	f	WORKFLOW_SUCCESS	2	2
4	2026-03-05 03:19:17.076		f	WORKFLOW_SUCCESS	2	2
5	2026-03-05 03:22:13.426	An external workflow to scan for viruses has completed and found no threats in the dataset	t	WORKFLOW_SUCCESS	2	3
6	2026-03-05 03:22:13.761		t	WORKFLOW_SUCCESS	2	3
7	2026-06-10 10:29:10.523	An external workflow to scan for viruses has completed and found no threats in the dataset	f	WORKFLOW_SUCCESS	1	5
8	2026-06-10 10:29:11.109		f	WORKFLOW_SUCCESS	1	5
9	2026-06-10 12:28:30.152	An external workflow to scan for viruses has completed and found no threats in the dataset	f	WORKFLOW_SUCCESS	1	4
10	2026-06-10 12:28:30.471		f	WORKFLOW_SUCCESS	1	4
11	2026-06-10 12:54:10.161	An external workflow to scan for viruses has completed and found no threats in the dataset	f	WORKFLOW_SUCCESS	1	6
12	2026-06-10 12:54:10.708		f	WORKFLOW_SUCCESS	1	6
\.


--
-- Data for Name: workflowstepdata; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.workflowstepdata (id, providerid, steptype, parent_id, index) FROM stdin;
1	:internal	http/authExt	1	0
2	:internal	http/authExt	1	1
\.


--
-- Data for Name: workflowstepdata_stepparameters; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.workflowstepdata_stepparameters (workflowstepdata_id, stepparameters, stepparameters_key) FROM stdin;
1	http://localhost:20325/rollback	rollbackUrl
1	Success.*	expectedResponse
1	POST	rollbackMethod
1	POST	method
1	{"invocationId": "${invocationId}","globalId": "${dataset.globalId}","datasetId": "${dataset.id}", "majorVersion": "${majorVersion}", "minorVersion": "${minorVersion}" }	body
1	application/json	contentType
1	http://localhost:20325/invoke	url
2	http://localhost:20210/rollback	rollbackUrl
2	.*	expectedResponse
2	POST	rollbackMethod
2	POST	method
2	{"invocationId": "${invocationId}","globalId": "${dataset.globalId}","datasetId": "${dataset.id}", "majorVersion": "${majorVersion}", "minorVersion": "${minorVersion}" }	body
2	application/json	contentType
2	http://localhost:20210/invoke	url
\.


--
-- Data for Name: workflowstepdata_stepsettings; Type: TABLE DATA; Schema: public; Owner: dvnuser
--

COPY public.workflowstepdata_stepsettings (workflowstepdata_id, stepsettings, stepsettings_key) FROM stdin;
\.


--
-- Name: alternativepersistentidentifier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.alternativepersistentidentifier_id_seq', 1, false);


--
-- Name: apitoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.apitoken_id_seq', 7, true);


--
-- Name: authenticateduser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.authenticateduser_id_seq', 7, true);


--
-- Name: authenticateduserlookup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.authenticateduserlookup_id_seq', 7, true);


--
-- Name: auxiliaryfile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.auxiliaryfile_id_seq', 1, false);


--
-- Name: bannermessage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.bannermessage_id_seq', 1, false);


--
-- Name: bannermessagetext_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.bannermessagetext_id_seq', 1, false);


--
-- Name: builtinuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.builtinuser_id_seq', 7, true);


--
-- Name: categorymetadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.categorymetadata_id_seq', 1, false);


--
-- Name: clientharvestrun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.clientharvestrun_id_seq', 1, false);


--
-- Name: confirmemaildata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.confirmemaildata_id_seq', 7, true);


--
-- Name: controlledvocabalternate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.controlledvocabalternate_id_seq', 8229, true);


--
-- Name: controlledvocabularyvalue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.controlledvocabularyvalue_id_seq', 11389, true);


--
-- Name: curationstatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.curationstatus_id_seq', 1, false);


--
-- Name: customfieldmap_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.customfieldmap_id_seq', 1, false);


--
-- Name: customquestion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.customquestion_id_seq', 1, false);


--
-- Name: customquestionresponse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.customquestionresponse_id_seq', 1, false);


--
-- Name: customquestionvalue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.customquestionvalue_id_seq', 1, false);


--
-- Name: datafilecategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.datafilecategory_id_seq', 1, false);


--
-- Name: datafiletag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.datafiletag_id_seq', 1, false);


--
-- Name: datasetfield_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.datasetfield_id_seq', 138, true);


--
-- Name: datasetfieldcompoundvalue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.datasetfieldcompoundvalue_id_seq', 30, true);


--
-- Name: datasetfielddefaultvalue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.datasetfielddefaultvalue_id_seq', 1, false);


--
-- Name: datasetfieldtype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.datasetfieldtype_id_seq', 204, true);


--
-- Name: datasetfieldvalue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.datasetfieldvalue_id_seq', 78, true);


--
-- Name: datasetlinkingdataverse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.datasetlinkingdataverse_id_seq', 1, false);


--
-- Name: datasetlock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.datasetlock_id_seq', 30, true);


--
-- Name: datasetmetrics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.datasetmetrics_id_seq', 1, false);


--
-- Name: datasettype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.datasettype_id_seq', 1, true);


--
-- Name: datasetversion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.datasetversion_id_seq', 6, true);


--
-- Name: datasetversionuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.datasetversionuser_id_seq', 6, true);


--
-- Name: datatable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.datatable_id_seq', 1, false);


--
-- Name: datavariable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.datavariable_id_seq', 1, false);


--
-- Name: dataversecontact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.dataversecontact_id_seq', 3, true);


--
-- Name: dataversefacet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.dataversefacet_id_seq', 10, true);


--
-- Name: dataversefeatureddataverse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.dataversefeatureddataverse_id_seq', 2, true);


--
-- Name: dataversefeatureditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.dataversefeatureditem_id_seq', 1, false);


--
-- Name: dataversefieldtypeinputlevel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.dataversefieldtypeinputlevel_id_seq', 8, true);


--
-- Name: dataverselinkingdataverse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.dataverselinkingdataverse_id_seq', 1, false);


--
-- Name: dataversemetadatablockfacet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.dataversemetadatablockfacet_id_seq', 1, false);


--
-- Name: dataverserole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.dataverserole_id_seq', 13, true);


--
-- Name: dataversetheme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.dataversetheme_id_seq', 1, true);


--
-- Name: defaultvalueset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.defaultvalueset_id_seq', 1, false);


--
-- Name: dvobject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.dvobject_id_seq', 18, true);


--
-- Name: embargo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.embargo_id_seq', 1, true);


--
-- Name: explicitgroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.explicitgroup_id_seq', 1, false);


--
-- Name: externalfileuploadinprogress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.externalfileuploadinprogress_id_seq', 1, false);


--
-- Name: externaltool_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.externaltool_id_seq', 24, true);


--
-- Name: externaltooltype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.externaltooltype_id_seq', 24, true);


--
-- Name: externalvocabularyvalue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.externalvocabularyvalue_id_seq', 3, true);


--
-- Name: fileaccessrequests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.fileaccessrequests_id_seq', 1, false);


--
-- Name: filemetadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.filemetadata_id_seq', 9, true);


--
-- Name: foreignmetadatafieldmapping_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.foreignmetadatafieldmapping_id_seq', 1, false);


--
-- Name: foreignmetadataformatmapping_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.foreignmetadataformatmapping_id_seq', 1, false);


--
-- Name: globustaskinprogress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.globustaskinprogress_id_seq', 1, false);


--
-- Name: guestbook_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.guestbook_id_seq', 1, true);


--
-- Name: guestbookresponse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.guestbookresponse_id_seq', 1, false);


--
-- Name: harvestingclient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.harvestingclient_id_seq', 1, false);


--
-- Name: ingestreport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.ingestreport_id_seq', 1, false);


--
-- Name: ingestrequest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.ingestrequest_id_seq', 1, false);


--
-- Name: license_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.license_id_seq', 7, true);


--
-- Name: makedatacountprocessstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.makedatacountprocessstate_id_seq', 1, false);


--
-- Name: metadatablock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.metadatablock_id_seq', 10, true);


--
-- Name: metric_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.metric_id_seq', 1, false);


--
-- Name: oairecord_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.oairecord_id_seq', 1, false);


--
-- Name: oaiset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.oaiset_id_seq', 1, false);


--
-- Name: oauth2tokendata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.oauth2tokendata_id_seq', 1, false);


--
-- Name: passwordresetdata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.passwordresetdata_id_seq', 1, false);


--
-- Name: retention_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.retention_id_seq', 1, true);


--
-- Name: roleassignment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.roleassignment_id_seq', 13, true);


--
-- Name: roleassignmenthistory_entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.roleassignmenthistory_entry_id_seq', 12, true);


--
-- Name: savedsearch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.savedsearch_id_seq', 1, false);


--
-- Name: savedsearchfilterquery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.savedsearchfilterquery_id_seq', 1, false);


--
-- Name: setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.setting_id_seq', 48, true);


--
-- Name: shibgroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.shibgroup_id_seq', 1, false);


--
-- Name: storagequota_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.storagequota_id_seq', 1, false);


--
-- Name: storagesite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.storagesite_id_seq', 1, false);


--
-- Name: storageuse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.storageuse_id_seq', 9, true);


--
-- Name: summarystatistic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.summarystatistic_id_seq', 1, false);


--
-- Name: template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.template_id_seq', 1, false);


--
-- Name: termsofuseandaccess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.termsofuseandaccess_id_seq', 6, true);


--
-- Name: userbannermessage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.userbannermessage_id_seq', 1, false);


--
-- Name: usernotification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.usernotification_id_seq', 45, true);


--
-- Name: vargroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.vargroup_id_seq', 1, false);


--
-- Name: variablecategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.variablecategory_id_seq', 1, false);


--
-- Name: variablemetadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.variablemetadata_id_seq', 1, false);


--
-- Name: variablerange_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.variablerange_id_seq', 1, false);


--
-- Name: variablerangeitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.variablerangeitem_id_seq', 1, false);


--
-- Name: workflow_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.workflow_id_seq', 1, true);


--
-- Name: workflowcomment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.workflowcomment_id_seq', 12, true);


--
-- Name: workflowstepdata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dvnuser
--

SELECT pg_catalog.setval('public.workflowstepdata_id_seq', 2, true);


--
-- Name: actionlogrecord actionlogrecord_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.actionlogrecord
    ADD CONSTRAINT actionlogrecord_pkey PRIMARY KEY (id);


--
-- Name: alternativepersistentidentifier alternativepersistentidentifier_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.alternativepersistentidentifier
    ADD CONSTRAINT alternativepersistentidentifier_pkey PRIMARY KEY (id);


--
-- Name: apitoken apitoken_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.apitoken
    ADD CONSTRAINT apitoken_pkey PRIMARY KEY (id);


--
-- Name: apitoken apitoken_tokenstring_key; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.apitoken
    ADD CONSTRAINT apitoken_tokenstring_key UNIQUE (tokenstring);


--
-- Name: authenticateduser authenticateduser_email_key; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.authenticateduser
    ADD CONSTRAINT authenticateduser_email_key UNIQUE (email);


--
-- Name: authenticateduser authenticateduser_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.authenticateduser
    ADD CONSTRAINT authenticateduser_pkey PRIMARY KEY (id);


--
-- Name: authenticateduser authenticateduser_useridentifier_key; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.authenticateduser
    ADD CONSTRAINT authenticateduser_useridentifier_key UNIQUE (useridentifier);


--
-- Name: authenticateduserlookup authenticateduserlookup_authenticateduser_id_key; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.authenticateduserlookup
    ADD CONSTRAINT authenticateduserlookup_authenticateduser_id_key UNIQUE (authenticateduser_id);


--
-- Name: authenticateduserlookup authenticateduserlookup_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.authenticateduserlookup
    ADD CONSTRAINT authenticateduserlookup_pkey PRIMARY KEY (id);


--
-- Name: authenticationproviderrow authenticationproviderrow_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.authenticationproviderrow
    ADD CONSTRAINT authenticationproviderrow_pkey PRIMARY KEY (id);


--
-- Name: auxiliaryfile auxiliaryfile_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.auxiliaryfile
    ADD CONSTRAINT auxiliaryfile_pkey PRIMARY KEY (id);


--
-- Name: bannermessage bannermessage_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.bannermessage
    ADD CONSTRAINT bannermessage_pkey PRIMARY KEY (id);


--
-- Name: bannermessagetext bannermessagetext_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.bannermessagetext
    ADD CONSTRAINT bannermessagetext_pkey PRIMARY KEY (id);


--
-- Name: builtinuser builtinuser_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.builtinuser
    ADD CONSTRAINT builtinuser_pkey PRIMARY KEY (id);


--
-- Name: builtinuser builtinuser_username_key; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.builtinuser
    ADD CONSTRAINT builtinuser_username_key UNIQUE (username);


--
-- Name: categorymetadata categorymetadata_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.categorymetadata
    ADD CONSTRAINT categorymetadata_pkey PRIMARY KEY (id);


--
-- Name: clientharvestrun clientharvestrun_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.clientharvestrun
    ADD CONSTRAINT clientharvestrun_pkey PRIMARY KEY (id);


--
-- Name: confirmemaildata confirmemaildata_authenticateduser_id_key; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.confirmemaildata
    ADD CONSTRAINT confirmemaildata_authenticateduser_id_key UNIQUE (authenticateduser_id);


--
-- Name: confirmemaildata confirmemaildata_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.confirmemaildata
    ADD CONSTRAINT confirmemaildata_pkey PRIMARY KEY (id);


--
-- Name: controlledvocabalternate controlledvocabalternate_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.controlledvocabalternate
    ADD CONSTRAINT controlledvocabalternate_pkey PRIMARY KEY (id);


--
-- Name: controlledvocabularyvalue controlledvocabularyvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.controlledvocabularyvalue
    ADD CONSTRAINT controlledvocabularyvalue_pkey PRIMARY KEY (id);


--
-- Name: curationstatus curationstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.curationstatus
    ADD CONSTRAINT curationstatus_pkey PRIMARY KEY (id);


--
-- Name: customfieldmap customfieldmap_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.customfieldmap
    ADD CONSTRAINT customfieldmap_pkey PRIMARY KEY (id);


--
-- Name: customquestion customquestion_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.customquestion
    ADD CONSTRAINT customquestion_pkey PRIMARY KEY (id);


--
-- Name: customquestionresponse customquestionresponse_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.customquestionresponse
    ADD CONSTRAINT customquestionresponse_pkey PRIMARY KEY (id);


--
-- Name: customquestionvalue customquestionvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.customquestionvalue
    ADD CONSTRAINT customquestionvalue_pkey PRIMARY KEY (id);


--
-- Name: datafile datafile_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datafile
    ADD CONSTRAINT datafile_pkey PRIMARY KEY (id);


--
-- Name: datafilecategory datafilecategory_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datafilecategory
    ADD CONSTRAINT datafilecategory_pkey PRIMARY KEY (id);


--
-- Name: datafiletag datafiletag_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datafiletag
    ADD CONSTRAINT datafiletag_pkey PRIMARY KEY (id);


--
-- Name: dataset dataset_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT dataset_pkey PRIMARY KEY (id);


--
-- Name: datasetexternalcitations datasetexternalcitations_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetexternalcitations
    ADD CONSTRAINT datasetexternalcitations_pkey PRIMARY KEY (id);


--
-- Name: datasetfield_controlledvocabularyvalue datasetfield_controlledvocabularyvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfield_controlledvocabularyvalue
    ADD CONSTRAINT datasetfield_controlledvocabularyvalue_pkey PRIMARY KEY (datasetfield_id, controlledvocabularyvalues_id);


--
-- Name: datasetfield datasetfield_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfield
    ADD CONSTRAINT datasetfield_pkey PRIMARY KEY (id);


--
-- Name: datasetfieldcompoundvalue datasetfieldcompoundvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfieldcompoundvalue
    ADD CONSTRAINT datasetfieldcompoundvalue_pkey PRIMARY KEY (id);


--
-- Name: datasetfielddefaultvalue datasetfielddefaultvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfielddefaultvalue
    ADD CONSTRAINT datasetfielddefaultvalue_pkey PRIMARY KEY (id);


--
-- Name: datasetfieldtype datasetfieldtype_name_key; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfieldtype
    ADD CONSTRAINT datasetfieldtype_name_key UNIQUE (name);


--
-- Name: datasetfieldtype datasetfieldtype_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfieldtype
    ADD CONSTRAINT datasetfieldtype_pkey PRIMARY KEY (id);


--
-- Name: datasetfieldvalue datasetfieldvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfieldvalue
    ADD CONSTRAINT datasetfieldvalue_pkey PRIMARY KEY (id);


--
-- Name: datasetlinkingdataverse datasetlinkingdataverse_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetlinkingdataverse
    ADD CONSTRAINT datasetlinkingdataverse_pkey PRIMARY KEY (id);


--
-- Name: datasetlock datasetlock_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetlock
    ADD CONSTRAINT datasetlock_pkey PRIMARY KEY (id);


--
-- Name: datasetmetrics datasetmetrics_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetmetrics
    ADD CONSTRAINT datasetmetrics_pkey PRIMARY KEY (id);


--
-- Name: datasettype_license datasettype_license_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasettype_license
    ADD CONSTRAINT datasettype_license_pkey PRIMARY KEY (datasettype_id, licenses_id);


--
-- Name: datasettype_metadatablock datasettype_metadatablock_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasettype_metadatablock
    ADD CONSTRAINT datasettype_metadatablock_pkey PRIMARY KEY (datasettype_id, metadatablocks_id);


--
-- Name: datasettype datasettype_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasettype
    ADD CONSTRAINT datasettype_pkey PRIMARY KEY (id);


--
-- Name: datasetversion datasetversion_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetversion
    ADD CONSTRAINT datasetversion_pkey PRIMARY KEY (id);


--
-- Name: datasetversionuser datasetversionuser_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetversionuser
    ADD CONSTRAINT datasetversionuser_pkey PRIMARY KEY (id);


--
-- Name: datatable datatable_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datatable
    ADD CONSTRAINT datatable_pkey PRIMARY KEY (id);


--
-- Name: datavariable datavariable_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datavariable
    ADD CONSTRAINT datavariable_pkey PRIMARY KEY (id);


--
-- Name: dataverse dataverse_alias_key; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverse
    ADD CONSTRAINT dataverse_alias_key UNIQUE (alias);


--
-- Name: dataverse_citationdatasetfieldtypes dataverse_citationdatasetfieldtypes_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverse_citationdatasetfieldtypes
    ADD CONSTRAINT dataverse_citationdatasetfieldtypes_pkey PRIMARY KEY (dataverse_id, citationdatasetfieldtype_id);


--
-- Name: dataverse_metadatablock dataverse_metadatablock_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverse_metadatablock
    ADD CONSTRAINT dataverse_metadatablock_pkey PRIMARY KEY (dataverse_id, metadatablocks_id);


--
-- Name: dataverse dataverse_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverse
    ADD CONSTRAINT dataverse_pkey PRIMARY KEY (id);


--
-- Name: dataversecontact dataversecontact_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversecontact
    ADD CONSTRAINT dataversecontact_pkey PRIMARY KEY (id);


--
-- Name: dataversefacet dataversefacet_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefacet
    ADD CONSTRAINT dataversefacet_pkey PRIMARY KEY (id);


--
-- Name: dataversefeatureddataverse dataversefeatureddataverse_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefeatureddataverse
    ADD CONSTRAINT dataversefeatureddataverse_pkey PRIMARY KEY (id);


--
-- Name: dataversefeatureditem dataversefeatureditem_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefeatureditem
    ADD CONSTRAINT dataversefeatureditem_pkey PRIMARY KEY (id);


--
-- Name: dataversefieldtypeinputlevel dataversefieldtypeinputlevel_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefieldtypeinputlevel
    ADD CONSTRAINT dataversefieldtypeinputlevel_pkey PRIMARY KEY (id);


--
-- Name: dataverselinkingdataverse dataverselinkingdataverse_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverselinkingdataverse
    ADD CONSTRAINT dataverselinkingdataverse_pkey PRIMARY KEY (id);


--
-- Name: dataversemetadatablockfacet dataversemetadatablockfacet_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversemetadatablockfacet
    ADD CONSTRAINT dataversemetadatablockfacet_pkey PRIMARY KEY (id);


--
-- Name: dataverserole dataverserole_alias_key; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverserole
    ADD CONSTRAINT dataverserole_alias_key UNIQUE (alias);


--
-- Name: dataverserole dataverserole_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverserole
    ADD CONSTRAINT dataverserole_pkey PRIMARY KEY (id);


--
-- Name: dataversesubjects dataversesubjects_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversesubjects
    ADD CONSTRAINT dataversesubjects_pkey PRIMARY KEY (dataverse_id, controlledvocabularyvalue_id);


--
-- Name: dataversetheme dataversetheme_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversetheme
    ADD CONSTRAINT dataversetheme_pkey PRIMARY KEY (id);


--
-- Name: defaultvalueset defaultvalueset_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.defaultvalueset
    ADD CONSTRAINT defaultvalueset_pkey PRIMARY KEY (id);


--
-- Name: dvobject dvobject_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dvobject
    ADD CONSTRAINT dvobject_pkey PRIMARY KEY (id);


--
-- Name: embargo embargo_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.embargo
    ADD CONSTRAINT embargo_pkey PRIMARY KEY (id);


--
-- Name: explicitgroup_authenticateduser explicitgroup_authenticateduser_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.explicitgroup_authenticateduser
    ADD CONSTRAINT explicitgroup_authenticateduser_pkey PRIMARY KEY (explicitgroup_id, containedauthenticatedusers_id);


--
-- Name: explicitgroup_explicitgroup explicitgroup_explicitgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.explicitgroup_explicitgroup
    ADD CONSTRAINT explicitgroup_explicitgroup_pkey PRIMARY KEY (explicitgroup_id, containedexplicitgroups_id);


--
-- Name: explicitgroup explicitgroup_groupalias_key; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.explicitgroup
    ADD CONSTRAINT explicitgroup_groupalias_key UNIQUE (groupalias);


--
-- Name: explicitgroup explicitgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.explicitgroup
    ADD CONSTRAINT explicitgroup_pkey PRIMARY KEY (id);


--
-- Name: externalfileuploadinprogress externalfileuploadinprogress_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.externalfileuploadinprogress
    ADD CONSTRAINT externalfileuploadinprogress_pkey PRIMARY KEY (id);


--
-- Name: externaltool externaltool_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.externaltool
    ADD CONSTRAINT externaltool_pkey PRIMARY KEY (id);


--
-- Name: externaltooltype externaltooltype_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.externaltooltype
    ADD CONSTRAINT externaltooltype_pkey PRIMARY KEY (id);


--
-- Name: externalvocabularyvalue externalvocabularvalue_uri_key; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.externalvocabularyvalue
    ADD CONSTRAINT externalvocabularvalue_uri_key UNIQUE (uri);


--
-- Name: externalvocabularyvalue externalvocabularyvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.externalvocabularyvalue
    ADD CONSTRAINT externalvocabularyvalue_pkey PRIMARY KEY (id);


--
-- Name: fileaccessrequests fileaccessrequests_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.fileaccessrequests
    ADD CONSTRAINT fileaccessrequests_pkey PRIMARY KEY (id);


--
-- Name: filemetadata_datafilecategory filemetadata_datafilecategory_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.filemetadata_datafilecategory
    ADD CONSTRAINT filemetadata_datafilecategory_pkey PRIMARY KEY (filecategories_id, filemetadatas_id);


--
-- Name: filemetadata filemetadata_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.filemetadata
    ADD CONSTRAINT filemetadata_pkey PRIMARY KEY (id);


--
-- Name: flyway_schema_history flyway_schema_history_pk; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.flyway_schema_history
    ADD CONSTRAINT flyway_schema_history_pk PRIMARY KEY (installed_rank);


--
-- Name: foreignmetadatafieldmapping foreignmetadatafieldmapping_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.foreignmetadatafieldmapping
    ADD CONSTRAINT foreignmetadatafieldmapping_pkey PRIMARY KEY (id);


--
-- Name: foreignmetadataformatmapping foreignmetadataformatmapping_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.foreignmetadataformatmapping
    ADD CONSTRAINT foreignmetadataformatmapping_pkey PRIMARY KEY (id);


--
-- Name: globustaskinprogress globustaskinprogress_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.globustaskinprogress
    ADD CONSTRAINT globustaskinprogress_pkey PRIMARY KEY (id);


--
-- Name: globustaskinprogress globustaskinprogress_taskid_key; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.globustaskinprogress
    ADD CONSTRAINT globustaskinprogress_taskid_key UNIQUE (taskid);


--
-- Name: guestbook guestbook_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.guestbook
    ADD CONSTRAINT guestbook_pkey PRIMARY KEY (id);


--
-- Name: guestbookresponse guestbookresponse_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.guestbookresponse
    ADD CONSTRAINT guestbookresponse_pkey PRIMARY KEY (id);


--
-- Name: harvestingclient harvestingclient_name_key; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.harvestingclient
    ADD CONSTRAINT harvestingclient_name_key UNIQUE (name);


--
-- Name: harvestingclient harvestingclient_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.harvestingclient
    ADD CONSTRAINT harvestingclient_pkey PRIMARY KEY (id);


--
-- Name: harvestingdataverseconfig harvestingdataverseconfig_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.harvestingdataverseconfig
    ADD CONSTRAINT harvestingdataverseconfig_pkey PRIMARY KEY (id);


--
-- Name: ingestreport ingestreport_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.ingestreport
    ADD CONSTRAINT ingestreport_pkey PRIMARY KEY (id);


--
-- Name: ingestrequest ingestrequest_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.ingestrequest
    ADD CONSTRAINT ingestrequest_pkey PRIMARY KEY (id);


--
-- Name: ipv4range ipv4range_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.ipv4range
    ADD CONSTRAINT ipv4range_pkey PRIMARY KEY (id);


--
-- Name: ipv6range ipv6range_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.ipv6range
    ADD CONSTRAINT ipv6range_pkey PRIMARY KEY (id);


--
-- Name: license license_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.license
    ADD CONSTRAINT license_pkey PRIMARY KEY (id);


--
-- Name: makedatacountprocessstate makedatacountprocessstate_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.makedatacountprocessstate
    ADD CONSTRAINT makedatacountprocessstate_pkey PRIMARY KEY (id);


--
-- Name: metadatablock metadatablock_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.metadatablock
    ADD CONSTRAINT metadatablock_pkey PRIMARY KEY (id);


--
-- Name: metric metric_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.metric
    ADD CONSTRAINT metric_pkey PRIMARY KEY (id);


--
-- Name: oairecord oairecord_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.oairecord
    ADD CONSTRAINT oairecord_pkey PRIMARY KEY (id);


--
-- Name: oaiset oaiset_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.oaiset
    ADD CONSTRAINT oaiset_pkey PRIMARY KEY (id);


--
-- Name: oaiset oaiset_spec_key; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.oaiset
    ADD CONSTRAINT oaiset_spec_key UNIQUE (spec);


--
-- Name: oauth2tokendata oauth2tokendata_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.oauth2tokendata
    ADD CONSTRAINT oauth2tokendata_pkey PRIMARY KEY (id);


--
-- Name: authenticateduser orcid_unique; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.authenticateduser
    ADD CONSTRAINT orcid_unique UNIQUE (authenticatedorcid);


--
-- Name: passwordresetdata passwordresetdata_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.passwordresetdata
    ADD CONSTRAINT passwordresetdata_pkey PRIMARY KEY (id);


--
-- Name: pendingworkflowinvocation pendingworkflowinvocation_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.pendingworkflowinvocation
    ADD CONSTRAINT pendingworkflowinvocation_pkey PRIMARY KEY (invocationid);


--
-- Name: persistedglobalgroup persistedglobalgroup_persistedgroupalias_key; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.persistedglobalgroup
    ADD CONSTRAINT persistedglobalgroup_persistedgroupalias_key UNIQUE (persistedgroupalias);


--
-- Name: persistedglobalgroup persistedglobalgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.persistedglobalgroup
    ADD CONSTRAINT persistedglobalgroup_pkey PRIMARY KEY (id);


--
-- Name: retention retention_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.retention
    ADD CONSTRAINT retention_pkey PRIMARY KEY (id);


--
-- Name: roleassignment roleassignment_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.roleassignment
    ADD CONSTRAINT roleassignment_pkey PRIMARY KEY (id);


--
-- Name: roleassignmenthistory roleassignmenthistory_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.roleassignmenthistory
    ADD CONSTRAINT roleassignmenthistory_pkey PRIMARY KEY (entry_id);


--
-- Name: savedsearch savedsearch_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.savedsearch
    ADD CONSTRAINT savedsearch_pkey PRIMARY KEY (id);


--
-- Name: savedsearchfilterquery savedsearchfilterquery_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.savedsearchfilterquery
    ADD CONSTRAINT savedsearchfilterquery_pkey PRIMARY KEY (id);


--
-- Name: sequence sequence_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.sequence
    ADD CONSTRAINT sequence_pkey PRIMARY KEY (seq_name);


--
-- Name: shibgroup shibgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.shibgroup
    ADD CONSTRAINT shibgroup_pkey PRIMARY KEY (id);


--
-- Name: storagequota storagequota_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.storagequota
    ADD CONSTRAINT storagequota_pkey PRIMARY KEY (id);


--
-- Name: storagesite storagesite_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.storagesite
    ADD CONSTRAINT storagesite_pkey PRIMARY KEY (id);


--
-- Name: storageuse storageuse_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.storageuse
    ADD CONSTRAINT storageuse_pkey PRIMARY KEY (id);


--
-- Name: summarystatistic summarystatistic_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.summarystatistic
    ADD CONSTRAINT summarystatistic_pkey PRIMARY KEY (id);


--
-- Name: template template_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.template
    ADD CONSTRAINT template_pkey PRIMARY KEY (id);


--
-- Name: termsofuseandaccess termsofuseandaccess_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.termsofuseandaccess
    ADD CONSTRAINT termsofuseandaccess_pkey PRIMARY KEY (id);


--
-- Name: setting uc_setting_name_lang; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.setting
    ADD CONSTRAINT uc_setting_name_lang UNIQUE (name, lang);


--
-- Name: authenticateduserlookup unq_authenticateduserlookup_0; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.authenticateduserlookup
    ADD CONSTRAINT unq_authenticateduserlookup_0 UNIQUE (persistentuserid, authenticationproviderid);


--
-- Name: datasettype unq_datasettype_0; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasettype
    ADD CONSTRAINT unq_datasettype_0 UNIQUE (name);


--
-- Name: datasetversion unq_datasetversion_0; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetversion
    ADD CONSTRAINT unq_datasetversion_0 UNIQUE (dataset_id, versionnumber, minorversionnumber);


--
-- Name: dataversefieldtypeinputlevel unq_dataversefieldtypeinputlevel_0; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefieldtypeinputlevel
    ADD CONSTRAINT unq_dataversefieldtypeinputlevel_0 UNIQUE (dataverse_id, datasetfieldtype_id);


--
-- Name: dvobject unq_dvobject_0; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dvobject
    ADD CONSTRAINT unq_dvobject_0 UNIQUE (authority, protocol, identifier);


--
-- Name: dvobject unq_dvobject_1; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dvobject
    ADD CONSTRAINT unq_dvobject_1 UNIQUE (owner_id, storageidentifier);


--
-- Name: foreignmetadatafieldmapping unq_foreignmetadatafieldmapping_0; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.foreignmetadatafieldmapping
    ADD CONSTRAINT unq_foreignmetadatafieldmapping_0 UNIQUE (foreignmetadataformatmapping_id, foreignfieldxpath);


--
-- Name: globustaskinprogress unq_globustaskinprogress_0; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.globustaskinprogress
    ADD CONSTRAINT unq_globustaskinprogress_0 UNIQUE (taskid);


--
-- Name: license unq_license_0; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.license
    ADD CONSTRAINT unq_license_0 UNIQUE (name);


--
-- Name: license unq_license_1; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.license
    ADD CONSTRAINT unq_license_1 UNIQUE (uri);


--
-- Name: roleassignment unq_roleassignment_0; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.roleassignment
    ADD CONSTRAINT unq_roleassignment_0 UNIQUE (assigneeidentifier, role_id, definitionpoint_id);


--
-- Name: variablemetadata unq_variablemetadata_0; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.variablemetadata
    ADD CONSTRAINT unq_variablemetadata_0 UNIQUE (datavariable_id, filemetadata_id);


--
-- Name: userbannermessage userbannermessage_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.userbannermessage
    ADD CONSTRAINT userbannermessage_pkey PRIMARY KEY (id);


--
-- Name: usernotification usernotification_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.usernotification
    ADD CONSTRAINT usernotification_pkey PRIMARY KEY (id);


--
-- Name: vargroup_datavariable vargroup_datavariable_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.vargroup_datavariable
    ADD CONSTRAINT vargroup_datavariable_pkey PRIMARY KEY (vargroup_id, varsingroup_id);


--
-- Name: vargroup vargroup_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.vargroup
    ADD CONSTRAINT vargroup_pkey PRIMARY KEY (id);


--
-- Name: variablecategory variablecategory_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.variablecategory
    ADD CONSTRAINT variablecategory_pkey PRIMARY KEY (id);


--
-- Name: variablemetadata variablemetadata_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.variablemetadata
    ADD CONSTRAINT variablemetadata_pkey PRIMARY KEY (id);


--
-- Name: variablerange variablerange_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.variablerange
    ADD CONSTRAINT variablerange_pkey PRIMARY KEY (id);


--
-- Name: variablerangeitem variablerangeitem_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.variablerangeitem
    ADD CONSTRAINT variablerangeitem_pkey PRIMARY KEY (id);


--
-- Name: workflow workflow_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.workflow
    ADD CONSTRAINT workflow_pkey PRIMARY KEY (id);


--
-- Name: workflowcomment workflowcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.workflowcomment
    ADD CONSTRAINT workflowcomment_pkey PRIMARY KEY (id);


--
-- Name: workflowstepdata workflowstepdata_pkey; Type: CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.workflowstepdata
    ADD CONSTRAINT workflowstepdata_pkey PRIMARY KEY (id);


--
-- Name: created_requests; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE UNIQUE INDEX created_requests ON public.fileaccessrequests USING btree (datafile_id, authenticated_user_id) WHERE ((request_state)::text = 'CREATED'::text);


--
-- Name: dataverse_alias_unique_idx; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE UNIQUE INDEX dataverse_alias_unique_idx ON public.dataverse USING btree (lower((alias)::text));


--
-- Name: flyway_schema_history_s_idx; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX flyway_schema_history_s_idx ON public.flyway_schema_history USING btree (success);


--
-- Name: index_actionlogrecord_actiontype; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_actionlogrecord_actiontype ON public.actionlogrecord USING btree (actiontype);


--
-- Name: index_actionlogrecord_starttime; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_actionlogrecord_starttime ON public.actionlogrecord USING btree (starttime);


--
-- Name: index_actionlogrecord_useridentifier; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_actionlogrecord_useridentifier ON public.actionlogrecord USING btree (useridentifier);


--
-- Name: index_apitoken_authenticateduser_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_apitoken_authenticateduser_id ON public.apitoken USING btree (authenticateduser_id);


--
-- Name: index_authenticateduser_lower_email; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE UNIQUE INDEX index_authenticateduser_lower_email ON public.authenticateduser USING btree (lower((email)::text));


--
-- Name: index_authenticateduser_lower_useridentifier; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE UNIQUE INDEX index_authenticateduser_lower_useridentifier ON public.authenticateduser USING btree (lower((useridentifier)::text));


--
-- Name: index_authenticationproviderrow_enabled; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_authenticationproviderrow_enabled ON public.authenticationproviderrow USING btree (enabled);


--
-- Name: index_builtinuser_username; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_builtinuser_username ON public.builtinuser USING btree (username);


--
-- Name: index_categorymetadata_category_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_categorymetadata_category_id ON public.categorymetadata USING btree (category_id);


--
-- Name: index_categorymetadata_variablemetadata_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_categorymetadata_variablemetadata_id ON public.categorymetadata USING btree (variablemetadata_id);


--
-- Name: index_confirmemaildata_authenticateduser_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_confirmemaildata_authenticateduser_id ON public.confirmemaildata USING btree (authenticateduser_id);


--
-- Name: index_confirmemaildata_token; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_confirmemaildata_token ON public.confirmemaildata USING btree (token);


--
-- Name: index_controlledvocabalternate_controlledvocabularyvalue_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_controlledvocabalternate_controlledvocabularyvalue_id ON public.controlledvocabalternate USING btree (controlledvocabularyvalue_id);


--
-- Name: index_controlledvocabalternate_datasetfieldtype_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_controlledvocabalternate_datasetfieldtype_id ON public.controlledvocabalternate USING btree (datasetfieldtype_id);


--
-- Name: index_controlledvocabularyvalue_datasetfieldtype_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_controlledvocabularyvalue_datasetfieldtype_id ON public.controlledvocabularyvalue USING btree (datasetfieldtype_id);


--
-- Name: index_controlledvocabularyvalue_displayorder; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_controlledvocabularyvalue_displayorder ON public.controlledvocabularyvalue USING btree (displayorder);


--
-- Name: index_curationstatus_datasetversion; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_curationstatus_datasetversion ON public.curationstatus USING btree (datasetversion_id);


--
-- Name: index_customfieldmap_sourcedatasetfield; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_customfieldmap_sourcedatasetfield ON public.customfieldmap USING btree (sourcedatasetfield);


--
-- Name: index_customfieldmap_sourcetemplate; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_customfieldmap_sourcetemplate ON public.customfieldmap USING btree (sourcetemplate);


--
-- Name: index_customquestion_guestbook_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_customquestion_guestbook_id ON public.customquestion USING btree (guestbook_id);


--
-- Name: index_customquestionresponse_guestbookresponse_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_customquestionresponse_guestbookresponse_id ON public.customquestionresponse USING btree (guestbookresponse_id);


--
-- Name: index_datafile_checksumvalue; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datafile_checksumvalue ON public.datafile USING btree (checksumvalue);


--
-- Name: index_datafile_contenttype; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datafile_contenttype ON public.datafile USING btree (contenttype);


--
-- Name: index_datafile_ingeststatus; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datafile_ingeststatus ON public.datafile USING btree (ingeststatus);


--
-- Name: index_datafile_restricted; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datafile_restricted ON public.datafile USING btree (restricted);


--
-- Name: index_datafilecategory_dataset_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datafilecategory_dataset_id ON public.datafilecategory USING btree (dataset_id);


--
-- Name: index_datafiletag_datafile_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datafiletag_datafile_id ON public.datafiletag USING btree (datafile_id);


--
-- Name: index_dataset_guestbook_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataset_guestbook_id ON public.dataset USING btree (guestbook_id);


--
-- Name: index_dataset_thumbnailfile_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataset_thumbnailfile_id ON public.dataset USING btree (thumbnailfile_id);


--
-- Name: index_datasetfield_controlledvocabularyvalue_controlledvocabula; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetfield_controlledvocabularyvalue_controlledvocabula ON public.datasetfield_controlledvocabularyvalue USING btree (controlledvocabularyvalues_id);


--
-- Name: index_datasetfield_controlledvocabularyvalue_datasetfield_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetfield_controlledvocabularyvalue_datasetfield_id ON public.datasetfield_controlledvocabularyvalue USING btree (datasetfield_id);


--
-- Name: index_datasetfield_datasetfieldtype_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetfield_datasetfieldtype_id ON public.datasetfield USING btree (datasetfieldtype_id);


--
-- Name: index_datasetfield_datasetversion_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetfield_datasetversion_id ON public.datasetfield USING btree (datasetversion_id);


--
-- Name: index_datasetfield_parentdatasetfieldcompoundvalue_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetfield_parentdatasetfieldcompoundvalue_id ON public.datasetfield USING btree (parentdatasetfieldcompoundvalue_id);


--
-- Name: index_datasetfield_template_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetfield_template_id ON public.datasetfield USING btree (template_id);


--
-- Name: index_datasetfieldcompoundvalue_parentdatasetfield_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetfieldcompoundvalue_parentdatasetfield_id ON public.datasetfieldcompoundvalue USING btree (parentdatasetfield_id);


--
-- Name: index_datasetfielddefaultvalue_datasetfield_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetfielddefaultvalue_datasetfield_id ON public.datasetfielddefaultvalue USING btree (datasetfield_id);


--
-- Name: index_datasetfielddefaultvalue_defaultvalueset_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetfielddefaultvalue_defaultvalueset_id ON public.datasetfielddefaultvalue USING btree (defaultvalueset_id);


--
-- Name: index_datasetfielddefaultvalue_displayorder; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetfielddefaultvalue_displayorder ON public.datasetfielddefaultvalue USING btree (displayorder);


--
-- Name: index_datasetfielddefaultvalue_parentdatasetfielddefaultvalue_i; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetfielddefaultvalue_parentdatasetfielddefaultvalue_i ON public.datasetfielddefaultvalue USING btree (parentdatasetfielddefaultvalue_id);


--
-- Name: index_datasetfieldtype_metadatablock_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetfieldtype_metadatablock_id ON public.datasetfieldtype USING btree (metadatablock_id);


--
-- Name: index_datasetfieldtype_parentdatasetfieldtype_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetfieldtype_parentdatasetfieldtype_id ON public.datasetfieldtype USING btree (parentdatasetfieldtype_id);


--
-- Name: index_datasetfieldvalue_datasetfield_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetfieldvalue_datasetfield_id ON public.datasetfieldvalue USING btree (datasetfield_id);


--
-- Name: index_datasetlinkingdataverse_dataset_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetlinkingdataverse_dataset_id ON public.datasetlinkingdataverse USING btree (dataset_id);


--
-- Name: index_datasetlinkingdataverse_linkingdataverse_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetlinkingdataverse_linkingdataverse_id ON public.datasetlinkingdataverse USING btree (linkingdataverse_id);


--
-- Name: index_datasetlock_dataset_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetlock_dataset_id ON public.datasetlock USING btree (dataset_id);


--
-- Name: index_datasetlock_user_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetlock_user_id ON public.datasetlock USING btree (user_id);


--
-- Name: index_datasetmetrics_dataset_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetmetrics_dataset_id ON public.datasetmetrics USING btree (dataset_id);


--
-- Name: index_datasetversion_dataset_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetversion_dataset_id ON public.datasetversion USING btree (dataset_id);


--
-- Name: index_datasetversion_termsofuseandaccess_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetversion_termsofuseandaccess_id ON public.datasetversion USING btree (termsofuseandaccess_id);


--
-- Name: index_datasetversionuser_authenticateduser_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetversionuser_authenticateduser_id ON public.datasetversionuser USING btree (authenticateduser_id);


--
-- Name: index_datasetversionuser_datasetversion_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datasetversionuser_datasetversion_id ON public.datasetversionuser USING btree (datasetversion_id);


--
-- Name: index_datatable_datafile_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datatable_datafile_id ON public.datatable USING btree (datafile_id);


--
-- Name: index_datavariable_datatable_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_datavariable_datatable_id ON public.datavariable USING btree (datatable_id);


--
-- Name: index_dataverse_affiliation; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataverse_affiliation ON public.dataverse USING btree (affiliation);


--
-- Name: index_dataverse_alias; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataverse_alias ON public.dataverse USING btree (alias);


--
-- Name: index_dataverse_dataversetype; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataverse_dataversetype ON public.dataverse USING btree (dataversetype);


--
-- Name: index_dataverse_defaultcontributorrole_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataverse_defaultcontributorrole_id ON public.dataverse USING btree (defaultcontributorrole_id);


--
-- Name: index_dataverse_defaulttemplate_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataverse_defaulttemplate_id ON public.dataverse USING btree (defaulttemplate_id);


--
-- Name: index_dataverse_facetroot; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataverse_facetroot ON public.dataverse USING btree (facetroot);


--
-- Name: index_dataverse_guestbookroot; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataverse_guestbookroot ON public.dataverse USING btree (guestbookroot);


--
-- Name: index_dataverse_metadatablockroot; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataverse_metadatablockroot ON public.dataverse USING btree (metadatablockroot);


--
-- Name: index_dataverse_permissionroot; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataverse_permissionroot ON public.dataverse USING btree (permissionroot);


--
-- Name: index_dataverse_templateroot; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataverse_templateroot ON public.dataverse USING btree (templateroot);


--
-- Name: index_dataverse_themeroot; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataverse_themeroot ON public.dataverse USING btree (themeroot);


--
-- Name: index_dataversecontact_contactemail; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversecontact_contactemail ON public.dataversecontact USING btree (contactemail);


--
-- Name: index_dataversecontact_dataverse_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversecontact_dataverse_id ON public.dataversecontact USING btree (dataverse_id);


--
-- Name: index_dataversecontact_displayorder; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversecontact_displayorder ON public.dataversecontact USING btree (displayorder);


--
-- Name: index_dataversefacet_datasetfieldtype_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversefacet_datasetfieldtype_id ON public.dataversefacet USING btree (datasetfieldtype_id);


--
-- Name: index_dataversefacet_dataverse_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversefacet_dataverse_id ON public.dataversefacet USING btree (dataverse_id);


--
-- Name: index_dataversefacet_displayorder; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversefacet_displayorder ON public.dataversefacet USING btree (displayorder);


--
-- Name: index_dataversefeatureddataverse_dataverse_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversefeatureddataverse_dataverse_id ON public.dataversefeatureddataverse USING btree (dataverse_id);


--
-- Name: index_dataversefeatureddataverse_displayorder; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversefeatureddataverse_displayorder ON public.dataversefeatureddataverse USING btree (displayorder);


--
-- Name: index_dataversefeatureddataverse_featureddataverse_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversefeatureddataverse_featureddataverse_id ON public.dataversefeatureddataverse USING btree (featureddataverse_id);


--
-- Name: index_dataversefeatureditem_displayorder; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversefeatureditem_displayorder ON public.dataversefeatureditem USING btree (displayorder);


--
-- Name: index_dataversefieldtypeinputlevel_datasetfieldtype_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversefieldtypeinputlevel_datasetfieldtype_id ON public.dataversefieldtypeinputlevel USING btree (datasetfieldtype_id);


--
-- Name: index_dataversefieldtypeinputlevel_dataverse_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversefieldtypeinputlevel_dataverse_id ON public.dataversefieldtypeinputlevel USING btree (dataverse_id);


--
-- Name: index_dataversefieldtypeinputlevel_displayoncreate; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversefieldtypeinputlevel_displayoncreate ON public.dataversefieldtypeinputlevel USING btree (displayoncreate);


--
-- Name: index_dataversefieldtypeinputlevel_required; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversefieldtypeinputlevel_required ON public.dataversefieldtypeinputlevel USING btree (required);


--
-- Name: index_dataverselinkingdataverse_dataverse_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataverselinkingdataverse_dataverse_id ON public.dataverselinkingdataverse USING btree (dataverse_id);


--
-- Name: index_dataverselinkingdataverse_linkingdataverse_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataverselinkingdataverse_linkingdataverse_id ON public.dataverselinkingdataverse USING btree (linkingdataverse_id);


--
-- Name: index_dataversemetadatablockfacet_dataverse_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversemetadatablockfacet_dataverse_id ON public.dataversemetadatablockfacet USING btree (dataverse_id);


--
-- Name: index_dataversemetadatablockfacet_metadatablock_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversemetadatablockfacet_metadatablock_id ON public.dataversemetadatablockfacet USING btree (metadatablock_id);


--
-- Name: index_dataverserole_alias; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataverserole_alias ON public.dataverserole USING btree (alias);


--
-- Name: index_dataverserole_name; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataverserole_name ON public.dataverserole USING btree (name);


--
-- Name: index_dataverserole_owner_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataverserole_owner_id ON public.dataverserole USING btree (owner_id);


--
-- Name: index_dataversetheme_dataverse_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dataversetheme_dataverse_id ON public.dataversetheme USING btree (dataverse_id);


--
-- Name: index_dvobject_authority_protocol_upper_identifier; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dvobject_authority_protocol_upper_identifier ON public.dvobject USING btree (authority, protocol, upper((identifier)::text));


--
-- Name: index_dvobject_creator_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dvobject_creator_id ON public.dvobject USING btree (creator_id);


--
-- Name: index_dvobject_dtype; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dvobject_dtype ON public.dvobject USING btree (dtype);


--
-- Name: index_dvobject_owner_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dvobject_owner_id ON public.dvobject USING btree (owner_id);


--
-- Name: index_dvobject_releaseuser_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_dvobject_releaseuser_id ON public.dvobject USING btree (releaseuser_id);


--
-- Name: index_explicitgroup_groupaliasinowner; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_explicitgroup_groupaliasinowner ON public.explicitgroup USING btree (groupaliasinowner);


--
-- Name: index_explicitgroup_owner_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_explicitgroup_owner_id ON public.explicitgroup USING btree (owner_id);


--
-- Name: index_externalfileuploadinprogress_taskid; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_externalfileuploadinprogress_taskid ON public.externalfileuploadinprogress USING btree (taskid);


--
-- Name: index_externaltooltype_externaltool_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_externaltooltype_externaltool_id ON public.externaltooltype USING btree (externaltool_id);


--
-- Name: index_externalvocabularyvalue_uri; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_externalvocabularyvalue_uri ON public.externalvocabularyvalue USING btree (uri);


--
-- Name: index_filemetadata_datafile_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_filemetadata_datafile_id ON public.filemetadata USING btree (datafile_id);


--
-- Name: index_filemetadata_datafilecategory_filecategories_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_filemetadata_datafilecategory_filecategories_id ON public.filemetadata_datafilecategory USING btree (filecategories_id);


--
-- Name: index_filemetadata_datafilecategory_filemetadatas_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_filemetadata_datafilecategory_filemetadatas_id ON public.filemetadata_datafilecategory USING btree (filemetadatas_id);


--
-- Name: index_filemetadata_datasetversion_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_filemetadata_datasetversion_id ON public.filemetadata USING btree (datasetversion_id);


--
-- Name: index_foreignmetadatafieldmapping_foreignfieldxpath; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_foreignmetadatafieldmapping_foreignfieldxpath ON public.foreignmetadatafieldmapping USING btree (foreignfieldxpath);


--
-- Name: index_foreignmetadatafieldmapping_foreignmetadataformatmapping_; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_foreignmetadatafieldmapping_foreignmetadataformatmapping_ ON public.foreignmetadatafieldmapping USING btree (foreignmetadataformatmapping_id);


--
-- Name: index_foreignmetadatafieldmapping_parentfieldmapping_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_foreignmetadatafieldmapping_parentfieldmapping_id ON public.foreignmetadatafieldmapping USING btree (parentfieldmapping_id);


--
-- Name: index_foreignmetadataformatmapping_name; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_foreignmetadataformatmapping_name ON public.foreignmetadataformatmapping USING btree (name);


--
-- Name: index_guestbookresponse_authenticateduser_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_guestbookresponse_authenticateduser_id ON public.guestbookresponse USING btree (authenticateduser_id);


--
-- Name: index_guestbookresponse_datafile_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_guestbookresponse_datafile_id ON public.guestbookresponse USING btree (datafile_id);


--
-- Name: index_guestbookresponse_dataset_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_guestbookresponse_dataset_id ON public.guestbookresponse USING btree (dataset_id);


--
-- Name: index_guestbookresponse_dataset_id_eventtype; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_guestbookresponse_dataset_id_eventtype ON public.guestbookresponse USING btree (dataset_id, eventtype);


--
-- Name: index_guestbookresponse_dataset_id_guestbook_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_guestbookresponse_dataset_id_guestbook_id ON public.guestbookresponse USING btree (dataset_id, guestbook_id);


--
-- Name: index_guestbookresponse_datasetversion_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_guestbookresponse_datasetversion_id ON public.guestbookresponse USING btree (datasetversion_id);


--
-- Name: index_guestbookresponse_guestbook_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_guestbookresponse_guestbook_id ON public.guestbookresponse USING btree (guestbook_id);


--
-- Name: index_harvestingclient_dataverse_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_harvestingclient_dataverse_id ON public.harvestingclient USING btree (dataverse_id);


--
-- Name: index_harvestingclient_harvestingurl; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_harvestingclient_harvestingurl ON public.harvestingclient USING btree (harvestingurl);


--
-- Name: index_harvestingclient_harveststyle; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_harvestingclient_harveststyle ON public.harvestingclient USING btree (harveststyle);


--
-- Name: index_harvestingclient_harvesttype; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_harvestingclient_harvesttype ON public.harvestingclient USING btree (harvesttype);


--
-- Name: index_harvestingdataverseconfig_dataverse_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_harvestingdataverseconfig_dataverse_id ON public.harvestingdataverseconfig USING btree (dataverse_id);


--
-- Name: index_harvestingdataverseconfig_harvestingurl; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_harvestingdataverseconfig_harvestingurl ON public.harvestingdataverseconfig USING btree (harvestingurl);


--
-- Name: index_harvestingdataverseconfig_harveststyle; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_harvestingdataverseconfig_harveststyle ON public.harvestingdataverseconfig USING btree (harveststyle);


--
-- Name: index_harvestingdataverseconfig_harvesttype; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_harvestingdataverseconfig_harvesttype ON public.harvestingdataverseconfig USING btree (harvesttype);


--
-- Name: index_ingestreport_datafile_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_ingestreport_datafile_id ON public.ingestreport USING btree (datafile_id);


--
-- Name: index_ingestrequest_datafile_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_ingestrequest_datafile_id ON public.ingestrequest USING btree (datafile_id);


--
-- Name: index_ipv4range_owner_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_ipv4range_owner_id ON public.ipv4range USING btree (owner_id);


--
-- Name: index_ipv6range_owner_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_ipv6range_owner_id ON public.ipv6range USING btree (owner_id);


--
-- Name: index_makedatacountprocessstate_yearmonth; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_makedatacountprocessstate_yearmonth ON public.makedatacountprocessstate USING btree (yearmonth);


--
-- Name: index_metadatablock_name; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_metadatablock_name ON public.metadatablock USING btree (name);


--
-- Name: index_metadatablock_owner_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_metadatablock_owner_id ON public.metadatablock USING btree (owner_id);


--
-- Name: index_metric_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_metric_id ON public.metric USING btree (id);


--
-- Name: index_passwordresetdata_builtinuser_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_passwordresetdata_builtinuser_id ON public.passwordresetdata USING btree (builtinuser_id);


--
-- Name: index_passwordresetdata_token; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_passwordresetdata_token ON public.passwordresetdata USING btree (token);


--
-- Name: index_persistedglobalgroup_dtype; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_persistedglobalgroup_dtype ON public.persistedglobalgroup USING btree (dtype);


--
-- Name: index_roleassignment_assigneeidentifier; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_roleassignment_assigneeidentifier ON public.roleassignment USING btree (assigneeidentifier);


--
-- Name: index_roleassignment_definitionpoint_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_roleassignment_definitionpoint_id ON public.roleassignment USING btree (definitionpoint_id);


--
-- Name: index_roleassignment_role_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_roleassignment_role_id ON public.roleassignment USING btree (role_id);


--
-- Name: index_roleassignmenthistory_action_by_identifier; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_roleassignmenthistory_action_by_identifier ON public.roleassignmenthistory USING btree (action_by_identifier);


--
-- Name: index_roleassignmenthistory_action_timestamp; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_roleassignmenthistory_action_timestamp ON public.roleassignmenthistory USING btree (action_timestamp);


--
-- Name: index_roleassignmenthistory_action_type; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_roleassignmenthistory_action_type ON public.roleassignmenthistory USING btree (action_type);


--
-- Name: index_roleassignmenthistory_assignee_identifier; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_roleassignmenthistory_assignee_identifier ON public.roleassignmenthistory USING btree (assignee_identifier);


--
-- Name: index_roleassignmenthistory_definition_point_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_roleassignmenthistory_definition_point_id ON public.roleassignmenthistory USING btree (definition_point_id);


--
-- Name: index_roleassignmenthistory_role_assignment_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_roleassignmenthistory_role_assignment_id ON public.roleassignmenthistory USING btree (role_assignment_id);


--
-- Name: index_roleassignmenthistory_role_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_roleassignmenthistory_role_id ON public.roleassignmenthistory USING btree (role_id);


--
-- Name: index_savedsearch_creator_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_savedsearch_creator_id ON public.savedsearch USING btree (creator_id);


--
-- Name: index_savedsearch_definitionpoint_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_savedsearch_definitionpoint_id ON public.savedsearch USING btree (definitionpoint_id);


--
-- Name: index_savedsearchfilterquery_savedsearch_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_savedsearchfilterquery_savedsearch_id ON public.savedsearchfilterquery USING btree (savedsearch_id);


--
-- Name: index_storageuse_dvobjectcontainer_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_storageuse_dvobjectcontainer_id ON public.storageuse USING btree (dvobjectcontainer_id);


--
-- Name: index_summarystatistic_datavariable_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_summarystatistic_datavariable_id ON public.summarystatistic USING btree (datavariable_id);


--
-- Name: index_template_dataverse_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_template_dataverse_id ON public.template USING btree (dataverse_id);


--
-- Name: index_usernotification_user_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_usernotification_user_id ON public.usernotification USING btree (user_id);


--
-- Name: index_vargroup_filemetadata_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_vargroup_filemetadata_id ON public.vargroup USING btree (filemetadata_id);


--
-- Name: index_variablecategory_datavariable_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_variablecategory_datavariable_id ON public.variablecategory USING btree (datavariable_id);


--
-- Name: index_variablemetadata_datavariable_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_variablemetadata_datavariable_id ON public.variablemetadata USING btree (datavariable_id);


--
-- Name: index_variablemetadata_datavariable_id_filemetadata_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_variablemetadata_datavariable_id_filemetadata_id ON public.variablemetadata USING btree (datavariable_id, filemetadata_id);


--
-- Name: index_variablemetadata_filemetadata_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_variablemetadata_filemetadata_id ON public.variablemetadata USING btree (filemetadata_id);


--
-- Name: index_variablerange_datavariable_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_variablerange_datavariable_id ON public.variablerange USING btree (datavariable_id);


--
-- Name: index_variablerangeitem_datavariable_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX index_variablerangeitem_datavariable_id ON public.variablerangeitem USING btree (datavariable_id);


--
-- Name: license_sortorder_id; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE INDEX license_sortorder_id ON public.license USING btree (sortorder, id);


--
-- Name: one_draft_version_per_dataset; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE UNIQUE INDEX one_draft_version_per_dataset ON public.datasetversion USING btree (dataset_id) WHERE ((versionstate)::text = 'DRAFT'::text);


--
-- Name: unq_dvobject_storageidentifier; Type: INDEX; Schema: public; Owner: dvnuser
--

CREATE UNIQUE INDEX unq_dvobject_storageidentifier ON public.dvobject USING btree (owner_id, storageidentifier) WHERE ((dtype)::text = 'DataFile'::text);


--
-- Name: dataverse_citationdatasetfieldtypes dataverse_citationdatasetfieldtypes_citationdatasetfieldtype_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverse_citationdatasetfieldtypes
    ADD CONSTRAINT dataverse_citationdatasetfieldtypes_citationdatasetfieldtype_id FOREIGN KEY (citationdatasetfieldtype_id) REFERENCES public.datasetfieldtype(id);


--
-- Name: datasetfield_controlledvocabularyvalue dtasetfieldcontrolledvocabularyvaluecntrolledvocabularyvaluesid; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfield_controlledvocabularyvalue
    ADD CONSTRAINT dtasetfieldcontrolledvocabularyvaluecntrolledvocabularyvaluesid FOREIGN KEY (controlledvocabularyvalues_id) REFERENCES public.controlledvocabularyvalue(id);


--
-- Name: explicitgroup_authenticateduser explicitgroup_authenticateduser_containedauthenticatedusers_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.explicitgroup_authenticateduser
    ADD CONSTRAINT explicitgroup_authenticateduser_containedauthenticatedusers_id FOREIGN KEY (containedauthenticatedusers_id) REFERENCES public.authenticateduser(id);


--
-- Name: alternativepersistentidentifier fk_alternativepersistentidentifier_dvobject_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.alternativepersistentidentifier
    ADD CONSTRAINT fk_alternativepersistentidentifier_dvobject_id FOREIGN KEY (dvobject_id) REFERENCES public.dvobject(id);


--
-- Name: apitoken fk_apitoken_authenticateduser_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.apitoken
    ADD CONSTRAINT fk_apitoken_authenticateduser_id FOREIGN KEY (authenticateduser_id) REFERENCES public.authenticateduser(id);


--
-- Name: authenticateduserlookup fk_authenticateduserlookup_authenticateduser_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.authenticateduserlookup
    ADD CONSTRAINT fk_authenticateduserlookup_authenticateduser_id FOREIGN KEY (authenticateduser_id) REFERENCES public.authenticateduser(id);


--
-- Name: auxiliaryfile fk_auxiliaryfile_datafile_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.auxiliaryfile
    ADD CONSTRAINT fk_auxiliaryfile_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);


--
-- Name: bannermessagetext fk_bannermessagetext_bannermessage_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.bannermessagetext
    ADD CONSTRAINT fk_bannermessagetext_bannermessage_id FOREIGN KEY (bannermessage_id) REFERENCES public.bannermessage(id);


--
-- Name: categorymetadata fk_categorymetadata_category_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.categorymetadata
    ADD CONSTRAINT fk_categorymetadata_category_id FOREIGN KEY (category_id) REFERENCES public.variablecategory(id);


--
-- Name: categorymetadata fk_categorymetadata_variablemetadata_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.categorymetadata
    ADD CONSTRAINT fk_categorymetadata_variablemetadata_id FOREIGN KEY (variablemetadata_id) REFERENCES public.variablemetadata(id);


--
-- Name: clientharvestrun fk_clientharvestrun_harvestingclient_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.clientharvestrun
    ADD CONSTRAINT fk_clientharvestrun_harvestingclient_id FOREIGN KEY (harvestingclient_id) REFERENCES public.harvestingclient(id);


--
-- Name: confirmemaildata fk_confirmemaildata_authenticateduser_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.confirmemaildata
    ADD CONSTRAINT fk_confirmemaildata_authenticateduser_id FOREIGN KEY (authenticateduser_id) REFERENCES public.authenticateduser(id);


--
-- Name: controlledvocabalternate fk_controlledvocabalternate_controlledvocabularyvalue_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.controlledvocabalternate
    ADD CONSTRAINT fk_controlledvocabalternate_controlledvocabularyvalue_id FOREIGN KEY (controlledvocabularyvalue_id) REFERENCES public.controlledvocabularyvalue(id);


--
-- Name: controlledvocabalternate fk_controlledvocabalternate_datasetfieldtype_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.controlledvocabalternate
    ADD CONSTRAINT fk_controlledvocabalternate_datasetfieldtype_id FOREIGN KEY (datasetfieldtype_id) REFERENCES public.datasetfieldtype(id);


--
-- Name: controlledvocabularyvalue fk_controlledvocabularyvalue_datasetfieldtype_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.controlledvocabularyvalue
    ADD CONSTRAINT fk_controlledvocabularyvalue_datasetfieldtype_id FOREIGN KEY (datasetfieldtype_id) REFERENCES public.datasetfieldtype(id);


--
-- Name: curationstatus fk_curationstatus_authenticateduser_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.curationstatus
    ADD CONSTRAINT fk_curationstatus_authenticateduser_id FOREIGN KEY (authenticateduser_id) REFERENCES public.authenticateduser(id);


--
-- Name: curationstatus fk_curationstatus_datasetversion_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.curationstatus
    ADD CONSTRAINT fk_curationstatus_datasetversion_id FOREIGN KEY (datasetversion_id) REFERENCES public.datasetversion(id);


--
-- Name: customquestion fk_customquestion_guestbook_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.customquestion
    ADD CONSTRAINT fk_customquestion_guestbook_id FOREIGN KEY (guestbook_id) REFERENCES public.guestbook(id);


--
-- Name: customquestionresponse fk_customquestionresponse_customquestion_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.customquestionresponse
    ADD CONSTRAINT fk_customquestionresponse_customquestion_id FOREIGN KEY (customquestion_id) REFERENCES public.customquestion(id);


--
-- Name: customquestionresponse fk_customquestionresponse_guestbookresponse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.customquestionresponse
    ADD CONSTRAINT fk_customquestionresponse_guestbookresponse_id FOREIGN KEY (guestbookresponse_id) REFERENCES public.guestbookresponse(id);


--
-- Name: customquestionvalue fk_customquestionvalue_customquestion_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.customquestionvalue
    ADD CONSTRAINT fk_customquestionvalue_customquestion_id FOREIGN KEY (customquestion_id) REFERENCES public.customquestion(id);


--
-- Name: datafile fk_datafile_embargo_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datafile
    ADD CONSTRAINT fk_datafile_embargo_id FOREIGN KEY (embargo_id) REFERENCES public.embargo(id);


--
-- Name: datafile fk_datafile_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datafile
    ADD CONSTRAINT fk_datafile_id FOREIGN KEY (id) REFERENCES public.dvobject(id);


--
-- Name: datafile fk_datafile_retention_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datafile
    ADD CONSTRAINT fk_datafile_retention_id FOREIGN KEY (retention_id) REFERENCES public.retention(id);


--
-- Name: datafilecategory fk_datafilecategory_dataset_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datafilecategory
    ADD CONSTRAINT fk_datafilecategory_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);


--
-- Name: datafiletag fk_datafiletag_datafile_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datafiletag
    ADD CONSTRAINT fk_datafiletag_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);


--
-- Name: dataset fk_dataset_citationdatedatasetfieldtype_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT fk_dataset_citationdatedatasetfieldtype_id FOREIGN KEY (citationdatedatasetfieldtype_id) REFERENCES public.datasetfieldtype(id);


--
-- Name: dataset fk_dataset_datasettype_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT fk_dataset_datasettype_id FOREIGN KEY (datasettype_id) REFERENCES public.datasettype(id);


--
-- Name: dataset fk_dataset_guestbook_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT fk_dataset_guestbook_id FOREIGN KEY (guestbook_id) REFERENCES public.guestbook(id);


--
-- Name: dataset fk_dataset_harvestingclient_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT fk_dataset_harvestingclient_id FOREIGN KEY (harvestingclient_id) REFERENCES public.harvestingclient(id);


--
-- Name: dataset fk_dataset_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT fk_dataset_id FOREIGN KEY (id) REFERENCES public.dvobject(id);


--
-- Name: dataset fk_dataset_template_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT fk_dataset_template_id FOREIGN KEY (template_id) REFERENCES public.template(id);


--
-- Name: dataset fk_dataset_thumbnailfile_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT fk_dataset_thumbnailfile_id FOREIGN KEY (thumbnailfile_id) REFERENCES public.dvobject(id);


--
-- Name: datasetexternalcitations fk_datasetexternalcitations_dataset_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetexternalcitations
    ADD CONSTRAINT fk_datasetexternalcitations_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);


--
-- Name: datasetfield_controlledvocabularyvalue fk_datasetfield_controlledvocabularyvalue_datasetfield_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfield_controlledvocabularyvalue
    ADD CONSTRAINT fk_datasetfield_controlledvocabularyvalue_datasetfield_id FOREIGN KEY (datasetfield_id) REFERENCES public.datasetfield(id);


--
-- Name: datasetfield fk_datasetfield_datasetfieldtype_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfield
    ADD CONSTRAINT fk_datasetfield_datasetfieldtype_id FOREIGN KEY (datasetfieldtype_id) REFERENCES public.datasetfieldtype(id);


--
-- Name: datasetfield fk_datasetfield_datasetversion_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfield
    ADD CONSTRAINT fk_datasetfield_datasetversion_id FOREIGN KEY (datasetversion_id) REFERENCES public.datasetversion(id);


--
-- Name: datasetfield fk_datasetfield_parentdatasetfieldcompoundvalue_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfield
    ADD CONSTRAINT fk_datasetfield_parentdatasetfieldcompoundvalue_id FOREIGN KEY (parentdatasetfieldcompoundvalue_id) REFERENCES public.datasetfieldcompoundvalue(id);


--
-- Name: datasetfield fk_datasetfield_template_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfield
    ADD CONSTRAINT fk_datasetfield_template_id FOREIGN KEY (template_id) REFERENCES public.template(id);


--
-- Name: datasetfieldcompoundvalue fk_datasetfieldcompoundvalue_parentdatasetfield_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfieldcompoundvalue
    ADD CONSTRAINT fk_datasetfieldcompoundvalue_parentdatasetfield_id FOREIGN KEY (parentdatasetfield_id) REFERENCES public.datasetfield(id);


--
-- Name: datasetfielddefaultvalue fk_datasetfielddefaultvalue_datasetfield_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfielddefaultvalue
    ADD CONSTRAINT fk_datasetfielddefaultvalue_datasetfield_id FOREIGN KEY (datasetfield_id) REFERENCES public.datasetfieldtype(id);


--
-- Name: datasetfielddefaultvalue fk_datasetfielddefaultvalue_defaultvalueset_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfielddefaultvalue
    ADD CONSTRAINT fk_datasetfielddefaultvalue_defaultvalueset_id FOREIGN KEY (defaultvalueset_id) REFERENCES public.defaultvalueset(id);


--
-- Name: datasetfielddefaultvalue fk_datasetfielddefaultvalue_parentdatasetfielddefaultvalue_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfielddefaultvalue
    ADD CONSTRAINT fk_datasetfielddefaultvalue_parentdatasetfielddefaultvalue_id FOREIGN KEY (parentdatasetfielddefaultvalue_id) REFERENCES public.datasetfielddefaultvalue(id);


--
-- Name: datasetfieldtype fk_datasetfieldtype_metadatablock_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfieldtype
    ADD CONSTRAINT fk_datasetfieldtype_metadatablock_id FOREIGN KEY (metadatablock_id) REFERENCES public.metadatablock(id);


--
-- Name: datasetfieldtype fk_datasetfieldtype_parentdatasetfieldtype_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfieldtype
    ADD CONSTRAINT fk_datasetfieldtype_parentdatasetfieldtype_id FOREIGN KEY (parentdatasetfieldtype_id) REFERENCES public.datasetfieldtype(id);


--
-- Name: datasetfieldvalue fk_datasetfieldvalue_datasetfield_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetfieldvalue
    ADD CONSTRAINT fk_datasetfieldvalue_datasetfield_id FOREIGN KEY (datasetfield_id) REFERENCES public.datasetfield(id);


--
-- Name: datasetlinkingdataverse fk_datasetlinkingdataverse_dataset_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetlinkingdataverse
    ADD CONSTRAINT fk_datasetlinkingdataverse_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);


--
-- Name: datasetlinkingdataverse fk_datasetlinkingdataverse_linkingdataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetlinkingdataverse
    ADD CONSTRAINT fk_datasetlinkingdataverse_linkingdataverse_id FOREIGN KEY (linkingdataverse_id) REFERENCES public.dvobject(id);


--
-- Name: datasetlock fk_datasetlock_dataset_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetlock
    ADD CONSTRAINT fk_datasetlock_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);


--
-- Name: datasetlock fk_datasetlock_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetlock
    ADD CONSTRAINT fk_datasetlock_user_id FOREIGN KEY (user_id) REFERENCES public.authenticateduser(id);


--
-- Name: datasetmetrics fk_datasetmetrics_dataset_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetmetrics
    ADD CONSTRAINT fk_datasetmetrics_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);


--
-- Name: datasettype_license fk_datasettype_license_datasettype_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasettype_license
    ADD CONSTRAINT fk_datasettype_license_datasettype_id FOREIGN KEY (datasettype_id) REFERENCES public.datasettype(id);


--
-- Name: datasettype_license fk_datasettype_license_licenses_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasettype_license
    ADD CONSTRAINT fk_datasettype_license_licenses_id FOREIGN KEY (licenses_id) REFERENCES public.license(id);


--
-- Name: datasettype_metadatablock fk_datasettype_metadatablock_datasettype_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasettype_metadatablock
    ADD CONSTRAINT fk_datasettype_metadatablock_datasettype_id FOREIGN KEY (datasettype_id) REFERENCES public.datasettype(id);


--
-- Name: datasettype_metadatablock fk_datasettype_metadatablock_metadatablocks_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasettype_metadatablock
    ADD CONSTRAINT fk_datasettype_metadatablock_metadatablocks_id FOREIGN KEY (metadatablocks_id) REFERENCES public.metadatablock(id);


--
-- Name: datasetversion fk_datasetversion_dataset_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetversion
    ADD CONSTRAINT fk_datasetversion_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);


--
-- Name: datasetversion fk_datasetversion_termsofuseandaccess_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetversion
    ADD CONSTRAINT fk_datasetversion_termsofuseandaccess_id FOREIGN KEY (termsofuseandaccess_id) REFERENCES public.termsofuseandaccess(id);


--
-- Name: datasetversionuser fk_datasetversionuser_authenticateduser_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetversionuser
    ADD CONSTRAINT fk_datasetversionuser_authenticateduser_id FOREIGN KEY (authenticateduser_id) REFERENCES public.authenticateduser(id);


--
-- Name: datasetversionuser fk_datasetversionuser_datasetversion_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datasetversionuser
    ADD CONSTRAINT fk_datasetversionuser_datasetversion_id FOREIGN KEY (datasetversion_id) REFERENCES public.datasetversion(id);


--
-- Name: datatable fk_datatable_datafile_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datatable
    ADD CONSTRAINT fk_datatable_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);


--
-- Name: datavariable fk_datavariable_datatable_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.datavariable
    ADD CONSTRAINT fk_datavariable_datatable_id FOREIGN KEY (datatable_id) REFERENCES public.datatable(id);


--
-- Name: dataverse_citationdatasetfieldtypes fk_dataverse_citationdatasetfieldtypes_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverse_citationdatasetfieldtypes
    ADD CONSTRAINT fk_dataverse_citationdatasetfieldtypes_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);


--
-- Name: dataverse fk_dataverse_defaultcontributorrole_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverse
    ADD CONSTRAINT fk_dataverse_defaultcontributorrole_id FOREIGN KEY (defaultcontributorrole_id) REFERENCES public.dataverserole(id);


--
-- Name: dataverse fk_dataverse_defaulttemplate_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverse
    ADD CONSTRAINT fk_dataverse_defaulttemplate_id FOREIGN KEY (defaulttemplate_id) REFERENCES public.template(id);


--
-- Name: dataverse fk_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverse
    ADD CONSTRAINT fk_dataverse_id FOREIGN KEY (id) REFERENCES public.dvobject(id);


--
-- Name: dataverse_metadatablock fk_dataverse_metadatablock_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverse_metadatablock
    ADD CONSTRAINT fk_dataverse_metadatablock_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);


--
-- Name: dataverse_metadatablock fk_dataverse_metadatablock_metadatablocks_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverse_metadatablock
    ADD CONSTRAINT fk_dataverse_metadatablock_metadatablocks_id FOREIGN KEY (metadatablocks_id) REFERENCES public.metadatablock(id);


--
-- Name: dataversecontact fk_dataversecontact_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversecontact
    ADD CONSTRAINT fk_dataversecontact_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);


--
-- Name: dataversefacet fk_dataversefacet_datasetfieldtype_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefacet
    ADD CONSTRAINT fk_dataversefacet_datasetfieldtype_id FOREIGN KEY (datasetfieldtype_id) REFERENCES public.datasetfieldtype(id);


--
-- Name: dataversefacet fk_dataversefacet_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefacet
    ADD CONSTRAINT fk_dataversefacet_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);


--
-- Name: dataversefeatureddataverse fk_dataversefeatureddataverse_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefeatureddataverse
    ADD CONSTRAINT fk_dataversefeatureddataverse_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);


--
-- Name: dataversefeatureddataverse fk_dataversefeatureddataverse_featureddataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefeatureddataverse
    ADD CONSTRAINT fk_dataversefeatureddataverse_featureddataverse_id FOREIGN KEY (featureddataverse_id) REFERENCES public.dvobject(id);


--
-- Name: dataversefeatureditem fk_dataversefeatureditem_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefeatureditem
    ADD CONSTRAINT fk_dataversefeatureditem_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);


--
-- Name: dataversefeatureditem fk_dataversefeatureditem_dvobject_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefeatureditem
    ADD CONSTRAINT fk_dataversefeatureditem_dvobject_id FOREIGN KEY (dvobject_id) REFERENCES public.dvobject(id);


--
-- Name: dataversefieldtypeinputlevel fk_dataversefieldtypeinputlevel_datasetfieldtype_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefieldtypeinputlevel
    ADD CONSTRAINT fk_dataversefieldtypeinputlevel_datasetfieldtype_id FOREIGN KEY (datasetfieldtype_id) REFERENCES public.datasetfieldtype(id);


--
-- Name: dataversefieldtypeinputlevel fk_dataversefieldtypeinputlevel_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversefieldtypeinputlevel
    ADD CONSTRAINT fk_dataversefieldtypeinputlevel_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);


--
-- Name: dataverselinkingdataverse fk_dataverselinkingdataverse_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverselinkingdataverse
    ADD CONSTRAINT fk_dataverselinkingdataverse_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);


--
-- Name: dataverselinkingdataverse fk_dataverselinkingdataverse_linkingdataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverselinkingdataverse
    ADD CONSTRAINT fk_dataverselinkingdataverse_linkingdataverse_id FOREIGN KEY (linkingdataverse_id) REFERENCES public.dvobject(id);


--
-- Name: dataversemetadatablockfacet fk_dataversemetadatablockfacet_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversemetadatablockfacet
    ADD CONSTRAINT fk_dataversemetadatablockfacet_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);


--
-- Name: dataversemetadatablockfacet fk_dataversemetadatablockfacet_metadatablock_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversemetadatablockfacet
    ADD CONSTRAINT fk_dataversemetadatablockfacet_metadatablock_id FOREIGN KEY (metadatablock_id) REFERENCES public.metadatablock(id);


--
-- Name: dataverserole fk_dataverserole_owner_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataverserole
    ADD CONSTRAINT fk_dataverserole_owner_id FOREIGN KEY (owner_id) REFERENCES public.dvobject(id);


--
-- Name: dataversesubjects fk_dataversesubjects_controlledvocabularyvalue_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversesubjects
    ADD CONSTRAINT fk_dataversesubjects_controlledvocabularyvalue_id FOREIGN KEY (controlledvocabularyvalue_id) REFERENCES public.controlledvocabularyvalue(id);


--
-- Name: dataversesubjects fk_dataversesubjects_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversesubjects
    ADD CONSTRAINT fk_dataversesubjects_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);


--
-- Name: dataversetheme fk_dataversetheme_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataversetheme
    ADD CONSTRAINT fk_dataversetheme_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);


--
-- Name: dvobject fk_dvobject_creator_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dvobject
    ADD CONSTRAINT fk_dvobject_creator_id FOREIGN KEY (creator_id) REFERENCES public.authenticateduser(id);


--
-- Name: dvobject fk_dvobject_owner_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dvobject
    ADD CONSTRAINT fk_dvobject_owner_id FOREIGN KEY (owner_id) REFERENCES public.dvobject(id);


--
-- Name: dvobject fk_dvobject_releaseuser_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dvobject
    ADD CONSTRAINT fk_dvobject_releaseuser_id FOREIGN KEY (releaseuser_id) REFERENCES public.authenticateduser(id);


--
-- Name: explicitgroup_authenticateduser fk_explicitgroup_authenticateduser_explicitgroup_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.explicitgroup_authenticateduser
    ADD CONSTRAINT fk_explicitgroup_authenticateduser_explicitgroup_id FOREIGN KEY (explicitgroup_id) REFERENCES public.explicitgroup(id);


--
-- Name: explicitgroup_containedroleassignees fk_explicitgroup_containedroleassignees_explicitgroup_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.explicitgroup_containedroleassignees
    ADD CONSTRAINT fk_explicitgroup_containedroleassignees_explicitgroup_id FOREIGN KEY (explicitgroup_id) REFERENCES public.explicitgroup(id);


--
-- Name: explicitgroup_explicitgroup fk_explicitgroup_explicitgroup_containedexplicitgroups_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.explicitgroup_explicitgroup
    ADD CONSTRAINT fk_explicitgroup_explicitgroup_containedexplicitgroups_id FOREIGN KEY (containedexplicitgroups_id) REFERENCES public.explicitgroup(id);


--
-- Name: explicitgroup_explicitgroup fk_explicitgroup_explicitgroup_explicitgroup_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.explicitgroup_explicitgroup
    ADD CONSTRAINT fk_explicitgroup_explicitgroup_explicitgroup_id FOREIGN KEY (explicitgroup_id) REFERENCES public.explicitgroup(id);


--
-- Name: explicitgroup fk_explicitgroup_owner_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.explicitgroup
    ADD CONSTRAINT fk_explicitgroup_owner_id FOREIGN KEY (owner_id) REFERENCES public.dvobject(id);


--
-- Name: externaltooltype fk_externaltooltype_externaltool_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.externaltooltype
    ADD CONSTRAINT fk_externaltooltype_externaltool_id FOREIGN KEY (externaltool_id) REFERENCES public.externaltool(id);


--
-- Name: fileaccessrequests fk_fileaccessrequests_authenticated_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.fileaccessrequests
    ADD CONSTRAINT fk_fileaccessrequests_authenticated_user_id FOREIGN KEY (authenticated_user_id) REFERENCES public.authenticateduser(id);


--
-- Name: fileaccessrequests fk_fileaccessrequests_datafile_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.fileaccessrequests
    ADD CONSTRAINT fk_fileaccessrequests_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);


--
-- Name: fileaccessrequests fk_fileaccessrequests_guestbookresponse; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.fileaccessrequests
    ADD CONSTRAINT fk_fileaccessrequests_guestbookresponse FOREIGN KEY (guestbookresponse_id) REFERENCES public.guestbookresponse(id);


--
-- Name: filemetadata fk_filemetadata_datafile_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.filemetadata
    ADD CONSTRAINT fk_filemetadata_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);


--
-- Name: filemetadata_datafilecategory fk_filemetadata_datafilecategory_filecategories_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.filemetadata_datafilecategory
    ADD CONSTRAINT fk_filemetadata_datafilecategory_filecategories_id FOREIGN KEY (filecategories_id) REFERENCES public.datafilecategory(id);


--
-- Name: filemetadata_datafilecategory fk_filemetadata_datafilecategory_filemetadatas_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.filemetadata_datafilecategory
    ADD CONSTRAINT fk_filemetadata_datafilecategory_filemetadatas_id FOREIGN KEY (filemetadatas_id) REFERENCES public.filemetadata(id);


--
-- Name: filemetadata fk_filemetadata_datasetversion_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.filemetadata
    ADD CONSTRAINT fk_filemetadata_datasetversion_id FOREIGN KEY (datasetversion_id) REFERENCES public.datasetversion(id);


--
-- Name: foreignmetadatafieldmapping fk_foreignmetadatafieldmapping_foreignmetadataformatmapping_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.foreignmetadatafieldmapping
    ADD CONSTRAINT fk_foreignmetadatafieldmapping_foreignmetadataformatmapping_id FOREIGN KEY (foreignmetadataformatmapping_id) REFERENCES public.foreignmetadataformatmapping(id);


--
-- Name: foreignmetadatafieldmapping fk_foreignmetadatafieldmapping_parentfieldmapping_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.foreignmetadatafieldmapping
    ADD CONSTRAINT fk_foreignmetadatafieldmapping_parentfieldmapping_id FOREIGN KEY (parentfieldmapping_id) REFERENCES public.foreignmetadatafieldmapping(id);


--
-- Name: globustaskinprogress fk_globustaskinprogress_dataset_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.globustaskinprogress
    ADD CONSTRAINT fk_globustaskinprogress_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);


--
-- Name: globustaskinprogress fk_globustaskinprogress_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.globustaskinprogress
    ADD CONSTRAINT fk_globustaskinprogress_user_id FOREIGN KEY (user_id) REFERENCES public.authenticateduser(id);


--
-- Name: guestbook fk_guestbook_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.guestbook
    ADD CONSTRAINT fk_guestbook_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);


--
-- Name: guestbookresponse fk_guestbookresponse_authenticateduser_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.guestbookresponse
    ADD CONSTRAINT fk_guestbookresponse_authenticateduser_id FOREIGN KEY (authenticateduser_id) REFERENCES public.authenticateduser(id);


--
-- Name: guestbookresponse fk_guestbookresponse_datafile_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.guestbookresponse
    ADD CONSTRAINT fk_guestbookresponse_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);


--
-- Name: guestbookresponse fk_guestbookresponse_dataset_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.guestbookresponse
    ADD CONSTRAINT fk_guestbookresponse_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);


--
-- Name: guestbookresponse fk_guestbookresponse_datasetversion_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.guestbookresponse
    ADD CONSTRAINT fk_guestbookresponse_datasetversion_id FOREIGN KEY (datasetversion_id) REFERENCES public.datasetversion(id);


--
-- Name: guestbookresponse fk_guestbookresponse_guestbook_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.guestbookresponse
    ADD CONSTRAINT fk_guestbookresponse_guestbook_id FOREIGN KEY (guestbook_id) REFERENCES public.guestbook(id);


--
-- Name: harvestingclient fk_harvestingclient_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.harvestingclient
    ADD CONSTRAINT fk_harvestingclient_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);


--
-- Name: harvestingdataverseconfig fk_harvestingdataverseconfig_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.harvestingdataverseconfig
    ADD CONSTRAINT fk_harvestingdataverseconfig_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);


--
-- Name: ingestreport fk_ingestreport_datafile_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.ingestreport
    ADD CONSTRAINT fk_ingestreport_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);


--
-- Name: ingestrequest fk_ingestrequest_datafile_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.ingestrequest
    ADD CONSTRAINT fk_ingestrequest_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);


--
-- Name: ipv4range fk_ipv4range_owner_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.ipv4range
    ADD CONSTRAINT fk_ipv4range_owner_id FOREIGN KEY (owner_id) REFERENCES public.persistedglobalgroup(id);


--
-- Name: ipv6range fk_ipv6range_owner_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.ipv6range
    ADD CONSTRAINT fk_ipv6range_owner_id FOREIGN KEY (owner_id) REFERENCES public.persistedglobalgroup(id);


--
-- Name: metadatablock fk_metadatablock_owner_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.metadatablock
    ADD CONSTRAINT fk_metadatablock_owner_id FOREIGN KEY (owner_id) REFERENCES public.dvobject(id);


--
-- Name: metric fk_metric_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.metric
    ADD CONSTRAINT fk_metric_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);


--
-- Name: oauth2tokendata fk_oauth2tokendata_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.oauth2tokendata
    ADD CONSTRAINT fk_oauth2tokendata_user_id FOREIGN KEY (user_id) REFERENCES public.authenticateduser(id);


--
-- Name: passwordresetdata fk_passwordresetdata_builtinuser_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.passwordresetdata
    ADD CONSTRAINT fk_passwordresetdata_builtinuser_id FOREIGN KEY (builtinuser_id) REFERENCES public.builtinuser(id);


--
-- Name: pendingworkflowinvocation fk_pendingworkflowinvocation_dataset_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.pendingworkflowinvocation
    ADD CONSTRAINT fk_pendingworkflowinvocation_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);


--
-- Name: pendingworkflowinvocation fk_pendingworkflowinvocation_workflow_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.pendingworkflowinvocation
    ADD CONSTRAINT fk_pendingworkflowinvocation_workflow_id FOREIGN KEY (workflow_id) REFERENCES public.workflow(id);


--
-- Name: roleassignment fk_roleassignment_definitionpoint_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.roleassignment
    ADD CONSTRAINT fk_roleassignment_definitionpoint_id FOREIGN KEY (definitionpoint_id) REFERENCES public.dvobject(id);


--
-- Name: roleassignment fk_roleassignment_role_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.roleassignment
    ADD CONSTRAINT fk_roleassignment_role_id FOREIGN KEY (role_id) REFERENCES public.dataverserole(id);


--
-- Name: savedsearch fk_savedsearch_creator_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.savedsearch
    ADD CONSTRAINT fk_savedsearch_creator_id FOREIGN KEY (creator_id) REFERENCES public.authenticateduser(id);


--
-- Name: savedsearch fk_savedsearch_definitionpoint_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.savedsearch
    ADD CONSTRAINT fk_savedsearch_definitionpoint_id FOREIGN KEY (definitionpoint_id) REFERENCES public.dvobject(id);


--
-- Name: savedsearchfilterquery fk_savedsearchfilterquery_savedsearch_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.savedsearchfilterquery
    ADD CONSTRAINT fk_savedsearchfilterquery_savedsearch_id FOREIGN KEY (savedsearch_id) REFERENCES public.savedsearch(id);


--
-- Name: storagequota fk_storagequota_definitionpoint_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.storagequota
    ADD CONSTRAINT fk_storagequota_definitionpoint_id FOREIGN KEY (definitionpoint_id) REFERENCES public.dvobject(id);


--
-- Name: storageuse fk_storageuse_dvobjectcontainer_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.storageuse
    ADD CONSTRAINT fk_storageuse_dvobjectcontainer_id FOREIGN KEY (dvobjectcontainer_id) REFERENCES public.dvobject(id);


--
-- Name: summarystatistic fk_summarystatistic_datavariable_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.summarystatistic
    ADD CONSTRAINT fk_summarystatistic_datavariable_id FOREIGN KEY (datavariable_id) REFERENCES public.datavariable(id);


--
-- Name: template fk_template_dataverse_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.template
    ADD CONSTRAINT fk_template_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);


--
-- Name: template fk_template_termsofuseandaccess_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.template
    ADD CONSTRAINT fk_template_termsofuseandaccess_id FOREIGN KEY (termsofuseandaccess_id) REFERENCES public.termsofuseandaccess(id);


--
-- Name: termsofuseandaccess fk_termsofuseandaccess_license_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.termsofuseandaccess
    ADD CONSTRAINT fk_termsofuseandaccess_license_id FOREIGN KEY (license_id) REFERENCES public.license(id);


--
-- Name: termsofuseandaccess fk_termsofuseandcesss_license_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.termsofuseandaccess
    ADD CONSTRAINT fk_termsofuseandcesss_license_id FOREIGN KEY (license_id) REFERENCES public.license(id);


--
-- Name: userbannermessage fk_userbannermessage_bannermessage_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.userbannermessage
    ADD CONSTRAINT fk_userbannermessage_bannermessage_id FOREIGN KEY (bannermessage_id) REFERENCES public.bannermessage(id);


--
-- Name: userbannermessage fk_userbannermessage_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.userbannermessage
    ADD CONSTRAINT fk_userbannermessage_user_id FOREIGN KEY (user_id) REFERENCES public.authenticateduser(id);


--
-- Name: usernotification fk_usernotification_requestor_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.usernotification
    ADD CONSTRAINT fk_usernotification_requestor_id FOREIGN KEY (requestor_id) REFERENCES public.authenticateduser(id);


--
-- Name: usernotification fk_usernotification_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.usernotification
    ADD CONSTRAINT fk_usernotification_user_id FOREIGN KEY (user_id) REFERENCES public.authenticateduser(id);


--
-- Name: vargroup_datavariable fk_vargroup_datavariable_vargroup_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.vargroup_datavariable
    ADD CONSTRAINT fk_vargroup_datavariable_vargroup_id FOREIGN KEY (vargroup_id) REFERENCES public.vargroup(id);


--
-- Name: vargroup_datavariable fk_vargroup_datavariable_varsingroup_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.vargroup_datavariable
    ADD CONSTRAINT fk_vargroup_datavariable_varsingroup_id FOREIGN KEY (varsingroup_id) REFERENCES public.datavariable(id);


--
-- Name: vargroup fk_vargroup_filemetadata_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.vargroup
    ADD CONSTRAINT fk_vargroup_filemetadata_id FOREIGN KEY (filemetadata_id) REFERENCES public.filemetadata(id);


--
-- Name: variablecategory fk_variablecategory_datavariable_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.variablecategory
    ADD CONSTRAINT fk_variablecategory_datavariable_id FOREIGN KEY (datavariable_id) REFERENCES public.datavariable(id);


--
-- Name: variablemetadata fk_variablemetadata_datavariable_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.variablemetadata
    ADD CONSTRAINT fk_variablemetadata_datavariable_id FOREIGN KEY (datavariable_id) REFERENCES public.datavariable(id);


--
-- Name: variablemetadata fk_variablemetadata_filemetadata_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.variablemetadata
    ADD CONSTRAINT fk_variablemetadata_filemetadata_id FOREIGN KEY (filemetadata_id) REFERENCES public.filemetadata(id);


--
-- Name: variablemetadata fk_variablemetadata_weightvariable_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.variablemetadata
    ADD CONSTRAINT fk_variablemetadata_weightvariable_id FOREIGN KEY (weightvariable_id) REFERENCES public.datavariable(id);


--
-- Name: variablerange fk_variablerange_datavariable_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.variablerange
    ADD CONSTRAINT fk_variablerange_datavariable_id FOREIGN KEY (datavariable_id) REFERENCES public.datavariable(id);


--
-- Name: variablerangeitem fk_variablerangeitem_datavariable_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.variablerangeitem
    ADD CONSTRAINT fk_variablerangeitem_datavariable_id FOREIGN KEY (datavariable_id) REFERENCES public.datavariable(id);


--
-- Name: workflowcomment fk_workflowcomment_authenticateduser_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.workflowcomment
    ADD CONSTRAINT fk_workflowcomment_authenticateduser_id FOREIGN KEY (authenticateduser_id) REFERENCES public.authenticateduser(id);


--
-- Name: workflowcomment fk_workflowcomment_datasetversion_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.workflowcomment
    ADD CONSTRAINT fk_workflowcomment_datasetversion_id FOREIGN KEY (datasetversion_id) REFERENCES public.datasetversion(id);


--
-- Name: workflowstepdata fk_workflowstepdata_parent_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.workflowstepdata
    ADD CONSTRAINT fk_workflowstepdata_parent_id FOREIGN KEY (parent_id) REFERENCES public.workflow(id);


--
-- Name: workflowstepdata_stepparameters fk_workflowstepdata_stepparameters_workflowstepdata_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.workflowstepdata_stepparameters
    ADD CONSTRAINT fk_workflowstepdata_stepparameters_workflowstepdata_id FOREIGN KEY (workflowstepdata_id) REFERENCES public.workflowstepdata(id);


--
-- Name: workflowstepdata_stepsettings fk_workflowstepdata_stepsettings_workflowstepdata_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.workflowstepdata_stepsettings
    ADD CONSTRAINT fk_workflowstepdata_stepsettings_workflowstepdata_id FOREIGN KEY (workflowstepdata_id) REFERENCES public.workflowstepdata(id);


--
-- Name: dataset fx_dataset_template_id; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT fx_dataset_template_id FOREIGN KEY (template_id) REFERENCES public.template(id);


--
-- Name: pendingworkflowinvocation_localdata pndngwrkflwinvocationlocaldatapndngwrkflwinvocationinvocationid; Type: FK CONSTRAINT; Schema: public; Owner: dvnuser
--

ALTER TABLE ONLY public.pendingworkflowinvocation_localdata
    ADD CONSTRAINT pndngwrkflwinvocationlocaldatapndngwrkflwinvocationinvocationid FOREIGN KEY (pendingworkflowinvocation_invocationid) REFERENCES public.pendingworkflowinvocation(invocationid);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT CREATE ON SCHEMA public TO dvnuser;


--
-- PostgreSQL database dump complete
--

\unrestrict qgOoNZfkBZkeO3aK0cKdiz6tLrxEy8o1kLfEF7135TQHlbUTbfb710aCnqjr418

