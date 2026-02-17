function my_orbits(obj,event)
if get(obj,'value')==1
    set(obj,'string','Stop');
else
    set(obj,'string','Plot');
end
P=[0 0 0;5.28609710e-1 -8.67456608e-1 1.28811732e-5];
V=[0 0 0;0.8378 0.5163 -3.4912e-5];
M=[1;3.0032e-6];
n=size(P,1);
color=hsv(n);
H=zeros(n,1);
for k=1:n
    H(k)=plot3(P(k,1),P(k,2),P(k,3),'color',color(k,:), ...
        'marker','.','markersize',18);
    hold on
end
axis([-1.5 1.5 -1.5 1.5 -1.5 1.5]);
drawnow;
while get(obj,'value')==0
    G=zeros(2,3);
    for i=1:2
        for j=1:2
            if j~=i
                G(i,:)=G(i,:)+M(j)*(P(j,:)-P(i,:))/(norm(P(j,:)-P(i,:)))^3;
            end
        end
    end
    V=G*0.05+V;
    P=V*0.05+P;
    for i=1:2
        set(H(i),'xdata',P(i,1),'ydata',P(i,2),'zdata',P(i,3));
    end
    drawnow
end
end
