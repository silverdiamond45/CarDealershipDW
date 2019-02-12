CREATE TABLE [dbo].[Zamowienia] (
    [IdZamowienie]   INT              NOT NULL,
    [IdKlient]       INT              NOT NULL,
    [IdModel]        INT              NOT NULL,
    [DataZamowienia] DATE             NOT NULL,
    [DataOdbioru]    DATE             NULL,
    [Zrealizowane]   BIT              NULL,
    [Kwota]          DECIMAL (10, 2)  NULL,
    [CenaKatalogowa] DECIMAL (10, 2)  NULL,
    [Rabat]          DECIMAL (24, 13) NULL,
    CONSTRAINT [FK_Zamowienia_Auta] FOREIGN KEY ([IdModel]) REFERENCES [dbo].[Auta] ([IdModel]),
    CONSTRAINT [FK_Zamowienia_Klienci] FOREIGN KEY ([IdKlient]) REFERENCES [dbo].[Klienci] ([IdKlient])
);


GO
CREATE CLUSTERED COLUMNSTORE INDEX [CIX_Zamowienia]
    ON [dbo].[Zamowienia];

