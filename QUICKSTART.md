# 🚀 Quick Start Guide

Follow these steps to publish your WebAgentsLook project website to GitHub Pages.

## ✅ Step 1: Prepare Images

### ⭐ PRIORITY: Convert Two Essential Figures

These are the **MOST IMPORTANT** figures - convert them first:

1. **Workflow Diagram**: `workflow_newnew.pdf` → `images/workflow.png`
2. **Results Heatmap**: `heatmap_pvalue.pdf` → `images/heatmap_pvalue.png`

**Quick Start**: Double-click `convert_pdfs.bat` for guided conversion.

### Conversion Methods:

**Option A: Online (Easiest - No Install)**
1. Go to [ilovepdf.com/pdf_to_jpg](https://www.ilovepdf.com/pdf_to_jpg)
2. Upload `d:\GUI\workflow_newnew.pdf`
3. Download and save as `images/workflow.png`
4. Repeat for `d:\GUI\heatmap_pvalue.pdf` → `images/heatmap_pvalue.png`

**Option B: Adobe Acrobat**
- File → Export To → Image → PNG (300 DPI recommended)

**Option C: Python Script**
- Run `convert_pdfs.bat` and select 'y' to create conversion script

### Optional: Add More Images
Double-click `copy_images.bat` to copy existing PNG files from your workspace.

See `ASSETS.md` for complete list of available figures.

## ✏️ Step 2: Customize Content

### 2.1 Update Authors and Affiliations
Open `index.html` and edit lines 21-32:

```html
<div class="authors">
  <span class="author">Your Name<sup>1</sup></span>
  <span class="author">Co-author Name<sup>2</sup></span>
</div>

<div class="affiliations">
  <div class="affiliation"><sup>1</sup>Your University</div>
  <div class="affiliation"><sup>2</sup>Partner Institution</div>
</div>
```

### 2.2 Add Links to Code and Data
Edit lines 35-48 in `index.html`:

```html
<a href="https://github.com/yourusername/webagentslook" class="btn">
  <i class="fab fa-github"></i> Code
</a>
<a href="https://your-data-repository.com" class="btn">
  <i class="fas fa-database"></i> Data
</a>
```

### 2.3 Update Citation
Edit lines 159-169 in `index.html`:

```bibtex
@misc{yu2026visualattributesinfluenceweb,
  title={How do Visual Attributes Influence Web Agents? A Comprehensive Evaluation of User Interface Design Factors}, 
  author={Kuai Yu and Naicheng Yu and Han Wang and Rui Yang and Huan Zhang},
  year={2026},
  eprint={2601.21961},
  archivePrefix={arXiv},
  primaryClass={cs.AI},
  url={https://arxiv.org/abs/2601.21961}
}
```

## 🌐 Step 3: Deploy to GitHub Pages

### 3.1 Create GitHub Repository
1. Go to [github.com/new](https://github.com/new)
2. Repository name: `webagentslook` (or any name)
3. Choose **Public** (required for free GitHub Pages)
4. **DO NOT** initialize with README (leave empty)
5. Click "Create repository"

### 3.2 One-Click Deploy
1. Double-click `deploy.bat`
2. When prompted, enter your repository URL:
   ```
   https://github.com/yourusername/webagentslook.git
   ```
3. Wait for the script to complete

### 3.3 Enable GitHub Pages
1. Go to your repository on GitHub
2. Click **Settings** (top menu)
3. Click **Pages** (left sidebar)
4. Under "Build and deployment":
   - Source: Select **GitHub Actions**
5. Click **Save**

### 3.4 Wait for Deployment
1. Go to **Actions** tab in your repository
2. You'll see a workflow running "Deploy to GitHub Pages"
3. Wait 2-3 minutes for it to complete (green checkmark)

### 3.5 Access Your Site
Your website will be live at:
```
https://yourusername.github.io/webagentslook/
```

## 🔄 Step 4: Update Website Later

To make updates:
1. Edit files locally
2. Double-click `deploy.bat`
3. Your changes will be automatically deployed

## ⚠️ Troubleshooting

### "Git not found"
- Install Git: https://git-scm.com/download/win
- Restart your terminal/command prompt

### "Push failed"
- Check your GitHub credentials
- Ensure you have write access to the repository
- Try: `git config --global credential.helper wincred`

### "Images not showing"
- Verify the two priority images exist:
  - `images/workflow.png` (from workflow_newnew.pdf)
  - `images/heatmap_pvalue.png`
- Check file names match exactly (case-sensitive on GitHub)
- Verify images were committed: `git status`
- Clear browser cache: Ctrl+Shift+R

### "Site not updating"
- Check the Actions tab for build errors
- Clear browser cache: Ctrl+Shift+R
- Wait a few minutes for CDN to update

## 📝 Optional Customization

### Change Color Scheme
Edit `styles.css`, line 2-10:
```css
:root {
  --primary-color: #your-color;
  --primary-hover: #your-hover-color;
}
```

### Add More Sections
Copy any existing section in `index.html` and modify content.

### Add Video/Demo
Add this in the method section:
```html
<div class="video-container">
  <iframe src="https://www.youtube.com/embed/YOUR_VIDEO_ID" 
          frameborder="0" allowfullscreen></iframe>
</div>
```

## 📚 Resources

- **GitHub Pages Docs**: https://docs.github.com/pages
- **Markdown Guide**: https://www.markdownguide.org/
- **HTML/CSS Reference**: https://developer.mozilla.org/

## ✨ Tips

- Use clear, high-quality images (PNG for diagrams, JPG for photos)
- Keep page load under 3 seconds (optimize images)
- Test on mobile devices
- Add alt text to images for accessibility
- Update meta description for SEO

## 🎉 Done!

Your WebAgentsLook project website is now live and ready to share with the research community!

Share your link on:
- arXiv paper page
- Twitter/Conference announcements
- Lab website
- Email signature
