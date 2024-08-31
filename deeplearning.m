load('eye_data.mat');
stopSigns = fullfile(eye_data{:,1});
imds = imageDatastore(stopSigns);
blds = boxLabelDatastore(eye_data(:,2));
positiveInstances = combine(imds,blds);
negativeFolder = fullfile('negative');
negativeImages = imageDatastore(negativeFolder);
trainCascadeObjectDetector('eye_detector.xml',positiveInstances,negativeFolder,FalseAlarmRate=0.01,NumCascadeStages=3);