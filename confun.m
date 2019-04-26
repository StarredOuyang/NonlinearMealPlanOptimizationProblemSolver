function [c, ceq] = confun(x)
global calories sodium fat;

% Nonlinear inequality constraints c*x <= 0
c = [dot(sodium,x)-dot(calories,x);     
     9*dot(fat,x)-0.3*dot(calories,x);
     dot(calories,x) - 2800];
 
% Nonlinear equality constraints
ceq = [];