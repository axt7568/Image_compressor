function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);


centroids = zeros(K, n);



sum_val = zeros(K,n); 
count = zeros(K,1); 
for i = 1:K
  for j = 1:m
    if(idx(j)  == i)
      sum_val(i,:) = sum_val(i,:) + X(j,:);
      count(i) = count(i) + 1; 
    endif
  endfor
endfor
centroids =  sum_val./count;  








end

