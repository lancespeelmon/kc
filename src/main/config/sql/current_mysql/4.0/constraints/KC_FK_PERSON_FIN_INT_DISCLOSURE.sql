DELIMITER /
ALTER TABLE PERSON_FIN_INT_DISCLOSURE 
ADD CONSTRAINT FK_FIN_INT_ENTITY_REL_TYPE 
FOREIGN KEY (RELATIONSHIP_TYPE_CODE) 
REFERENCES FIN_INT_ENTITY_REL_TYPE (RELATIONSHIP_TYPE_CODE)
/

ALTER TABLE PERSON_FIN_INT_DISCLOSURE 
ADD CONSTRAINT FK_FIN_INT_ENTITY_STATUS 
FOREIGN KEY (STATUS_CODE) 
REFERENCES FIN_INT_ENTITY_STATUS (STATUS_CODE)
/

ALTER TABLE PERSON_FIN_INT_DISCLOSURE 
ADD CONSTRAINT FK_FIN_INT_ENTITY_TYPE 
FOREIGN KEY (ENTITY_TYPE_CODE) 
REFERENCES ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE)
/
ALTER TABLE PERSON_FIN_INT_DISCLOSURE 
ADD CONSTRAINT FK_FIN_INT_REPORTER 
FOREIGN KEY (FINANCIAL_ENTITY_REPORTER_ID) 
REFERENCES FINANCIAL_ENTITY_REPORTER (FINANCIAL_ENTITY_REPORTER_ID)
/

DELIMITER ;
