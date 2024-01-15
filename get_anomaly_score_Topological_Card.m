function  anomaly_score = get_anomaly_score_Topological_Card( x,multiple_trees)
% to get the anomaly score for the testing pixel 
% Input:
% x: testing pixel; multiple_trees: multiple constructed trees
% Output:
% anomaly score of the testing pixel 


tree_use = multiple_trees{1};
tree_size = tree_use.subset_train_remain;
 



band_num = length(x);   
tree_num  = length(multiple_trees);  

Topological_Card_sum = 0;

for i =1:tree_num    
    tree = multiple_trees{i};
    path_length = 0;
    while isfield(tree,'seg_value')    
                
        seg_value = tree.seg_value;
        dimension_use = tree.dimension;
        x_use = x(dimension_use);
        path_length = path_length + 1;
        if x_use <= seg_value
            tree = tree.left_node;     
        else      
            tree = tree.right_node; 
        end  
       
    end
   
           
    
    
    leaf_size = tree.original_seg_remain;   
    Topological_Card = leaf_size * path_length;  
    Topological_Card_sum = Topological_Card_sum + 1/Topological_Card;
    

end

Topological_Card_average = Topological_Card_sum/tree_num;   
anomaly_score = Topological_Card_average;  



end



