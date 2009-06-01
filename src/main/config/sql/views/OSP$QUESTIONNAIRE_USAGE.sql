-- View for Coeus compatibility 
CREATE OR REPLACE VIEW OSP$QUESTIONNAIRE_USAGE AS SELECT 
    MODULE_ITEM_CODE, 
    MODULE_SUB_ITEM_CODE, 
    QUESTIONNAIRE_ID, 
    RULE_ID, 
    QUESTIONNAIRE_LABEL, 
    UPDATE_TIMESTAMP, 
    UPDATE_USER
FROM QUESTIONNAIRE_USAGE;
