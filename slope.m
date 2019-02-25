function [S] = slope(dem, method)
% method is or 'loop' or 'vector'

[r,c] = size(dem);
S = zeros(r,c);
x = 90; % m resolution

switch method
    case 'loop'
        for i=2:r-1
            for j=2:c-1
               dzdx = (dem(i-1,j) - dem(i+1,j))/(2*x);
               dzdy = (dem(i,j+1) - dem(i,j-1))/(2*x);
               S(i,j) = (dzdx^2 + dzdy^2)^0.5;   
            end
        end
    case 'vector'
        dzdx = zeros(r,c);
        dzdy = zeros(r,c);        
        dzdx(:,2:end-1) = (dem(:,3:end) - dem(:,1:end-2))/(2*x);
        dzdy(2:end-1,:) = (dem(3:end,:) - dem(1:end-2,:))/(2*x);
        S = (dzdx^2 + dzdy^2)^0.5; 
end
