%Fixed-point Algorithm

g=@(x) (1/sqrt(x+1));
p0 = input('Please enter initial approximation: ');
n = input('Please enter no. of iterations: ');
tol = input('Please enter tolerance, tol: ');

i=1;
while i<=n
    p= g(p0);
    if abs(p-p0)<tol
        fprintf('\nApproximate solution p=%11.8f \n\n',p)
        break;
    else
        i=i+1;
        p0=p;
    end
end
