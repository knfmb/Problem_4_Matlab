
h = input ('Input the height of the projectile (in meters): ');
v = input ('Input the velocity (in m/s): ');
theta = input ('Input the angle (in degrees) with respect to +x-axis: ');
ax = input ('Input the x-component of the acceleration (in m/s^2): ');
ay = input ('Input the y-component of the acceleration (in m/s^2): ');

v0y = v*sind(theta);
v0x = v*cosd(theta);
t0 = 0;
tf = (sqrt((v0y)^2 - (2*ay*h)) - v0y)/ay;

if ay == 0
    error 'There is no free fall when vertical acceleration is zero.'    
end

if tf <=0
    tf = (-sqrt((v*sind(theta))^2 - (2*ay*h)) - v*sind(theta))/ay;
end

t = 0:tf/100:tf;
y = v0y.*t + (ay.*(t.^2))./2 + h;
x = v0x.*t + (ax.*(t.^2))./2;
plot (x,y,'-g')


xlabel ('Horizontal Range')
ylabel ('Height')
legend ('y(m)')
grid on
title ('Trajectory of a Projectile')
    