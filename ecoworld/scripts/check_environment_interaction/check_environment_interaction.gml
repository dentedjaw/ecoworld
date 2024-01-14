function check_environment_interaction() {
    var nearby_object = instance_nearest(x, y, obj_terrain); // Adjust obj_terrain to the correct object type

    if (nearby_object != noone) {
        // Check if nearby_object is of the correct type that has 'is_water' defined
        if (instance_exists(nearby_object) && nearby_object.object_index == obj_terrain) { // Adjust obj_terrain as needed
            if (nearby_object.is_water && species != Species.Fox) {
                hspd *= -1;
            }
            // Add additional environmental interactions as needed
        }
    }
}
