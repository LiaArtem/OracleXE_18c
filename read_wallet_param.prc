create or replace noneditionable procedure read_wallet_param (p_wallet_file out varchar2, p_wallet_file_pwd out varchar2)
is
begin
  p_wallet_file := 'C:\app\Admin\product\18.0.0\admin\XE\wallet';
  p_wallet_file_pwd := '34534kjhsdffkjsdfgalfgb###';
end;
/
