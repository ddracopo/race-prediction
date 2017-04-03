# race-prediction
Prediction of marathon time based on past race performances on other distances

The orginal data can be found in the paper: Vickers, A.J., Vertosick, E.A.: An empirical study of race times in
 recreational endurance runners. BMC Sports Science, Medicine and Rehabilitation  8(26) (2016), in the File 2 associated with the published paper.


The following files are included as part of the project:

**** all_data.dat: 493 data corresponding to runners who run a marathon and 2 other shorter races. These are derived from the original data. The most important columns are:
1: distance of shorter race 1
3: adjusted time for shorter race 1
4: distance of shorter race 2
6: adjusted time for shorter race 2
9: adjusted time to complete a marathon 
10: average weekly mileage

**** trained_net_159.457859_177.869120.mat: the trained neural network for 2 shorter races input

**** trained_net_172.065806_214.253488.mat: the trained neural network for 1 shorter race input

**** neural_network_errors.m: calculation of MSE and penalised MSE for the trained neural network for 2 shorter races input

**** neural_network_errors_1race_input.m: calculation of MSE and penalised MSE for the trained neural network for 1 shorter race input
