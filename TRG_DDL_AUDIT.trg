create or replace noneditionable trigger TRG_DDL_AUDIT after ddl on schema
begin
  --Аудит DDL операций над схемой
  insert into AUDIT_DDL(id, arcdate, osuser, current_user, host, terminal, OBJECT_OWNER, OBJECT_TYPE, OBJECT_NAME, sysevent)
  values(
    AUDIT_DDL_SEQ.nextval,
    sysdate,
    substr(sys_context('USERENV','OS_USER'),1,255),
    substr(sys_context('USERENV','CURRENT_USER'),1,255),
    substr(sys_context('USERENV','HOST'),1,255),
    substr(sys_context('USERENV','TERMINAL'),1,255),
    substr(ora_dict_obj_owner,1,255),
    substr(ora_dict_obj_type,1,255),
    substr(ora_dict_obj_name,1,255),
    substr(ora_sysevent,1,255)
  );
end;
/
