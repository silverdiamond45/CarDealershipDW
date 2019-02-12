create function rapAn.udfLacznaKwotaUslugi (@IdUsluga int) 
returns int
as
begin
declare @total int;
select @total=sum(Kwota) from
(select distinct IdZamowienieU, IdUsluga, Kwota 
from ZamowieniaUslug
where IdUsluga=@IdUsluga) as tab
if (@total IS NULL)
set @total=0;
return @total;
end;