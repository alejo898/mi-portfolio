@echo off
title Portfolio Dashboard — Alejo
cd /d "%~dp0"
echo.
echo  =========================================
echo   PORTFOLIO DASHBOARD — Iniciando...
echo  =========================================
echo.
echo  Abriendo dashboard en Chrome...
echo  NO cierres esta ventana.
echo.
start "" "http://localhost:8080/portfolio-dashboard-v9.html"
python -m http.server 8080 2>nul
if %ERRORLEVEL% NEQ 0 (
  py -m http.server 8080 2>nul
)
if %ERRORLEVEL% NEQ 0 (
  echo.
  echo  ERROR: Python no encontrado.
  echo  Instala Python desde python.org/downloads
  pause
)
