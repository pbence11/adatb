select sysdate
from dual;

select to_char(sysdate, 'yyyy. mm. dd. hh24:mi:ss')
from dual;

select to_char(sysdate, 'year. mon. day. hh24:mi:ss')
from dual;

select to_date('2001. 09. 27.', 'yyyy. mm. dd.')
from dual;

select vezeteknev ||' '|| keresztnev
from konyvtar.tag
where to_date('2001. 09. 27.', 'yyyy. mm. dd.')<szuletesi_datum;

select to_char(sysdate+50, 'yyyy. mm. dd.')
from dual;

select to_char(sysdate, 'yyyy. mm. dd.')
from dual;

select floor(months_between(sysdate,to_date('2001. 09. 27.', 'yyyy. mm. dd.'))/12)
from dual;

select vezeteknev ||' '|| keresztnev
from KONYVTAR.tag
where lower(keresztnev) like '%a%' and besorolas='törzstag'
order by vezeteknev desc;

select vezeteknev ||' '|| keresztnev
from KONYVTAR.tag
where keresztnev like 'Z%' and vezeteknev like 'P%';

select vezeteknev ||' '|| keresztnev, tagdij*0.4
from KONYVTAR.tag
where besorolas='diák' and cim like '%Budapest,%';

select cim, to_char(kiadas_datuma, 'yyyy. mm. dd.') 
from KONYVTAR.konyv
where TEMA in ('horror', 'krimi', 'történelem')
and oldalszam>=220
order by kiado;

select cim
from KONYVTAR.konyv
where isbn like '___0%'
order by cim desc;
