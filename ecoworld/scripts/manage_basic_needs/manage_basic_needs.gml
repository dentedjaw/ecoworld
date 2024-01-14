function manage_basic_needs() {
    age += global.animalMetabolismScale;
    if (age >= max_age) {
        instance_destroy(); // Animal dies of old age
    }

    energy -= energy_decay_rate;
    hunger += hunger_increase_rate;
    thirst += thirst_increase_rate;

    // Critical need management
    if (energy <= 10) current_state = AnimalState.Sleeping;
    else if (hunger >= 90) current_state = AnimalState.Eating;
    else if (thirst >= 90) current_state = AnimalState.SeekingWater;
}
