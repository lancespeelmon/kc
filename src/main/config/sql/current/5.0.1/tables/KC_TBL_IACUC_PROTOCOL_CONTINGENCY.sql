CREATE TABLE IACUC_PROTOCOL_CONTINGENCY (
    PROTOCOL_CONTINGENCY_CODE VARCHAR2(4) NOT NULL,
    DESCRIPTION VARCHAR2(2000) NOT NULL,
    UPDATE_TIMESTAMP DATE NOT NULL,
    UPDATE_USER VARCHAR2(60) NOT NULL,
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL,
    OBJ_ID VARCHAR2(36)   NOT NULL
)
/
ALTER TABLE IACUC_PROTOCOL_CONTINGENCY
ADD CONSTRAINT PK_IAC_PROTO_CONTINGENCY_CODE
PRIMARY KEY (PROTOCOL_CONTINGENCY_CODE)
/
