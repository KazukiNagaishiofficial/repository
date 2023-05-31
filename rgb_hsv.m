rgbImage=imread("peppers.png");

figure(1)
subplot(4,1,1)
imshow(rgbImage)
subplot(4,1,2)
imshow(rgbImage(:,:,1))
subplot(4,1,3)
imshow(rgbImage(:,:,2))
subplot(4,1,4)
imshow(rgbImage(:,:,3))

hsvImage=rgb2hsv(rgbImage);
figure(2)
subplot(4,1,1)
imshow(rgbImage)
subplot(4,1,2)
imshow(hsvImage(:,:,1))
subplot(4,1,3)
imshow(hsvImage(:,:,2))
subplot(4,1,4)
imshow(hsvImage(:,:,3))

figure(3)
subplot(3,1,1)
imhist(hsvImage(:,:,1))
subplot(3,1,2)
imhist(hsvImage(:,:,2))
subplot(3,1,3)
imhist(hsvImage(:,:,3))

hsvImage_low_s=hsvImage;
hsvImage_low_s(:,:,2)=hsvImage(:,:,2)/2;
figure(4)
rgbImage_low_s=hsv2rgb(hsvImage_low_s);
imshow(rgbImage_low_s)

%色閾値
figure(5)
channel1min = 0.953;
channel1max = 0.043;

BW1=(hsvImage(:,:,1))>=(channel1min);
BW2=(hsvImage(:,:,1))<=(channel1max);
BW_hue=BW1 | BW2;

channel2min = 0.344;
BW_sat=(hsvImage(:,:,2))>=(channel2min);

BW=BW_hue &BW_sat;

figure(6)
maskedrgbImage=(rgbImage .* uint8(BW));

imshow(maskedrgbImage)