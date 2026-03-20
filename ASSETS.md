# Asset Conversion Guide

This file lists existing figures in your workspace that can be converted for the website.

## ⭐ PRIORITY: Most Important Figures

These two files are **essential** for the website and should be converted first:

### 1. Workflow Diagram (MUST HAVE)
- **Source**: `d:\GUI\workflow_newnew.pdf`
- **Target**: `images/workflow.png`
- **Description**: Complete pipeline overview showing the three-phase process
- **Priority**: 🔴 **CRITICAL** - Main method visualization

### 2. Results Heatmap (MUST HAVE)
- **Source**: `d:\GUI\heatmap_pvalue.pdf`
- **Target**: `images/heatmap_pvalue.png`
- **Description**: Success rate analysis across visual attributes
- **Priority**: 🔴 **CRITICAL** - Key experimental results

---

## Additional Figures in Your Workspace

### Method Overview (Alternative)
- **Source**: `d:\GUI\workflow.pdf` (older version)
- **Target**: `images/workflow_old.png`
- **Description**: Earlier pipeline diagram
- **Note**: Use `workflow_newnew.pdf` instead (see Priority section above)

### Click Distribution Visualizations

#### Booking.com
- **Source**: `d:\GUI\booking_first_original_clicks_visualization.pdf`
- **Target**: `images/booking_original_distribution.png`

- **Source**: `d:\GUI\booking_variant_distribution.pdf` (if exists)
- **Target**: `images/booking_variant_distribution.png`

#### Amazon
- **Source**: `d:\GUI\amazon_top_click_distribution.png` (already PNG!)
- **Target**: Copy directly to `images/amazon_distribution.png`

#### eBay
- **Source**: `d:\GUI\click_heatmap_ebay2_original_updated.png` (already PNG!)
- **Target**: Copy directly to `images/ebay_distribution.png`

#### NPR
- **Source**: `d:\GUI\click_heatmap_npr_original.png` (already PNG!)
- **Target**: Copy directly to `images/npr_distribution.png`

### Heatmaps
- **Source**: `d:\GUI\heatmap_pvalue.pdf` ⭐ **PRIORITY**
- **Target**: `images/heatmap_pvalue.png`
- **Note**: This is the PRIMARY results figure

- **Source**: `d:\GUI\heatmap_final.pdf`
- **Target**: `images/heatmap_final.png`

- **Source**: `d:\GUI\HEATMAP_BEST.png` (already PNG!)
- **Target**: Copy to `images/heatmap_best.png`

- **Source**: `d:\GUI\HEATMAP_WORST.png` (already PNG!)
- **Target**: Copy to `images/heatmap_worst.png`

## Quick Copy Commands (PowerShell)

Run these commands from the `webagentslook_website` directory:

```powershell
# Create images directory if not exists
New-Item -ItemType Directory -Force -Path images

# Copy existing PNG files
Copy-Item ..\amazon_top_click_distribution.png images\amazon_distribution.png
Copy-Item ..\click_heatmap_ebay2_original_updated.png images\ebay_distribution.png
Copy-Item ..\click_heatmap_npr_original.png images\npr_distribution.png
Copy-Item ..\HEATMAP_BEST.png images\heatmap_best.png
Copy-Item ..\HEATMAP_WORST.png images\heatmap_worst.png

# For booking PNG (if exists)
Copy-Item ..\click_heatmap_booking_first_original.png images\booking_original.png
```

## PDF to PNG Conversion

### Method 1: Online Conversion
1. Go to https://www.ilovepdf.com/pdf_to_jpg or https://smallpdf.com/pdf-to-jpg
2. Upload PDF files
3. Download as PNG
4. Rename and place in `images/` folder

### Method 2: Using Adobe Acrobat/Reader
1. Open PDF in Acrobat
2. File → Export To → Image → PNG
3. Save to `images/` folder

### Method 3: Using Python (if you have Pillow and pdf2image)
```python
from pdf2image import convert_from_path

# Convert workflow
images = convert_from_path('workflow.pdf', dpi=300)
images[0].save('webagentslook_website/images/workflow.png', 'PNG')

# Convert heatmap
images = convert_from_path('heatmap_pvalue.pdf', dpi=300)
images[0].save('webagentslook_website/images/heatmap_pvalue.png', 'PNG')
```

### Method 4: Using PowerShell/Magick (ImageMagick)
```powershell
# Install ImageMagick first: https://imagemagick.org/script/download.php

# PRIORITY: Convert the two essential figures
cd d:\GUI
magick convert -density 300 workflow_newnew.pdf webagentslook_website\images\workflow.png
magick convert -density 300 heatmap_pvalue.pdf webagentslook_website\images\heatmap_pvalue.png

# Optional: Convert older versions
magick convert -density 300 workflow.pdf webagentslook_website\images\workflow_old.png
```

## Recommended Image Sizes

- **Workflow diagram**: 1200px wide
- **Click distributions**: 800-1000px wide
- **Heatmaps**: 1000-1200px wide
- **General figures**: 800-1000px wide

Keep file sizes under 500KB for fast loading.
