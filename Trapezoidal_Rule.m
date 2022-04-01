clc;
clear all;
f=@(x)sqrt((1+x^2));
a=input('Enter Lower limit a: ');
b=input('Enter Upper limit b: ');
n=input('Enter the no. of subinterval: ');
h=(b-a)/n;
sum=0;
for k=1:1:n-1
    x(k)=a+k*h;
    y(k)=f(x(k));
    sum=sum+y(k);
end
answer=h/2*(f(a)+f(b)+2*sum);
fprintf('\n The value of integration is %f',answer);

