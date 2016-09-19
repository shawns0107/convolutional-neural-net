%PRE: im is a N x M x D image
function out = Maxpool(im)
    s = size(im);
    out = zeros(s(1)/2, s(2)/2, s(3));
    for i = 1:s(3)              %slow n^3 speed but who cares
        curY = 1;
        for j = 1:2:s(2)
            curX = 1;
            for k = 1:2:s(1)
                t1 = max(im(j, k, i), im(j, k+1, i));
                t2 = max(im(j+1, k, i), im(j+1, k+1, i));
                out(curY, curX, i) = max(t1, t2);
                curX = curX + 1;
            end
            curY = curY + 1;
        end
    end
end