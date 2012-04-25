UPDATE KRCR_PARM_T SET VAL='Maintain Questionnaire Usage:KC-IACUC;Modify Protocol:KC-PROTOCOL;Maintain Questionnaire Usage:KC-PD;Maintain Questionnaire Usage:KC-PROTOCOL;Edit Institutional Proposal:KC-IP;Maintain Coi Disclosure:KC-COIDISCLOSURE'
WHERE NMSPC_CD='KC-QUESTIONNAIRE' and CMPNT_CD='P'
/
INSERT INTO KRIM_PERM_T (PERM_ID,OBJ_ID,VER_NBR,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND)
VALUES (KRIM_PERM_ID_BS_S.nextval,SYS_GUID(),1,(SELECT PERM_TMPL_ID from KRIM_PERM_TMPL_T WHERE NMSPC_CD='KC-IDM' AND NM='Questionnaire Permission'),'KC-IACUC','Maintain Questionnaire Usage','Add/Edit Questionnaire Usages for IACUC Protocol','Y')
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID,ROLE_ID,PERM_ID,ACTV_IND,OBJ_ID,VER_NBR)
  VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'IACUC Administrator' AND NMSPC_CD='KC-UNT'),
    (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Maintain Questionnaire Usage' AND NMSPC_CD='KC-IACUC'),'Y',SYS_GUID(),1)
/
