i=[2 3 3 4 4 1 6 5];
j=[1 1 2 2 3 4 5 6];
G=sparse(i,j,1,6,6)
p=0.85;
c=sum(G,1);
k=find(c);
D=sparse(k,k,1./c(k),6,6);
e=ones(6,1);
z=((1-p)*(c~=0)+1*(c==0))/6;
x=5000*ones(6,1);
for k=1:1000
    x=p*G*D*x+e*z*x;
end
x=x/sum(x);
bar(x)