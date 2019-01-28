create procedure [spLoadKlienci] as
select *  into CarDealershipDW.dbo.Klienci from CarDealership.dbo.vwTabKlienci