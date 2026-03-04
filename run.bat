@echo off
title SentinelStack v2
color 0A
echo.
echo  ══════════════════════════════════════════════════
echo    SentinelStack v2 — MongoDB Atlas + GPT-4o
echo  ══════════════════════════════════════════════════
echo.
python --version >nul 2>&1
IF ERRORLEVEL 1 (echo  [ERROR] Python not found! & pause & exit /b 1)
echo  Installing dependencies...
python -m pip install flask pyjwt python-docx pdfplumber dnspython --quiet
python -m pip install "pymongo[srv]" --quiet
echo  Done.
echo.
echo  ══════════════════════════════════════════════════
echo   Open: http://localhost:7860
echo   Login: demo@sentinelstack.com / demo123!
echo   DB:    MongoDB Atlas (all data stored in cloud)
echo  ══════════════════════════════════════════════════
echo.
python app.py
pause