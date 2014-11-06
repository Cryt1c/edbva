function [result] = test

    result = [];
    image2 = imread('../img/minus.jpg','jpg');
    image = imread('../img/plus.jpg','jpg');
    image=im2double(image);
    image2=im2double(image2);
    
    gauss_kernel = fspecial('gaussian',10,3);
    
    
    image=imfilter(image,gauss_kernel);
    imageBY=image(:,:,1)<0.5;
    image2=imfilter(image2,gauss_kernel);
    image2BY=image2(:,:,1)<0.5;
    %%level = graythresh(image);
    %%imageBY = im2bw(image,level);
    
    %imageBY = medfilt2(imageBY, 'zeros');
    
    %%noteOfInterest = imread('plus.jpg');
    %%noteOfInterest = rgb2gray(noteOfInterest);
    
%     C1 = normxcorr2(imageBY,imageBY);
%     max(C1(:))
%     
%    %% aDifferentNoteFromLibrary = imread('minusVSplus15.jpg');
%     %%aDifferentNoteFromLibrary = rgb2gray(aDifferentNoteFromLibrary);
%     C2 = normxcorr2(imageBY,image2BY);
%     max(C2(:))
    
    subplot(1,2,1);
    imshow(imageBY);
    subplot(1,2,2);
    imshow(image2BY);
