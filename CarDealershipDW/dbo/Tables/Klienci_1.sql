CREATE TABLE [dbo].[Klienci] (
    [IdKlient]        INT            IDENTITY (1, 1) NOT NULL,
    [ImieKlienta]     NVARCHAR (80)  NOT NULL,
    [NazwiskoKlienta] NVARCHAR (150) NOT NULL,
    [MailKlienta]     NVARCHAR (100) NULL,
    [TelefonKlienta]  CHAR (9)       NOT NULL,
    [NrDowoduKlienta] CHAR (9)       NULL,
    CONSTRAINT [PK_Klienci_IdKlient] PRIMARY KEY CLUSTERED ([IdKlient] ASC)
);

