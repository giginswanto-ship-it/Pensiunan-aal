@echo off
cd /d "%~dp0"
echo ====================================================
echo  MEMULAI SERVER LOKAL LEMBAR DATA ALUMNI AAL
echo ====================================================
echo.
echo Membuka aplikasi di browser...
timeout /t 2 /nobreak >nul
start "" "http://localhost:3000"
node server.js
pause
