function dem = readDEM(locationOfTheFile)
%Load DEM
path = fullfile(locationOfTheFile,'dem.mat');
dem_struct = load(path);
dem = cell2mat(struct2cell(dem_struct));
end

