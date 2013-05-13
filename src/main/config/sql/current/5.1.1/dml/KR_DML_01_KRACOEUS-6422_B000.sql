-- add the 'initiate document' template-based permission for COI disclosure note type maintenance documents
-- and confer this permission on the coi maintainer role

INSERT INTO KRIM_PERM_T (PERM_ID, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND, OBJ_ID) 
    VALUES (KRIM_PERM_ID_BS_S.NEXTVAL, (SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NMSPC_CD ='KR-SYS' AND NM ='Initiate Document'), 
            'KC-COIDISCLOSURE', 'Add COI Disclosure Note Type', 'Permission to create new COI disclosure note types', 'Y', SYS_GUID())
/

INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL, OBJ_ID) 
    VALUES (KRIM_ATTR_DATA_ID_BS_S.NEXTVAL, KRIM_PERM_ID_BS_S.CURRVAL, 
            (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-SYS' AND NM = 'Document Type (Permission)'),
            (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),
            'CoiNoteTypeMaintenanceDocument', SYS_GUID())
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND) VALUES
    (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, 
    SYS_GUID(), 
    1, 
    (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'COI Maintainer' AND NMSPC_CD='KC-COIDISCLOSURE'),
    (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Add COI Disclosure Note Type' AND  NMSPC_CD='KC-COIDISCLOSURE'),
    'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND) VALUES
    (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, 
    SYS_GUID(), 
    1, 
    (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'KC Superuser' AND NMSPC_CD='KC-SYS'),
    (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Add COI Disclosure Note Type' AND  NMSPC_CD='KC-COIDISCLOSURE'),
    'Y')
/
