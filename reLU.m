function out = reLU(im)
    ind = 1;
    s = size(im);
    for i = 1:length(s)
        ind = ind * s(i);
    end
    
    for k = 1:ind
        if(im(k) < 0)
            im(k) = 0;
        end
    end
    out = im;
end

