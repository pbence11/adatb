select *
from konyvtar.konyv;

select cim
from konyvtar.konyv;

select *
from konyvtar.tag
where nem!='n';

select *
from konyvtar.tag
where nem<>'n';




select vezeteknev, keresztnev, besorolas
from konyvtar.tag
where besorolas='diák' or besorolas='felnõtt';


select *
from konyvtar.tag
where lower (vezeteknev) like '%a%a%';


select *
from konyvtar.tag
where vezeteknev like '%a%a%' and vezeteknev not like '%a%a%a%';


select *
from konyvtar.tag
where vezeteknev like '_a%';

select *
from konyvtar.tag
where nem ='n' and cim like '%/%';

select cim
from KONYVTAR.konyv
where cim like '% és %';

select vezeteknev || ' ' || keresztnev
from konyvtar.tag;

select cim, replace(cim, 'halál', 'cica')
from konyvtar.konyv;

select cim, nvl(kiado, 'nincs kiado megadva')
from konyvtar.konyv;

select sysdate
from dual;

select to_char(sysdate, 'year monthdayhh24:mi:ss')
from dual;

select to_char(to_date('2003.06.29', 'yyyy.mm.dd'), 'year monthdayhh24:mi:ss')
from dual;

select vezeteknev || ' ' || keresztnev, to_char(szuletesi_datum, 'yyyy. mm. dd')
from konyvtar.tag
where szuletesi_datum < to_date('1993.10.09', 'yyyy.mm.dd');

select floor(months_between(sysdate, to_date('2003.06.29', 'yyyy.mm.dd'))/12)
from dual;

select vezeteknev || ' ' || keresztnev
from konyvtar.tag
where vezeteknev like 'P%' and keresztnev like 'Z%';

select vezeteknev || ' ' || keresztnev, (tagdij*0.4)
from konyvtar.tag
where cim like '_____Budapest%' and besorolas = 'diák';

select replace(cim, 'al', 'el')
from konyvtar.konyv;

select vezeteknev || ' ' || keresztnev, floor(months_between(sysdate, szuletesi_datum)/12)
from konyvtar.tag, dual
where floor(months_between(sysdate, szuletesi_datum))/12 < 30
