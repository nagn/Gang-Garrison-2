// 0 = target
// 1 = medic

if(argument0.object != -1)
    argument0.object.healer = -1;

if(instance_exists(argument1.object) and argument1.object != -1) // this test is for the client side
    argument1.object.currentWeapon.healTarget = noone;
