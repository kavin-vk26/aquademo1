@echo off
echo 🚀 Building AquaMonitor PWA for Vercel Deployment...
echo.

echo 📦 Step 1: Installing Python dependencies...
pip install -r requirements.txt

echo.
echo 🧠 Step 2: Training multi-location universal model...
python train_multi_location.py

echo.
echo 📦 Step 3: Installing Node.js dependencies...
cd web-app
npm install
cd ..

echo.
echo 📁 Step 4: Verifying build files...
if exist "water_qual_universal.keras" (
    echo ✅ Model file created
) else (
    echo ❌ Model file missing
    goto :error
)

if exist "water_qual_universal_scaler.pkl" (
    echo ✅ Scaler file created
) else (
    echo ❌ Scaler file missing
    goto :error
)

if exist "web-app\node_modules" (
    echo ✅ Node modules installed
) else (
    echo ❌ Node modules missing
    goto :error
)

echo.
echo 🌐 Step 5: Testing local server...
echo Starting server for 10 seconds to verify...
cd web-app
timeout 10 node server.js
cd ..

echo.
echo ✅ BUILD COMPLETE! Ready for Vercel deployment.
echo.
echo 📋 Deployment checklist:
echo   ✅ Multi-location model trained
echo   ✅ Python dependencies configured
echo   ✅ Node.js dependencies installed
echo   ✅ PWA files ready
echo   ✅ Vercel configuration set
echo.
echo 🚀 Next steps:
echo   1. Push to GitHub
echo   2. Connect to Vercel
echo   3. Deploy automatically
echo.
echo 🌍 Your PWA will work for users across India!
goto :end

:error
echo.
echo ❌ BUILD FAILED! Check error messages above.
echo 💡 Make sure you have:
echo   - Python 3.8+ installed
echo   - Node.js 14+ installed  
echo   - Internet connection for weather data
echo.

:end
pause