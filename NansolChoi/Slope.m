function [dem, Type] = Slope(dem, Type) % Should Resolution be here?
% Calculate the slope for DEMs of any dimension

% DEM
% load('dem.mat');
[nx, ny, nz] = size(dem);

% resolution
dx = 90;
dy = 90;

%Type
switch Type
    case 'loop'
        for ix=2:nx-1;
            for iy=2:ny-1;
                dzdx = (dem(ix+1,iy)-dem(ix-1,iy))./(2.0*dx);
                dzdy = (dem(ix,iy+1)-dem(ix,iy-1))./(2.0*dy);
                Slopemap1(ix,iy) = sqrt(dzdx.^2.0 + dzdy.^2.0);
            end
        end
    case 'vector'
        dzdx = zeros(nx,ny);
        dzdy = zeros(nx,ny);
        dzdx(1:end,2:end-1) = (dem(1:end,3:end) - dem(1:end,1:end-2))./(2.0*dx);
        dzdy(2:end-1,1:end) = (dem(3:end,1:end) - dem(1:end-2,1:end))./(2.0*dy);
        Slopemap2 = sqrt(dzdx.^2.0 + dzdy.^2.0);
end
end

