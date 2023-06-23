alter table LaboratoryTests  add AllTests int
go
update LaboratoryTests  set AllTests =0 where AllTests  is null
go
