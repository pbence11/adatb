select to_char(sysdate+5/24/60, 'yyyy. mm. dd. hh24:mi:ss') plusz_egynap
from dual;

select to_char(sysdate, 'mm'), extract(month from sysdate)
from dual;

select to_char(sysdate, 'yyyy'), extract(year from sysdate)
from dual;


select *
from konyvtar.konyv
where (tema='horror' or oldalszam < 30) and (kiado is null or cim like 'A%');

select vezeteknev ||' '|| keresztnev
from KONYVTAR.szerzo
where months_between(sysdate, szuletesi_datum)/12>100
order by extract(month from szuletesi_datum) desc;

select vezeteknev ||' '|| keresztnev
from konyvtar.konyv
where tema in ('természettudomány', 'krimi', 'horror') and oldalszam > 50 and
extract(year from kiadas_datuma) >= 1970 and extract(year from kiadas_datuma) <= 2006;

select vezeteknev ||' '|| keresztnev
from konyvtar.tag
where extract(sysdate from beiratkozasi_datum)>30
order by extract(year from szuletesi_datum) desc ; extract(month from szuletesi_datum) asc;

select vezeteknev, keresztnev
from konyvtar.tag
where to_date('1980.03.02', 'yyyy.mm.dd') > szuletesi_datum and nem='f';
