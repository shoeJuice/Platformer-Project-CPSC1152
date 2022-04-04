/// @description 

other.hp -= atk;
other.flash = 3;
other.hitfrom = direction;

effect_create_above(ef_firework, x, y, 0.05, c_yellow);
instance_destroy(id, true);


