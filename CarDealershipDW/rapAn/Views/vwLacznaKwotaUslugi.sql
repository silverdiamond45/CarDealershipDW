create view rapAn.vwLacznaKwotaUslugi as
select IdUsluga, 
sum(Kwota) over (partition by IdUsluga)as KwotaZaUsluge,
SUM(Kwota) over () as LacznaKwotaZamowien
from
(select distinct IdZamowienieU, IdUsluga, Kwota 
from ZamowieniaUslug) as tab