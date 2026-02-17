function Sierpinski_triangle_dot(obj,event)
if get(obj,'value')==1
    set(obj,'string','Stop');
else
    set(obj,'string','Plot');
end
A=[1/2 0;0 1/2];
b1=[0;0];
b2=[1/2;0];
b3=[1/4;sqrt(3)/4];
x=[0;0];
plot(x(1),x(2),'marker','.','markersize',8,'color','k');
hold on
drawnow
pause(0.05)
while get(obj,'value')==1
    axis([0 1 0 1]);
    r=rand;
    if r<=1/3
        x=A*x+b1;
    else if r<=2/3
            x=A*x+b2;
        else
            x=A*x+b3;
        end
    end
    plot(x(1),x(2),'marker','.','markersize',8,'color','k');
    hold on
    drawnow
    pause(0.01)
end
end
