n=5;
M=zeros(n*2,n*2);
M(1,(n+1)/2)=1;
M(n+1,n+(n+1)/2)=n^2+1;
M(1,n+(n+1)/2)=n^2*2+1;
M(n+1,(n+1)/2)=n^2*3+1;
i=1;j=(n+1)/2;
for m=2:n^2 
    k=i-1;p=j+1;
    if k==0
        k=k+n;
    end
    if p>n
        p=p-n;
    end
    if M(k,p)==0
        M(k,p)=m;
        i=k;j=p;
    else
        i=i+1;
        M(i,j)=m;
    end
end
i=n+1;j=n+(n+1)/2;
for m=n^2+2:n^2*2 
    k=i-1;p=j+1;
    if k==n
        k=k+n;
    end
    if p>n*2
        p=p-n;
    end
    if M(k,p)==0
        M(k,p)=m;
        i=k;j=p;
    else
        i=i+1;
        M(i,j)=m;
    end
end
i=1;j=n+(n+1)/2;
for m=n^2*2+2:n^2*3 
    k=i-1;p=j+1;
    if k==0
        k=k+n;
    end
    if p>n*2
        p=p-n;
    end
    if M(k,p)==0
        M(k,p)=m;
        i=k;j=p;
    else
        i=i+1;
        M(i,j)=m;
    end
end
i=n+1;j=(n+1)/2;
for m=n^2*3+2:n^2*4 
    k=i-1;p=j+1;
    if k==n
        k=k+n;
    end
    if p>n
        p=p-n;
    end
    if M(k,p)==0
        M(k,p)=m;
        i=k;j=p;
    else
        i=i+1;
        M(i,j)=m;
    end
end
m=(n-1)/2;
mid=M((n+1)/2,(n+1)/2);
M((n+1)/2,(n+1)/2)=M(n+(n+1)/2,(n+1)/2);
M(n+(n+1)/2,(n+1)/2)=mid;
for k=1:m
    A=zeros(1,m);
    A=M(k,1:m);
    M(k,1:m)=M(k+n,1:m);
    M(k+n,1:m)=A;
end
A=zeros(1,m-1);
A=M((n+1)/2,1:m-1);
M((n+1)/2,1:m-1)=M(n+(n+1)/2,1:m-1);
M(n+(n+1)/2,1:m-1)=A;
for k=m+2:n
    A=zeros(1,m);
    A=M(k,1:m);
    M(k,1:m)=M(k+n,1:m);
    M(k+n,1:m)=A;
end
for k=1:n
    A=zeros(1,m-1);
    A=M(k,end-m+2:end);
    M(k,end-m+2:end)=M(k+n,end-m+2:end);
    M(k+n,end-m+2:end)=A;
end
