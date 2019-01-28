create procedure spLoadZamowienia as
select *  into CarDealershipDW.dbo.Zamowienia from CarDealership.dbo.vwTabZamowienia