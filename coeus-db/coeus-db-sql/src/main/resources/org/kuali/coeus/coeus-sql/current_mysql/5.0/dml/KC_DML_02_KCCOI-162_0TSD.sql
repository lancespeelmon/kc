DELIMITER /
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO SEQ_QUESTIONNAIRE_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE(QUESTIONNAIRE_REF_ID,QUESTIONNAIRE_ID,NAME,DESCRIPTION,SEQUENCE_NUMBER,IS_FINAL,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_ID),'COI IP Questionnaire','COI IP Questionnaire',1,'Y','admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,QUESTION_SEQ_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID FROM QUESTIONNAIRE WHERE NAME = 'COI IP Questionnaire' AND SEQUENCE_NUMBER = 1),(SELECT QUESTION_REF_ID FROM QUESTION WHERE QUESTION = 'If this is a NIH/NSF proposal have you submitted the required financial disclosures in the web based Coeus Conflict of Interest module?' AND SEQUENCE_NUMBER = 1),6,0,1,'N',null,null,'admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_QUESTIONS (QUESTIONNAIRE_QUESTIONS_ID,QUESTIONNAIRE_REF_ID_FK,QUESTION_REF_ID_FK,QUESTION_NUMBER,PARENT_QUESTION_NUMBER,QUESTION_SEQ_NUMBER,CONDITION_FLAG,CONDITION_TYPE,CONDITION_VALUE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID FROM QUESTIONNAIRE WHERE NAME = 'COI IP Questionnaire' AND SEQUENCE_NUMBER = 1),(SELECT QUESTION_REF_ID FROM QUESTION WHERE QUESTION = 'Have lobbying activities been conducted on behalf of this proposal?' AND SEQUENCE_NUMBER = 1),7,0,1,'N',null,null,'admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_QUESTIONNAIRE_REF_ID VALUES(NULL)
/
INSERT INTO QUESTIONNAIRE_USAGE (QUESTIONNAIRE_USAGE_ID,QUESTIONNAIRE_REF_ID_FK,MODULE_ITEM_CODE,MODULE_SUB_ITEM_CODE,RULE_ID,QUESTIONNAIRE_LABEL,QUESTIONNAIRE_SEQUENCE_NUMBER,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR, IS_MANDATORY)
VALUES ((SELECT (MAX(ID)) FROM SEQ_QUESTIONNAIRE_REF_ID),(SELECT QUESTIONNAIRE_REF_ID FROM QUESTIONNAIRE WHERE NAME = 'COI IP Questionnaire' AND SEQUENCE_NUMBER = 1),(SELECT MODULE_CODE FROM COEUS_MODULE WHERE DESCRIPTION = 'COI Disclosure'),(SELECT SUB_MODULE_CODE FROM COEUS_SUB_MODULE WHERE DESCRIPTION = 'Institute Proposal'),NULL,'COI IP Questionnaire',1,'admin',NOW(),UUID(),1,'Y')
/
DELIMITER ;
