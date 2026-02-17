function f = steps(n)
if n==1
    f=1;
else if n==2
        f=2;
    else if n==3
            f=4;
        else f=steps(n-1)+steps(n-2)+steps(n-3);
        end
    end
end


