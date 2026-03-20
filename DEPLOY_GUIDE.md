# 🚀 GitHub 部署快速指南

## 最简单方法（推荐）⭐

### 第1步：创建 GitHub 仓库
1. 访问 https://github.com/new
2. 填写仓库信息：
   - **Repository name**: `webagentslook`（或其他名称）
   - **Visibility**: 选择 **Public**（GitHub Pages 免费版需要公开）
   - ⚠️ **不要**勾选 "Add a README file"
3. 点击 **Create repository**

### 第2步：运行部署脚本
在当前文件夹右键选择"在终端中打开"，或者：

```powershell
cd d:\GUI\webagentslook_website
.\deploy.bat
```

按提示输入仓库地址（示例）：
```
https://github.com/你的用户名/webagentslook.git
```

### 第3步：启用 GitHub Pages
1. 在 GitHub 打开你的仓库
2. 点击 **Settings** 标签页
3. 左侧菜单点击 **Pages**
4. 在 "Build and deployment" 下：
   - **Source**: 选择 **GitHub Actions**
5. 保存

### 第4步：等待部署
- 点击仓库的 **Actions** 标签页
- 查看 "Deploy to GitHub Pages" 工作流
- 等待绿色✓（约2-3分钟）

### 第5步：访问网站
你的网站地址：
```
https://你的用户名.github.io/仓库名/
```

例如：`https://johndoe.github.io/webagentslook/`

---

## 手动方法（高级用户）

### 使用 Git 命令

```bash
# 进入项目目录
cd d:\GUI\webagentslook_website

# 初始化 Git 仓库
git init

# 添加所有文件
git add .

# 创建提交
git commit -m "Initial commit: WebAgentsLook project page"

# 设置主分支为 main
git branch -M main

# 添加远程仓库（替换为你的仓库地址）
git remote add origin https://github.com/你的用户名/仓库名.git

# 推送到 GitHub
git push -u origin main
```

---

## ⚠️ 常见问题

### 问题1：提示 'git' 不是内部或外部命令

**解决方案**：需要安装 Git
- 下载：https://git-scm.com/download/win
- 安装后重启终端

### 问题2：认证失败 (Authentication failed)

**解决方案**：使用个人访问令牌（Personal Access Token）

1. 访问 https://github.com/settings/tokens
2. 点击 **Generate new token (classic)**
3. 勾选 **repo** 权限
4. 复制生成的 token
5. 推送时使用 token 作为密码

### 问题3：推送被拒绝 (Push rejected)

**原因**：远程仓库不是空的（包含 README 等文件）

**解决方案A**：重新创建空仓库  
**解决方案B**：强制推送（会覆盖远程）
```bash
git push -u origin main --force
```

### 问题4：网站404错误

**检查清单**：
- ✅ GitHub Pages 已启用
- ✅ Source 选择了 "GitHub Actions"
- ✅ Actions 工作流已成功运行
- ✅ 等待3-5分钟（DNS传播）

---

## 📝 更新网站内容

修改内容后重新部署：

```bash
cd d:\GUI\webagentslook_website
.\deploy.bat
```

或手动：
```bash
git add .
git commit -m "Update content"
git push
```

---

## 🔗 有用的链接

- **GitHub Pages 文档**: https://docs.github.com/pages
- **Git 下载**: https://git-scm.com/download/win
- **Personal Access Tokens**: https://github.com/settings/tokens

---

## ✨ 快速检查

部署成功后，你的网站应该包含：
- ✅ 完整的论文标题和作者信息
- ✅ 嵌入的 PDF（workflow 和 heatmap）
- ✅ 10+ 张可视化图片
- ✅ 可复制的 BibTeX 引用
- ✅ 响应式设计（手机/平板/电脑）

---

**祝部署顺利！** 🎉

如有问题，检查 `QUICKSTART.md` 获取更多细节。
