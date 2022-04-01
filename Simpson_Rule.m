clc;
f= @(x) (1/x);
a=input('Enter Lower Limit a: ');
b=input('Enter Upper limit b: ');
n=input('Enter the Number of Sub-Intervals n: ');
h=(b-a)/n;
if rem(n,2)==1
    fprintf('\n Enter Valid n!!!');
    n=input('\n Enter n as even number: ');
end
for k=1:1:n
    x(k)=a+k*h;
    y(k)=f(x(k));
end
so=0;se=0;
for k=1:1:n-1
    if rem(k,2)==1
        so=so+y(k);
    else
        se=se+y(k);
    end
end
% Formula:(h/3)*[(y0+yn)+2*(y3+y5+..odd terms)+4*(y2+y4+y6+...even terms)]
answer=h/3*(f(a)+f(b)+4*so+2*se);
fprintf('\n The Value of Integration is %f \n',answer);
