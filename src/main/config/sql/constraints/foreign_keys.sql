ALTER TABLE STATE_CODE
ADD (CONSTRAINT FK_STATE_CODE_COUNTRY
FOREIGN KEY (COUNTRY_CODE)
REFERENCES COUNTRY_CODE(COUNTRY_CODE));

ALTER TABLE EPS_PROPOSAL
ADD (CONSTRAINT FK_DOCUMENT_NUMBER
FOREIGN KEY (DOCUMENT_NUMBER)
REFERENCES EN_DOC_HDR_T(DOC_HDR_ID));

ALTER TABLE NARRATIVE ADD (CONSTRAINT FK_NARRATIVE_KRA FOREIGN KEY (PROPOSAL_NUMBER)
	  REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER) ) ;
 

ALTER TABLE NARRATIVE ADD (CONSTRAINT FK_NARRATIVE_TYPE_CODE_KRA FOREIGN KEY (NARRATIVE_TYPE_CODE)
	  REFERENCES NARRATIVE_TYPE (NARRATIVE_TYPE_CODE) ) ;

ALTER TABLE NARRATIVE ADD (CONSTRAINT FK_NARRATIVE_STATUS_CODE_KRA FOREIGN KEY (MODULE_STATUS_CODE)
	  REFERENCES NARRATIVE_STATUS (NARRATIVE_STATUS_CODE) ) ;

ALTER TABLE NARRATIVE_USER_RIGHTS ADD (CONSTRAINT FK_NARRATIVE_USER_RIGHTS_KRA FOREIGN KEY (PROPOSAL_NUMBER, MODULE_NUMBER)
	  REFERENCES NARRATIVE (PROPOSAL_NUMBER, MODULE_NUMBER) );

ALTER TABLE NARRATIVE_ATTACHMENT ADD (CONSTRAINT FK_NARRATIVE_ATTACHMENT_KRA FOREIGN KEY (PROPOSAL_NUMBER, MODULE_NUMBER)
	  REFERENCES NARRATIVE (PROPOSAL_NUMBER, MODULE_NUMBER) ) ;
 
 