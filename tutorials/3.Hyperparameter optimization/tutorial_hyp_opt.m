% OPTION 1: Uncomment the following if you want to load the entire 3D movie matrix (~11 GB). Not recommeded for systems with limited memory. 
% M = single(hdf5read('jones.hdf5','/Data/Images'));

% OPTION 2: Instead, pass the movie name as a string. Default option, comment the following if using OPTION 1.
M = 'jones.hdf5:/Data/Images';

% Define the configuration to be used
config=[];
config = get_defaults(config);
config.avg_cell_radius=7;

% If you do not have a native NVIDIA GPU, MATLAB may throw an error. 
if gpuDeviceCount("available")==0 || gpuDevice().DeviceSupported==0
   config.use_gpu=0;
end

% Decide the number of partitions based on available RAM and GPU memory. Typically, for a system with <=24 GB RAM, upto 10 x and y partitions would work. 
config.num_partitions_x=10;
config.num_partitions_y=10;


% Play with internal threshold parameters
config.thresholds.T_min_snr=4;
config.thresholds.spatial_corrupt_thresh=1.5;
config.cellfind_min_snr=0;


output=extractor(M,config);
