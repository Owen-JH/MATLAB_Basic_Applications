function [z]=myfun(x,y)
n=length(x);
z=zeros(n,1);
for k=1:n
    if x(k)>=0
        if y(k)>=0
            z(k)=x(k)+y(k);
        else
            z(k)=x(k)+y(k).^2;
        end
    else 
        if y(k)>=0
            
            
            z(k)=x(k).^2+y(k);
        else
            z(k)=x(k).^2+y(k).^2;
        end
    end
end


            

