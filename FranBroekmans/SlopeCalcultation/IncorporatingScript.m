clearvars
load('dem.mat'); 

% Your name will be asked. The name will be split into words and the first
% letters are automatically taken. The number of the letter in the alphabet is
% taken from the position in the list, and this number is used to calculate
% the extent of the custom DEM. 
letters = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
prompt = 'what is your name? ';
name = lower(input(prompt, 's'));
nameWords = split(name);
firstName = nameWords{1};
surName = nameWords{2};
positionFirst = find(letters==firstName(1));
positionSur = find(letters==surName(1));

r1=positionFirst*10;
r2=r1+r1*2;
c1=5*positionSur;
c2=c1+c1*3;
myDEM=dem(r1:r2, c1:c2);

% slope = function with matrix calculations
% slope2 = function with loops
prompt = '\nDo you want to perform the calculation with\nnested loops ar matrix calculations?\nplease type matrix/loop ';
calculationType = input(prompt, 's');
switch calculationType
    case 'matrix'
        tic
        imagesc(slope(myDEM));
        toc
    case 'loop'
        tic
        imagesc(slope2(myDEM));
        toc
    otherwise
        disp('Please run again with a valid calculation type');
end
