function EyeDetector=myfun(image_read)
detector = vision.CascadeObjectDetector('eye_detector.xml');
%% テスト イメージを読み取ります。
img = imread("hashimoto.jpg");
%% テスト イメージ内の一時停止標識を検出します。
bbox = step(detector,img);
%% 境界ボックスの四角形を挿入し、マークしたイメージを返します。
 detectedImg = insertObjectAnnotation(img,'rectangle',bbox,'eye');
%%
figure;
imshow(detectedImg);
end