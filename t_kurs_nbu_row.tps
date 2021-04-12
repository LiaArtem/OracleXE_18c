create or replace noneditionable type t_kurs_nbu_row is object
(
 r030         varchar2(3),
 txt          varchar2(255),
 rate         number,
 cc           varchar2(3),
 exchangedate date
);
/
