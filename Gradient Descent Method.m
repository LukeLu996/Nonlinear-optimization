%gradient descent method
clear
[x1] = [-5:0.1:5];
functionf =  3.*x1.^4-4.*x1.^3-12.*x1.^2+5;
plot(x1,functionf); % draw the function
x0 = [1.5]; % initial point for x
numIter = 100; % number of iterations
stepSize = 0.01; % stepsize
x = zeros(numIter+1,2);
x(1) = x0; % initial point for x
for i = 2:numIter
    fx = 12*x(i-1)^3 - 12*x(i-1)^2 - 24*x(i-1);
    gradf = [fx]; % gradient of f
    x(i) = x(i-1) - stepSize*gradf'; % update x
    f(i) = 3*x(i)^4-4*x(i)^3-12*x(i)^2+5; % function value at the new point
    hold on, point = plot(x(i),f(i)+0.02,'ro','LineWidth',1);
    pause(0.01)
    delete(point)
end
hold on, point = plot(x(i),f(i)+0.02,'ro','LineWidth',1);
minValue.x=x(i) %value of x when the value of function is min.
minValue.F=min(f) %min. value of function


