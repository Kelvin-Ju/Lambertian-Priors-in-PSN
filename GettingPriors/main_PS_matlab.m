clear all;close all;clc;
addpath(genpath(pwd));  
g_pic_num = 32;
g_src = ;
shadowThresh = 0.1;
image = imread([g_src '0.bmp']);
image = image(:,:,1);
[M, N, C] = size(image);
I = ones(M, N, g_pic_num);
for  i = 1:g_pic_num
    image = im2double(imread([g_src [int2str(i) '.bmp']]));
    image = rgb2gray(image);
    I(:,:, i) = image /prctile(image(:), 99);
end
clear name rows cols
[g_rows, g_cols] = size(image);
g_length = g_rows * g_cols;
L = zeros(3, g_pic_num);
L=  ;
[rho, n] = PhotometricStereo(I, shadow_mask, L);
N_RGB(:,:,1)  = (n(:,:,1) + 1) / 2;
N_RGB(:,:,2)  = (n(:,:,2) + 1) / 2;
N_RGB(:,:,3)  = n(:,:,3);
figure; imshow(N_RGB); 

%p = -n(:,:,1) ./ n(:,:,3);
%q = -n(:,:,2) ./ n(:,:,3);
%p(isnan(p)) = 0; 
%q(isnan(q)) = 0;
% Height_poisson =poisson_solver_function_neumann(p, q);
% Height_poisson = flipud(Height_poisson);
%figure;mesh(Height_poisson);
%Z=Height_poisson;
%figure;surf(Z, 'EdgeColor', 'None', 'FaceColor', [0.5 0.5 0.5]);
%axis equal; camlight;view(-75, 30);
%figure;mesh(Z);axis equal; camlight;view(-75, 30);
