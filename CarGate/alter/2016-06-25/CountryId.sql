alter table items add CountryId bigint
go
update items set CountryId =0 where CountryId  is null