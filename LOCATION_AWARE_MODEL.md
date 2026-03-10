# Add location features to make model location-aware

# In train_model_universal.py, add these features:
FEATURES = [
    "air_temp", "humidity", "rain", "windspeed", 
    "water_temp", "do", "ph",
    "latitude",      # Climate zone indicator
    "longitude",     # Regional patterns  
    "month",         # Seasonal patterns
    "coastal_dist"   # Distance from coast
]

# This helps model learn:
# - Gujarat: Low humidity, high temp variations
# - Kerala: High humidity, stable temps  
# - Rajasthan: Extreme temps, very low humidity
# - Bengal: High humidity, monsoon patterns