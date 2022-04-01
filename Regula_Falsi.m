syms x;

y=input('Enter non-linear equations: ');
a=input('Enter first guess: ');
b=input('Enter second guess: ');
e=input('Tolerabale Error: ');

fa=eval(subs(y,x,a));
fb=eval(subs(y,x,b));

if fa*fb>0
    disp('Given initial values do not bracket the root');
else
    c=((a*fb)-(b*fa))/(fb-fa);
    fc=eval(subs(y,x,c));
    i=0;
    fprintf('\ni \t a \t\t b \t\t c \t\t f(c) \n');
    while abs(fc)>e
        fprintf('%d \t %f \t %f \t %f \t %f \n',i,a,b,c,fc);
        i=i+1;
        if fa*fc<0
            b=c;
	        fb=eval(subs(y,x,b));
        else
            a=c;
            fa=eval(subs(y,x,a));
        end
        c=a-(a-b)*fa/(fa-fb);
       fc=eval(subs(y,x,c));
    end
    fprintf('\nRoot is: %f\n',c);
end
return
