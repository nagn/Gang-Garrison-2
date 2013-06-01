{
    with(argument0) {
        instance_destroy();
    }
    
    ds_list_delete(global.players, ds_list_find_index(global.players, argument0));
    if instance_exists(PlayerController){
        with(PlayerController) {instance_destroy()}
        
        instance_create(0,0,PlayerController)
        }
    if instance_exists(KickController){
        with(KickController) {instance_destroy()}
        
        instance_create(0,0,KickController)
        }
        
}
