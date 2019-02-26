function [slope] = slope(myDEM)
%Calculates the slope for all non-border values.
sizerow=size(myDEM, 1);
sizecolumn=size(myDEM,2);
dzdx = zeros(sizerow,sizecolumn);
dzdy = zeros(sizerow,sizecolumn);

dzdx(2:sizerow-1,2:sizecolumn-1) = (myDEM(2:sizerow-1,3:sizecolumn)-myDEM(2:sizerow-1,1:sizecolumn-2))/180;
dzdy(2:sizerow-1,2:sizecolumn-1) = (myDEM(1:sizerow-2,2:sizecolumn-1)-myDEM(3:sizerow,2:sizecolumn-1))/180;
slope = sqrt((dzdx.^2.0)+(dzdy.^2.0));

end
