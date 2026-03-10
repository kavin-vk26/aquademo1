#!/bin/bash
# Train model on multiple diverse Indian regions

echo "Training universal model on multiple regions..."

# Diverse climate zones
python train_model_universal.py 11.0168 76.9558  # Coimbatore (Tropical)
python train_model_universal.py 23.0225 72.5714  # Ahmedabad, Gujarat (Arid)  
python train_model_universal.py 19.0760 72.8777  # Mumbai (Coastal)
python train_model_universal.py 28.6139 77.2090  # Delhi (Continental)
python train_model_universal.py 22.5726 88.3639  # Kolkata (Humid subtropical)

echo "Multi-region model training complete!"