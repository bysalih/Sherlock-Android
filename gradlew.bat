@echo off
where gradle >nul 2>nul
if %errorlevel%==0 (
  gradle %*
) else (
  echo Gradle not found. Please install Gradle.
  exit /b 1
)
