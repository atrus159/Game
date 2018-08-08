var invIndex = ds_list_find_index(holder.inventory,self);
delete_id = holder.inventory;
delete_pos = invIndex;
effect_create_above(ef_ring,holder.x,holder.y,2,c_green);
delete_flag = 1;