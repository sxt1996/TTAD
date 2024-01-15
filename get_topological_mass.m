function  anomaly_score = get_topological_mass( x_code_list,y_code_list,x_y_Mass_list)
% to get the topological masses of two pixels on multiple trees
% Input:
% x_code_list:encoding results of x on multiple trees; y_code_list:
% encoding results of y on multiple trees; x_y_Mass_list: masses of the shared nodes of x and y on multiple trees
% Output:
% anomaly_score of the testing pixel

 
tree_num  = length(x_code_list);  

diff_sum = 0;

for i =1:tree_num    
    x_code = x_code_list{i};           
    y_code = y_code_list{i};  
    x_y_distance = get_distance_on_tree(x_code,y_code);
    x_y_distance = x_y_distance * x_y_Mass_list(i);
    
    
    diff_score = x_y_distance;
    
    diff_sum = diff_sum + diff_score;
    

end

diff_average = diff_sum/tree_num;   

anomaly_score = diff_average;


end



