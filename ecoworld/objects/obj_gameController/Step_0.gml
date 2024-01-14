// Step Event for obj_gameController

// Countdown the timer
weather_change_timer -= 1;

// When the timer reaches zero, change the weather
if (weather_change_timer <= 0) {
    // Reset the timer
    weather_change_timer = 6000; // Reset to default value

    // Randomly change the weather
    global.current_weather = irandom_range(Weather.Sunny, Weather.Snowy);

    // Broadcast the weather change to other objects if needed
    // (This depends on how other objects in your game are designed to respond to weather changes)
}
