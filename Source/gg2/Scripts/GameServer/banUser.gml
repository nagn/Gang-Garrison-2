// argument0 = id of the user to ban
player = ds_list_find_value(global.players, argument0)
player.kicked = true
ds_list_add(global.banList,socket_remote_ip(player.socket))

fileHandle = file_text_open_write("banList.txt")

for (i =0 ; i < ds_list_size(global.banList); i+=1 ) {
    file_text_write_string(fileHandle,ds_list_find_value(global.banList,i))
    file_text_writeln(fileHandle) 
}
file_text_close(fileHandle);
