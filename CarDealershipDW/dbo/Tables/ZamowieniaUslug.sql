CREATE TABLE [dbo].[ZamowieniaUslug] (
    [IdZamowienieU]      INT             NOT NULL,
    [IdUsluga]           INT             NULL,
    [Kwota]              DECIMAL (10, 2) NULL,
    [DataZamowienia]     DATE            NULL,
    [IdKlient]           INT             NULL,
    [IdPracownik]        INT             NULL,
    [NazwiskoPracownika] NVARCHAR (150)  NULL,
    [JakiStatus]         NVARCHAR (100)  NOT NULL,
    [DataZmiany]         DATE            NULL,
    CONSTRAINT [FK_ZamowieniaUslug_Klienci] FOREIGN KEY ([IdKlient]) REFERENCES [dbo].[Klienci] ([IdKlient]),
    CONSTRAINT [FK_ZamowieniaUslug_Uslugi] FOREIGN KEY ([IdUsluga]) REFERENCES [dbo].[Uslugi] ([IdUsluga])
);


GO
CREATE CLUSTERED COLUMNSTORE INDEX [CIX_ZamowieniaUslug]
    ON [dbo].[ZamowieniaUslug];

