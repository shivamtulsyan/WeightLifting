
k = 30*cos(pi/10) - 5;
xa = 5 + 10*(3).^0.5;%X-coordinate of DumbBell;
za = 16 - 5*(3).^0.5;%Z-coordinate of DumbBell;
P=pi/2;Q=pi/3;
for t=0:100
    X=0; Y=5; Z=30*cos(pi/10) - k*t/100;
    x1=0;y1=0;z1=0; 
    x2=0;y2=10;z2=0;
    alpha=0;beta=0;angle1=0;angle2=0;
    
    M = Full_Transformation(X, Y, Z, x1, y1, z1, x2, y2, z2, alpha, beta, angle1, angle2);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    
    pause(0.00001)
end

for t=0:100
    X=0;Y=5;Z=30*cos(pi/10) - k;
    x1=0;y1=0;z1=0;
    x2=0;y2=10;z2=0;
    alpha=0;beta=0;angle1=Q*t/100;angle2=0;
    
    M = Full_Transformation(X, Y, Z, x1, y1, z1, x2, y2, z2, alpha, beta, angle1, angle2);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    
    pause(0.00001)
end

for t=0:100
    X=0;Y=5;Z=30*cos(pi/10) - k;
    x1=0;y1=0;z1=0;
    x2=0;y2=10;z2=0;
    alpha=0;beta=0;angle1=Q;angle2=P*t/100;
    
    M = Full_Transformation(X, Y, Z, x1, y1, z1, x2, y2, z2, alpha, beta, angle1, angle2);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    
    pause(0.00001)
    end
pause(2)
for t=0:100
    X=0;Y=5;Z=30*cos(pi/10) - k;
    x1=0;y1=0;z1=0;
    x2=0;y2=10;z2=0;
    alpha=0;beta=0;angle1=Q - Q*t/100;angle2=P - Q*t/100;
    
    M = Full_Transformation(X, Y, Z, x1, y1, z1, x2, y2, z2, alpha, beta, angle1, angle2);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    
    pause(0.00001)
end

for t=0:100
    X=0;Y=5;Z=30*cos(pi/10) - k + k*t/100;
    x1=0;y1=0;z1=0;
    x2=0;y2=10;z2=0;
    alpha=0;beta=0;angle1=0;angle2=P - Q;
    
    M = Full_Transformation(X, Y, Z, x1, y1, z1, x2, y2, z2, alpha, beta, angle1, angle2);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    
    pause(0.00001)
end

for t=0:100
    X=0;Y=5;Z=30*cos(pi/10);
    x1=0;y1=0;z1=0;
    x2=0;y2=10;z2=0;
    alpha=0;beta=0;angle1=0;angle2=P - Q + (Q- P + 2*pi/3)*t/100;
    
    M = Full_Transformation(X, Y, Z, x1, y1, z1, x2, y2, z2, alpha, beta, angle1, angle2);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    
    pause(0.00001)
end
pause(1)
for t=0:100
    X=0;Y=5;Z=30*cos(pi/10);
    x1=0;y1=0;z1=0;
    x2=0;y2=10;z2=0;
    alpha=0;beta=0;angle1=0;angle2=P - Q + (Q - P + 2*pi/3) - (Q - P + 2*pi/3)*t/100;
    
    M = Full_Transformation(X, Y, Z, x1, y1, z1, x2, y2, z2, alpha, beta, angle1, angle2);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    
    pause(0.00001)
end

for t=0:100
    X=0;Y=5;Z=30*cos(pi/10) - k*t/100;
    x1=0;y1=0;z1=0;
    x2=0;y2=10;z2=0;
    alpha=0;beta=0;angle1=0;angle2=P - Q;
    
    M = Full_Transformation(X, Y, Z, x1, y1, z1, x2, y2, z2, alpha, beta, angle1, angle2);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    
    pause(0.00001)
end

for t=0:100
    X=0;Y=5;Z=30*cos(pi/10) - k;
    x1=0;y1=0;z1=0;
    x2=0;y2=10;z2=0;
    alpha=0;beta=0;angle1=Q*t/100;angle2=P - Q + angle1;
    
    M = Full_Transformation(X, Y, Z, x1, y1, z1, x2, y2, z2, alpha, beta, angle1, angle2);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    
    pause(0.00001)
end
pause(1)
for t=0:100
    X=0;Y=5;Z=30*cos(pi/10) - k ;
    x1=0;y1=0;z1=0;
    x2=0;y2=10;z2=0;
    alpha=0;beta=0;angle1=Q;angle2=P - P*t/100;
    
    M = Full_Transformation(X, Y, Z, x1, y1, z1, x2, y2, z2, alpha, beta, angle1, angle2);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    
    pause(0.00001)
end

for t=0:100
    X=0;Y=5;Z=30*cos(pi/10) - k;
    x1=0;y1=0;z1=0;
    x2=0;y2=10;z2=0;
    alpha=0;beta=0;angle1=Q - Q*t/100;angle2=0;
    
    M = Full_Transformation(X, Y, Z, x1, y1, z1, x2, y2, z2, alpha, beta, angle1, angle2);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    
    pause(0.00001)
end

for t=0:100
    X=0;Y=5;Z=30*cos(pi/10) - k + k*t/100;
    x1=0;y1=0;z1=0;
    x2=0;y2=10;z2=0;
    alpha=0;beta=0;angle1=Q - Q;angle2=0;
    
    M = Full_Transformation(X, Y, Z, x1, y1, z1, x2, y2, z2, alpha, beta, angle1, angle2);
    plot3(M(1,:),M(2,:),M(3,:),'-o')
    box on
    axis equal
    grid on
    
    pause(0.00001)
end