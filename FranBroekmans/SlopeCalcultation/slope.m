function [slope] = slope(DEM,PositionFirstName,PositionSurname) 
%Calculates the slope for all non-border values.

r1=PositionFirstName*10;
r2=r1+r1*2;
c1=5*PositionSurname;
c2=c1+c1*3;
myDEM=DEM(r1:r2, c1:c2);
nx=c2-c1;
ny=r2-r1;

dzdx = zeros(ny,nx);
dzdy = zeros(ny,nx);
dzdx(2:ny-1,2:nx-1) = (DEM(2:ny-1,3:nx)-DEM(2:ny-1,1:nx-2))/180;
dzdy(2:ny-1,2:nx-1) = (DEM(1:ny-2,2:nx-1)-DEM(3:ny,2:nx-1))/180;
slope = sqrt((dzdx.^2.0)+(dzdy.^2.0));

imagesc(slope)

end
