alter table EntryDt add IsDocumented float,IsNotDocumented float
alter table deletedEntryDt add IsDocumented float,IsNotDocumented float 
go
exec AddMyGetDate 'CurrencyExchangeByDate'