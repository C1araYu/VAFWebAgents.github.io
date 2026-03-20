@echo off
echo ========================================
echo   Copying Existing Images
echo ========================================
echo.

cd /d "%~dp0"

REM Create images directory
if not exist "images" mkdir images

echo Copying PNG files from parent directory...

REM Copy existing PNG files
if exist ..\amazon_top_click_distribution.png (
  copy ..\amazon_top_click_distribution.png images\amazon_distribution.png >nul
  echo [OK] Copied amazon_distribution.png
)

if exist ..\click_heatmap_ebay2_original_updated.png (
  copy ..\click_heatmap_ebay2_original_updated.png images\ebay_distribution.png >nul
  echo [OK] Copied ebay_distribution.png
)

if exist ..\click_heatmap_npr_original.png (
  copy ..\click_heatmap_npr_original.png images\npr_distribution.png >nul
  echo [OK] Copied npr_distribution.png
)

if exist ..\HEATMAP_BEST.png (
  copy ..\HEATMAP_BEST.png images\heatmap_best.png >nul
  echo [OK] Copied heatmap_best.png
)

if exist ..\HEATMAP_WORST.png (
  copy ..\HEATMAP_WORST.png images\heatmap_worst.png >nul
  echo [OK] Copied heatmap_worst.png
)

if exist ..\click_heatmap_booking_first_original.png (
  copy ..\click_heatmap_booking_first_original.png images\booking_original.png >nul
  echo [OK] Copied booking_original.png
)

if exist ..\click_heatmap_booking_first_original_comprehensive.png (
  copy ..\click_heatmap_booking_first_original_comprehensive.png images\booking_comprehensive.png >nul
  echo [OK] Copied booking_comprehensive.png
)

echo.
echo ========================================
echo   Still Need to Convert from PDF:
echo ========================================
echo.
echo Please manually convert these PDFs to PNG:
echo   1. workflow.pdf -^> images/workflow.png
echo   2. heatmap_pvalue.pdf -^> images/heatmap_pvalue.png
echo   3. booking_variant_distribution.pdf -^> images/booking_variant_distribution.png
echo.
echo See ASSETS.md for conversion instructions.
echo.
pause
