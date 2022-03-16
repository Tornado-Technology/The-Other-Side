if (other == balcklist) exit;
enemy_damage(other, damage);
balcklist = other;

if (enemys != noone) ds_list_delete(enemys, 0);
enemy_limit++;

if (enemy_limit > enemy_limit_max) finde_player = true;