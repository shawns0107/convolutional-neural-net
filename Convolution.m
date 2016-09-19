function out = Convolution(im,biasvector,filterbank)
    s = size(im);
    out = zeros(s(1), s(2), 10);
    
    for i = 1:10
        filt = filterbank(:,:,:,i);
        conv = imfilter(im, filt, 'conv', 'same');
        conv = conv(:,:,1) + conv(:,:,2) + conv(:,:,3);
        conv = conv + biasvector(i); 
        out(:,:,i) = conv;
    end
end
