
function slopematrix=functionslopecalculation(DEM,PositionFirstName,PositionSurname) 
r1=PositionFirstName*10;
r2=r1+r1*2;
c1=5*PositionSurname;
c2=c1+c1*3;
myDEM=DEM(60:180, 10:40);

sizerow=size(myDEM, 1);
sizecolumn=size(myDEM,2);
slopematrix=zeros(sizerow, sizecolumn);

%nestedforloopsslope
for row=2:sizerow-1 %nugaatgenaarbeneden
    for column=2:sizecolumn-1
        xslope= dem(row,column-1)-dem(row,column+1);
        yslope= dem(row-1,column)-dem(row+1,column);
        slope=sqrt((xslope/180)^2+(yslope/180)^2);
        slopematrix(row,column)=slope;
    end
end
imagesc(slopematrix)
end
        
