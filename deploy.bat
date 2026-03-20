@echo off
setlocal

cd /d "%~dp0"

echo ========================================
echo   WebAgentsLook - GitHub Pages Deploy
echo ========================================
echo.

echo [1/5] Checking Git installation...
git --version >nul 2>nul
if errorlevel 1 (
  echo [ERROR] Git not found. Please install Git first: https://git-scm.com/download/win
  pause
  exit /b 1
)
echo [OK] Git found.

echo.
echo [2/5] Initializing repository...
if not exist ".git" (
  git init
  echo [OK] Repository initialized.
) else (
  echo [OK] Repository already exists.
)

echo.
echo [3/5] Staging files...
git add .
if errorlevel 1 (
  echo [ERROR] Failed to stage files.
  pause
  exit /b 1
)

echo.
echo [4/5] Creating commit...
git commit -m "Update WebAgentsLook project website" >nul 2>nul
if errorlevel 1 (
  echo [INFO] No changes to commit or already committed.
) else (
  echo [OK] Changes committed.
)

echo.
echo [5/5] Configuring remote and pushing...
git branch -M main

git remote get-url origin >nul 2>nul
if errorlevel 1 (
  echo.
  echo No remote repository configured yet.
  echo.
  echo Please enter your GitHub repository URL:
  echo Example: https://github.com/username/webagentslook.git
  echo.
  set /p REMOTE_URL="Repository URL: "
  
  if "%REMOTE_URL%"=="" (
    echo [ERROR] Repository URL cannot be empty.
    pause
    exit /b 1
  )
  
  git remote add origin "%REMOTE_URL%"
  echo [OK] Remote added: %REMOTE_URL%
) else (
  for /f "delims=" %%i in ('git remote get-url origin') do set CURRENT_REMOTE=%%i
  echo [OK] Using existing remote: !CURRENT_REMOTE!
)

echo.
echo Pushing to GitHub...
git push -u origin main
if errorlevel 1 (
  echo.
  echo [ERROR] Push failed. Please check:
  echo   1. Repository URL is correct
  echo   2. You have write access to the repository
  echo   3. GitHub credentials are configured
  echo.
  echo To retry with force push (use with caution):
  echo   git push -u origin main --force
  pause
  exit /b 1
)

echo.
echo ========================================
echo   Deployment Complete!
echo ========================================
echo.
echo Next steps:
echo   1. Go to your GitHub repository
echo   2. Navigate to Settings -^> Pages
echo   3. Ensure "GitHub Actions" is selected as the source
echo   4. Wait 2-3 minutes for the Actions workflow to complete
echo   5. Your site will be live at:
echo      https://^<your-username^>.github.io/^<repo-name^>/
echo.
pause
