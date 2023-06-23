select 'ALTER DATABASE '+name+' SET ENABLE_BROKER',* from sys.databases where database_id>4 order by name

select 'ALTER DATABASE '+name+' SET NEW_BROKER',* from sys.databases where database_id>4 order by name