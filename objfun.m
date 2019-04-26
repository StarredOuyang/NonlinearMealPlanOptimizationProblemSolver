function f = objfun(x)
global calories sodium fat;

f = (dot(calories,x) - 2800)^2;
end