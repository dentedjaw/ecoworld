// obj_timeCycle Step Event

// Define the time scale factor
global.timeScale = 1; // 1 for real-time, <1 for slower, >1 for faster

// Update global time variables
global.growthTimeScale = 0.1 * global.timeScale;
global.waterDecayScale = 0.05 * global.timeScale;
global.animalMetabolismScale = 0.1 * global.timeScale;
// Add more time-related scales as needed
