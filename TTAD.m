function result_2D = TTAD(X_cube, tree_size, tree_num)
% paper:¡¶Anomaly Detection Based on Tree Topology for Hyperspectral Images¡·
% Input:
% X_cube£ºan HSI being processed; tree_size: subsampling size; tree_num: subsampling times;
% Output:
% result_2D: detection results


[samples,lines,band_num]=size(X_cube);
pixel_num = samples * lines;
X_use = reshape(X_cube,pixel_num,band_num);
X = X_use.'; 
clear('X_cube', 'X_use');


stop_seg_num = 1;
multiple_trees = get_multiple_trees_TTAD(X, tree_size, tree_num, stop_seg_num);   



[band_num, pixel_num] = size(X);    

results = zeros(1, pixel_num);
   

for i = 1:pixel_num
    x = X(:,i);   
    results(i) = get_anomaly_score_Topological_Card(x, multiple_trees); 
end

r_255 = get_255(results);   
result_2D = reshape(r_255, samples, lines);   

end
