/// @description 

other.hp -= atk;
other.flash = 3;
other.hitfrom = direction;

effect_create_above(ef_explosion, x, y, 0.05, c_red);
instance_destroy(id, true);


