clear all;  
clc; 
close all

%% read the HSI data being processed
a = dir;
filename_path = a.folder;     
filename_path = strcat(filename_path,'\');
name_HSI = 'cut_1';     
filename = strcat(filename_path,name_HSI,'.mat');

load(filename);
X_cube = data;
clear('data');
[samples,lines,band_num]=size(X_cube);
pixel_num = samples * lines;

gt = map;
clear('map');

mask = squeeze(gt(:));    



%% set parameters for the constrction of multiple trees
 
tree_size_ratio = 0.005;    % subsampling size ratio
tree_size = ceil(pixel_num * tree_size_ratio); % subsampling size
tree_num = 50; % subsampling times

%% perform anomaly detecion with TTAD
r_TTAD = TTAD(X_cube, tree_size, tree_num); 
%% illustrate detection results
figure;
subplot(121), imagesc(gt); axis image;   title('Ground Truth')     
subplot(122), imagesc(r_TTAD); axis image;   title('Detection map of TTAD')    

%% evaluate detection results with ROC
r_255 = squeeze(r_TTAD(:));
figure;
AUC = ROC(mask,r_255,'r')       

