// argument0 = id of the user to ban
player = ds_list_find_value(global.players, argument0)
player.kicked = true
