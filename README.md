# WebAgentsLook Project Website

Official project page for "How do Visual Attributes Influence Web Agents? A Comprehensive Evaluation of User Interface Design Factors"

**Authors**: Kuai Yu², Naicheng Yu³, Han Wang¹, Rui Yang¹, Huan Zhang¹  
**Affiliations**:  
- ¹University of Illinois Urbana-Champaign  
- ²Columbia University  
- ³University of California San Diego  

**arXiv**: [2601.21961](https://arxiv.org/abs/2601.21961)

## 🌐 Live Demo

Visit the live site at: `https://<your-username>.github.io/webagentslook/`

## 📁 Directory Structure

```
webagentslook_website/
├── index.html              # Main HTML file
├── styles.css              # Stylesheet
├── script.js               # JavaScript for interactions
├── images/                 # Image assets
│   ├── workflow.png        # Method overview diagram
│   ├── booking_original_distribution.png
│   ├── booking_variant_distribution.png
│   └── heatmap_pvalue.png
├── .github/
│   └── workflows/
│       └── deploy.yml      # GitHub Actions deployment
├── deploy.bat              # Windows one-click deploy script
└── README.md               # This file
```

## 🖼️ Adding Images

### ⭐ Priority: Convert Essential Figures First

These two figures are **critical** for the website:

1. **Workflow Diagram** (Method overview)
   - Source: `d:\GUI\workflow_newnew.pdf`
   - Target: `images/workflow.png`
   
2. **Results Heatmap** (Key findings)
   - Source: `d:\GUI\heatmap_pvalue.pdf`
   - Target: `images/heatmap_pvalue.png`

**Quick Start**: Run `convert_pdfs.bat` for guided conversion.

### Conversion Methods

**Online (Easiest)**:
- Visit [ilovepdf.com/pdf_to_jpg](https://www.ilovepdf.com/pdf_to_jpg)
- Upload PDF, download as PNG, save to `images/` folder

**Adobe Acrobat**:
- File → Export To → Image → PNG (300 DPI)

**Python** (if you have pdf2image):
- Run `convert_pdfs.bat` and choose option to create Python script

### Optional Additional Images

After converting the priority figures, you can add more:

3. **booking_original_distribution.png** - Click distribution on original webpage
4. **booking_variant_distribution.png** - Click distribution on color variant

### Quick Copy Existing PNGs

Run `copy_images.bat` to automatically copy these existing PNG files from your workspace:
- Amazon, eBay, NPR click distributions
- Heatmap best/worst variants
- And more...

See `ASSETS.md` for complete list of available figures.

## ✏️ Customization

### Update Authors and Affiliations

Edit `index.html`, lines 21-32:

```html
<div class="authors">
  <span class="author">Your Name<sup>1</sup></span>
  <!-- Add more authors -->
</div>

<div class="affiliations">
  <div class="affiliation"><sup>1</sup>Your Institution</div>
</div>
```

### Update Links

Edit `index.html`, lines 35-48, replace `#` with actual URLs:

```html
<a href="https://arxiv.org/abs/2601.21961" ...>Paper</a>
<a href="https://github.com/your-repo" ...>Code</a>
<a href="https://your-data-link" ...>Data</a>
```

### Update Citation

Edit `index.html`, lines 159-165, update author names and details.

## 🚀 Deployment

### Method 1: One-Click Deploy (Windows)

1. Double-click `deploy.bat`
2. First time: Enter your GitHub repository URL when prompted
3. Wait for GitHub Actions to complete

### Method 2: Manual Deploy

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/<username>/<repo>.git
git push -u origin main
```

### GitHub Pages Setup

1. Go to repository **Settings** → **Pages**
2. Under "Build and deployment", select **GitHub Actions**
3. Wait a few minutes for deployment
4. Access your site at `https://<username>.github.io/<repo>/`

## 🎨 Color Scheme

The site uses a purple gradient theme. To customize colors, edit CSS variables in `styles.css`:

```css
:root {
  --primary-color: #2563eb;
  --primary-hover: #1d4ed8;
  /* ... */
}
```

## 📱 Responsive Design

The website is fully responsive and optimized for:
- Desktop (1920px+)
- Laptop (1366px)
- Tablet (768px)
- Mobile (375px)

## 🔧 Development

To preview locally:

1. Open `index.html` directly in a browser, or
2. Use a local server:
   ```bash
   python -m http.server 8000
   # Then visit http://localhost:8000
   ```

## 📄 License

This template is free to use for academic projects.

## 🙏 Acknowledgments

Based on standard academic project page templates used in computer vision and NLP research.
