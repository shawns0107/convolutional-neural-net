
function out = softmax(K, dim)

s = ones (1, ndims(K));
s(dim) = size (K, dim);

maxK = max(K, [], dim);
expK = exp(K - repmat(maxK, s));
out = expK ./ repmat (sum(expK, dim), s);

end
