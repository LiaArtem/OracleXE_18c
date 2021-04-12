CREATE OR REPLACE NONEDITIONABLE TRIGGER trg_ddl_audit_before
  before update or delete
ON audit_ddl
referencing old as old new as new
for each row
declare
begin
  raise_application_error(-20000, 'Запрещено модифицировать таблицу аудита AUDIT_DDL'); 
end;
/
