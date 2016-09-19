function out = ImageNormalization(im)
    im = double(im);
    out = (im ./ 255.0) - 0.5;
end