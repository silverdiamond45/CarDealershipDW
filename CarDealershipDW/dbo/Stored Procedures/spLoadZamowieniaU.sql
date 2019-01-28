create procedure spLoadZamowieniaU as
select *  into CarDealershipDW.dbo.ZamowieniaUslug from CarDealership.dbo.vwTabZamowieniaUslug