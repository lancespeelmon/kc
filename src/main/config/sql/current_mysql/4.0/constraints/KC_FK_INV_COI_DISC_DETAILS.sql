DELIMITER /
ALTER TABLE INV_COI_DISC_DETAILS 
ADD CONSTRAINT FK_INV_COI_DISC_DETAILS_ENT 
FOREIGN KEY (PERSON_FIN_INT_DISCLOSURE_ID) 
REFERENCES PERSON_FIN_INT_DISCLOSURE (PERSON_FIN_INT_DISCLOSURE_ID)
/
DELIMITER ;
