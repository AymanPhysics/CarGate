
update Statics
set S_AccNo='3201',P_AccNo='4202',R_S_AccNo='4204',R_P_AccNo='3203'

update SalesMaster set AccNo='4202' where Flag=9
update SalesMaster set AccNo='3203' where Flag=10
update SalesMaster set AccNo='3201' where Flag=13
update SalesMaster set AccNo='4204' where Flag=14
