CREATE procedure rapAn.spExecLacznaKwotaUslugi @IdUslugi int as 
declare @ret int;
exec @ret = rapAn.udfLacznaKwotaUslugi @IdUsluga=@IdUslugi;
select 'Kwota'=@ret;