@echo off
echo ========================================
echo   Convert Priority PDF Figures
echo ========================================
echo.
echo This script will help you convert the TWO most important
echo figures for the website:
echo.
echo   1. workflow_newnew.pdf  -^> workflow.png
echo   2. heatmap_pvalue.pdf   -^> heatmap_pvalue.png
echo.
echo ========================================
echo.

cd /d "%~dp0"

REM Create images directory if not exists
if not exist "images" mkdir images

echo Checking for PDF files...
echo.

set WORKFLOW_FOUND=0
set HEATMAP_FOUND=0

if exist ..\workflow_newnew.pdf (
  echo [FOUND] workflow_newnew.pdf
  set WORKFLOW_FOUND=1
) else (
  echo [MISSING] workflow_newnew.pdf not found in parent directory
)

if exist ..\heatmap_pvalue.pdf (
  echo [FOUND] heatmap_pvalue.pdf
  set HEATMAP_FOUND=1
) else (
  echo [MISSING] heatmap_pvalue.pdf not found in parent directory
)

echo.
echo ========================================
echo   Conversion Options
echo ========================================
echo.
echo Since PDF to PNG conversion requires special tools,
echo please choose ONE of the following methods:
echo.
echo METHOD 1: Online Conversion (Recommended - No Install)
echo   1. Go to: https://www.ilovepdf.com/pdf_to_jpg
echo   2. Upload: d:\GUI\workflow_newnew.pdf
echo   3. Download and save as: images\workflow.png
echo   4. Upload: d:\GUI\heatmap_pvalue.pdf
echo   5. Download and save as: images\heatmap_pvalue.png
echo.
echo METHOD 2: Using Adobe Acrobat/Reader
echo   1. Open workflow_newnew.pdf in Acrobat
echo   2. File -^> Export To -^> Image -^> PNG
echo   3. Save to: webagentslook_website\images\workflow.png
echo   4. Repeat for heatmap_pvalue.pdf
echo.
echo METHOD 3: Using Python (if you have pdf2image installed)
echo   Run: python convert_priority_pdfs.py
echo   (This script will be created for you)
echo.

set /p CREATE_PYTHON=Do you want to create a Python conversion script? (y/n): 
if /i "%CREATE_PYTHON%"=="y" (
  echo.
  echo Creating convert_priority_pdfs.py...
  (
    echo from pdf2image import convert_from_path
    echo import os
    echo.
    echo # Ensure images directory exists
    echo os.makedirs^('images', exist_ok=True^)
    echo.
    echo print^('Converting workflow_newnew.pdf...'
    echo^)
    echo if os.path.exists^('../workflow_newnew.pdf'^):
    echo     images = convert_from_path^('../workflow_newnew.pdf', dpi=300^)
    echo     images[0].save^('images/workflow.png', 'PNG'^)
    echo     print^('[OK] Saved: images/workflow.png'^)
    echo else:
    echo     print^('[ERROR] workflow_newnew.pdf not found'^)
    echo.
    echo print^('Converting heatmap_pvalue.pdf...'
    echo^)
    echo if os.path.exists^('../heatmap_pvalue.pdf'^):
    echo     images = convert_from_path^('../heatmap_pvalue.pdf', dpi=300^)
    echo     images[0].save^('images/heatmap_pvalue.png', 'PNG'^)
    echo     print^('[OK] Saved: images/heatmap_pvalue.png'^)
    echo else:
    echo     print^('[ERROR] heatmap_pvalue.pdf not found'^)
    echo.
    echo print^('Conversion complete!'^)
  ) > convert_priority_pdfs.py
  echo [OK] Created convert_priority_pdfs.py
  echo.
  echo To run it: python convert_priority_pdfs.py
  echo Note: Requires 'pdf2image' package: pip install pdf2image
)

echo.
echo ========================================
echo   Next Steps
echo ========================================
echo.
echo After converting the PDFs:
echo   1. Verify images/workflow.png exists
echo   2. Verify images/heatmap_pvalue.png exists
echo   3. Optional: Run copy_images.bat for additional PNG files
echo   4. Edit index.html to update authors and links
echo   5. Run deploy.bat to publish to GitHub
echo.
pause
