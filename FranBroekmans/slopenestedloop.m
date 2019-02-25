
%% Slopecaculation
clearvars
load('dem.mat'); 
imagesc(dem);

PositionFirstName=6; %define this variable
PositionSurname=2;   %define this variable

r1=PositionFirstName*10;
r2=r1+r1*2;
c1=5*PositionSurname;
c2=c1+c1*3;
myDEM=dem(r1:r2, c1:c2);

sizerow=size(myDEM, 1);
sizecolumn=size(myDEM,2);
slopematrix=zeros(sizerow, sizecolumn);

%nestedforloopsslope
for row=2:sizerow-1 %nugaatgenaarbeneden
    for column=2:sizecolumn-1
        xslope= myDEM(row,column-1)-myDEM(row,column+1);
        yslope= myDEM(row-1,column)-myDEM(row+1,column);
        slope=sqrt((xslope/180)^2+(yslope/180)^2);
        slopematrix(row,column)=slope;
    end
end
imagesc(slopematrix)
        
