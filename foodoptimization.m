global calories sodium fat;

[num, txt, raw] = xlsread('data1.xlsx');
calories = num(:,1);
sodium = num(:,2);
fat = num(:,3);

x0 = ones(1, length(calories));     % Make a starting guess at the solution

%Lower and upper bound
lb = zeros(1, length(calories));
ub = ones(1, length(calories));

%Integer constraints
IntCon = 1:length(calories);

%Optimiation through constrainted nonlinear multivariable function solver
[x,fval] = ... 
ga(@objfun,length(calories),[],[],[],[],lb,ub,@confun,IntCon); 

