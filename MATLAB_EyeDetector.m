RightEyesDetector = vision.CascadeObjectDetector('RightEye');
LeftEyesDetector = vision.CascadeObjectDetector('LeftEye');
I = imread('mana.jpeg');
%%
RightEyesbbox = RightEyesDetector(I);
LeftEyesbbox = LeftEyesDetector(I);
%%
I = insertObjectAnnotation(I,'rectangle',RightEyesbbox,'RightEye');
I = insertObjectAnnotation(I,'rectangle',LeftEyesbbox,'LeftEye');
%%
imshow(I)
hold on
hold off