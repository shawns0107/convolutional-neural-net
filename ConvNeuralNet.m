function out = ConvNeuralNet()
    load('CNNparameters.mat', '-mat');
    load('cifar10testdata.mat', '-mat');
    
    %for classindex = 1:10
        %get indices of all images of that class
        %inds = find(trueclass==classindex);
        %take first one 
        %imrgb = imageset(:,:,:,inds(1));
    imrgb = imread('test_im.jpg');
    
    imrgb = double(imrgb);
    
    out = ImageNormalization(imrgb);
    out = Convolution(out, biasvectors{2}, filterbanks{2});
    out = reLU(out);
    out = Convolution(out, biasvectors{4}, filterbanks{4});
    out = reLU(out);
    out = Maxpool(out);
    out = Convolution(out, biasvectors{7}, filterbanks{7});
    out = reLU(out);
    out = Convolution(out, biasvectors{9}, filterbanks{9});
    out = reLU(out);
    out = Maxpool(out);
    out = Convolution(out, biasvectors{12}, filterbanks{12});
    out = reLU(out);
    out = Convolution(out, biasvectors{14}, filterbanks{14});
    out = reLU(out);
    out = Maxpool(out);
    out = fullyConnected(out, biasvectors{17}, filterbanks{17});
    %out = softmax(out);
    %end
end