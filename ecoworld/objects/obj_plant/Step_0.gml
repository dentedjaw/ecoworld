// Step Event for obj_plant



// Growth and water level management based on environmental conditions
if (global.current_weather == Weather.Rainy) {
    water_level += 2; // Increased water level due to rain
    growth_stage += 0.2 * global.growthTimeScale; // Faster growth in rainy weather
} else if (global.current_weather == Weather.Sunny) {
    water_level -= 1; // Water level decreases in sunny weather
    growth_stage += 0.1 * global.growthTimeScale; // Normal growth in sunny weather
} else {
    water_level -= 0.5; // Default water level decrease
    growth_stage += 0.05 * global.growthTimeScale; // Slower growth otherwise
}

// Ensure the plant doesn't grow beyond its maximum stage
if (growth_stage > max_growth_stage) {
    growth_stage = max_growth_stage;
    reproduction_ready = true; // The plant is ready to reproduce once fully grown
}

// Health management based on water level
if (water_level <= 0) {
    plant_health -= 1; // Plant health decreases if it lacks water
    water_level = 0; // Ensuring water level doesn't go negative
}

// Adjust plant health based on temperature preferences
if (global.current_temperature < preferred_temperature_range[? "min"] ||
    global.current_temperature > preferred_temperature_range[? "max"]) {
    plant_health -= 0.5 * global.timeScale; // Health decreases if temperature is not optimal
}

// Reproduction and mutation logic
if (reproduction_ready) {
    // Reproduction logic here (based on reproduction_method)
    // Include mutation logic with a chance of subtle changes in traits
    if (random(100) < 10) { // 10% chance of mutation
        var mutation = random_range(-5, 5); // Subtle mutation range
        var new_trait_value = max(0, genetic_traits[? "some_trait"] + mutation);
        // Apply mutation to new offspring
        // Example: var new_plant = instance_create_layer(x, y, "Plants", obj_plant);
        // new_plant.genetic_traits[? "some_trait"] = new_trait_value;
    }
}

// Check for terrain interaction (if applicable)
// Example: Adjust behavior if on different types of terrain
if (place_meeting(x, y, obj_terrain)) {
    var terrain = instance_place(x, y, obj_terrain);
    // Adjust growth or health based on the type of terrain
}

// Health check - destroy the plant if health is depleted
if (plant_health <= 0) {
    instance_destroy();
}
