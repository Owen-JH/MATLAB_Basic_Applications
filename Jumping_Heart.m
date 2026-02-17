t=0:.1:2*pi;
x=16*(sin(t)).^3;
y=13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t);
theta=0;
dt=0.03;
for k=1:1500
    G=[cos(theta)];
    plot(G'*x,G'*y)
    axis([-20 20 -20 15]);
    drawnow
    if theta>pi/3
        dt=-0.03;
    else if theta<-pi/3
            dt=0.03;
        end
    end
    theta=theta+dt
end
