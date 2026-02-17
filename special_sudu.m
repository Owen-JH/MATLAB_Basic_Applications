function special_sudu(m,X)
i=ceil(m/9);
j=m-9*(i-1);
if m>81
    disp(X);
elseif X(i,j)~=0
    special_sudu(m+1,X)
else
    k1=ceil(i/3)-1;
    k2=ceil(j/3)-1;
    X1=X(3*k1+1:3,3*k2+1:3);
    X1=X1(:);
    for k=1:9
        if i==j && i+j==10  
            C=[X(1,1),X(2,2),X(3,3),X(4,4),X(5,5),X(6,6),X(7,7),X(8,8),X(9,9),X(9,1),X(8,2),X(7,3),X(6,4),X(4,6),X(3,7),X(2,8),X(1,9)];
            if ~any(C(:,:)==k) && ~any(X(i,:)==k) && ~any(X(:,j)==k) && ~any(X1==k)
                X(i,j)=k;
                special_sudu(m+1,X);
            end
        elseif i==j  
            A=diag(X);
            if ~any(A(:,:)==k) && ~any(X(i,:)==k) && ~any(X(:,j)==k) && ~any(X1==k)
            X(i,j)=k;
            special_sudu(m+1,X);
            end
        elseif i+j==10
            B=diag(flipud(X));
            if ~any(B(:,:)==k) && ~any(X(i,:)==k) && ~any(X(:,j)==k) && ~any(X1==k) 
            X(i,j)=k;
            special_sudu(m+1,X);
            end
        elseif~any(X(i,:)==k) && ~any(X(:,j)==k) && ~any(X1==k)
            X(i,j)=k;
            special_sudu(m+1,X);
        end
    end
end
end
