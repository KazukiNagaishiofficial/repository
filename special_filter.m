I=imread('cameraman.tif');
figure(1)
imshow(I)

Iblue1=imgaussfilt(I,1);
Iblue2=imgaussfilt(I,4);
Iblue3=imgaussfilt(I,16);
Iblue4=imgaussfilt(I,64);

Idog1=imgaussfilt(I,1)-imgaussfilt(I,4);
Idog2=imgaussfilt(I,4)-imgaussfilt(I,16);
Idog3=imgaussfilt(I,16)-imgaussfilt(I,64);

figure(2)
subplot(4,2,1)
imshow(Iblue1)
subplot(4,2,2)
imshow(Iblue2)
subplot(4,2,3)
imshow(Iblue3)
subplot(4,2,4)
imshow(Iblue4)

subplot(4,2,5)
imshow(Idog1)
subplot(4,2,6)
imshow(Idog2)
subplot(4,2,7)
imshow(Idog3)
