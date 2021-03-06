function  Z=fitness(x)
    nVar=length(x);
    A = [1     1     0     0     1     0     0     0     0     0     0     0     0     0
         1     1     1     1     1     0     0     0     0     0     0     0     0     0
         0     1     1     1     0     0     0     0     0     0     0     0     0     0
         0     1     1     1     1     0     1     0     1     0     0     0     0     0
         1     1     0     1     1    1     0      0     0     0     0     0     0     0
         0     0     0     0     1     1     0     0     0     0     1     1     1     0
         0     0     0     1     0     0     1     1     1     0     0     0     0     0
         0     0     0     0     0     0     1     1     0     0     0     0     0     0
         0     0     0     1     0     0     1     0     1     1     0     0     0     1
         0     0     0     0     0     0     0     0     1     1     1     0     0     0
         0     0     0     0     0     1     0     0     0     1     1     0     0     0
         0     0     0     0     0     1     0     0     0     0     0     1     1     0
         0     0     0     0     0     1     0     0     0     0     0     1     1     1
         0     0     0     0     0     0     0     0     1     0     0     0     1     1];
    u=ones(nVar,1);
    f=A*(x');
    a=f.*u;
    d=find(a==0);
    if isempty(d) 
        Z=sum(x);
    else 
        Z=2*nVar;
    end
end