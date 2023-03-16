%fmincon
run nlcon;
clear
fun=@(x)3*x(1)^4-4*x(1)^3-12*x(1)^2+5;
lb=[];
ub=[]; 
A = [];
b = [];
Aeq = [];
beq = [];  % There are no linear constraints,equality constraint,or uper,
%lower limit, so set those arguments to []
x0=[1.5];
% Solve the problem. 
nonlcon=@nlcon;
x=fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon)
minValuef=fun(x)