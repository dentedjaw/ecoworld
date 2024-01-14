// Collision Event for obj_animal with obj_terrain
var terrain_instance = instance_place(x, y, obj_terrain);

if (terrain_instance != noone) {
    if (terrain_instance.is_walkable) {
        vertical_speed = 0;
        can_jump = true;
        is_on_ground = true;
        // Adjust obj_animal's y-position to be on top of the terrain
        y = terrain_instance.y - obj_animal_height;
    } else {
        // Logic for non-walkable terrain
    }
}
