syms x;
y=input('eqn: ');
a=input('a: ');
b=input('b: ');
e=input('e: ');

fa=eval(subs(y,x,a));
fb=eval(subs(y,x,b));

if fa*fb>0
    disp('do not bracket');
else
    c=(a+b)/2;
    fc=eval(subs(y,x,c));
    fprintf('\n\na\t\tb\t\t\tc\t\t\tf(c)\n');
    while abs(fc)>e
            fprintf('%f\t%f\t%f\t%f\t\n',a,b,c,fc);
            if fa*fc<0
                b=c;
            else
                a=c;
            end
                c=(a+b)/2;
                fc=eval(subs(y,x,c));
    end
    fprintf('\nRoot is: %f\n',c);
end
return
