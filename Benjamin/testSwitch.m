% Regular way

name='James';
if strcmp(name, 'Silence')
    A=5;
elseif strcmp(name,'Rik')
    A=1;    
elseif strcmp(name,'James')
    A=0;
end

%% More elegant
switch name
    case 'Silence'
        A=5;
    case 'Rik'
        A=1;
    case 'James'
        A=0;
end

%% Also Works with Numbers
name=2; 
switch name
    case 1
        A=5;
    case 2
        A=1;
    case 3
        A=0;
end