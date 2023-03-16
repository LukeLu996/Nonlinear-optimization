clear
fun=@(x)-0.2262*x(1)*x(2);  
lb=[0,0];
ub=[1,1];
% There are no linear constraints, so set those arguments to |[]|. 
A = [];
b = [];
Aeq = [];
beq = [];  
% Choose an initial point satisfying all the constraints. 
x0=[0.37859,0]; %x2=0,according to st. x1=0.37859
% Solve the problem. 
nonlcon=@nlcon;
x=fmincon(fun,x0,A,b,Aeq,beq,b,ub,nonlcon)  