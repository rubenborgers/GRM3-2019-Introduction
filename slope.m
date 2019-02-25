
function [slope] = slope(DEM,ny,nx,res)
%Calculates the slope for all non-border values.
dzdx = zeros(ny,nx);
dzdy = zeros(ny,nx);
dzdx(2:ny-1,2:nx-1) = (DEM(2:ny-1,3:nx)-DEM(2:ny-1,1:nx-2))/(2.0*res);
dzdy(2:ny-1,2:nx-1) = (DEM(1:ny-2,2:nx-1)-DEM(3:ny,2:nx-1))/(2.0*res);
slope = sqrt((dzdx.^2.0)+(dzdy.^2.0));

end

