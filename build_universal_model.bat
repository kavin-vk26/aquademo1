@echo off
echo 🌍 Building Multi-Location Universal Water Quality Model...
echo.

echo 📦 Installing Python dependencies...
pip install tensorflow numpy pandas scikit-learn requests

echo.
echo 🚀 Training universal model on 5 diverse Indian locations...
echo   - Coimbatore (Tropical)
echo   - Ahmedabad (Arid) 
echo   - Mumbai (Coastal)
echo   - Delhi (Continental)
echo   - Kolkata (Humid subtropical)
echo.

python train_multi_location.py

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ✅ SUCCESS! Universal model built successfully!
    echo 📁 Files created:
    echo    - water_qual_universal.keras
    echo    - water_qual_universal_scaler.pkl
    echo.
    echo 🚀 Now you can run your web app:
    echo    cd web-app
    echo    node server.js
    echo.
    echo 🌍 Your model now works for users across India!
) else (
    echo.
    echo ❌ FAILED! Check error messages above.
    echo 💡 Make sure you have internet connection for weather data.
)

pause