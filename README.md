# Professional CV Website

A modern, responsive CV/Portfolio website built with Flutter Web.

## 🌐 Live Demo

Visit the live website at: [https://hossameldinmi.github.io](https://hossameldinmi.github.io)

## ⚠️ Important: Repository Name for Root Domain Deployment

**To deploy your website at the root domain** (`https://hossameldinmi.github.io/`) **instead of a subdirectory** (`https://hossameldinmi.github.io/website/`), **you must rename this repository to `hossameldinmi.github.io`**.

### Why is this necessary?

GitHub Pages has two types of sites:
- **User/Organization Sites**: Served at `https://username.github.io/` - requires repository named `username.github.io`
- **Project Sites**: Served at `https://username.github.io/repository-name/` - any other repository name

### How to rename the repository:

1. Go to your repository on GitHub
2. Click **Settings** (top menu)
3. Scroll to **Repository name** section
4. Change the name from `website` to `hossameldinmi.github.io`
5. Click **Rename**
6. Run `./update-after-rename.sh` to update your local repository

After renaming, your site will automatically deploy to `https://hossameldinmi.github.io/` instead of `https://hossameldinmi.github.io/website/`.

> **Note**: The current configuration (`--base-href "/"`) is already set correctly for root domain deployment. No code changes are needed - only the repository rename!

## 🚀 Deployment to GitHub Pages

> **📖 For detailed deployment instructions and troubleshooting, see [DEPLOYMENT.md](DEPLOYMENT.md)**

### Method 1: Automatic Deployment (Recommended)

The website automatically deploys to GitHub Pages when you push to the `main` branch.

1. **Commit your changes:**
   ```bash
   git add .
   git commit -m "Update website content"
   git push origin main
   ```

2. **GitHub Actions will automatically:**
   - Build your Flutter web app
   - Deploy to GitHub Pages
   - Your site will be live in 2-3 minutes

3. **Enable GitHub Pages (First time only):**
   - Go to your repository on GitHub
   - Click **Settings** → **Pages**
   - Under **Source**, select **GitHub Actions**
   - The workflow will automatically deploy on the next push

### Method 2: Manual Deployment

Use the deployment script:

```bash
./deploy.sh
```

Then push the changes:

```bash
git add .
git commit -m "Deploy website"
git push origin main
```

### Method 3: Manual Build and Deploy

```bash
# Build the web app
flutter build web --release --base-href "/"

# The build output is in build/web/
# Push to GitHub and the workflow will deploy it
```

## 📝 Updating Content

All resume data is centralized in `lib/resume_data.dart`. To update:

1. Edit `lib/resume_data.dart`
2. Save the file
3. Commit and push to GitHub
4. The site will auto-deploy with your changes

## 🛠️ Local Development

```bash
# Install dependencies
flutter pub get

# Run locally
flutter run -d chrome

# Or specify a port
flutter run -d chrome --web-port=8080
```

## 📦 Project Structure

```
lib/
├── main.dart          # Main application and UI
└── resume_data.dart   # All resume/CV data

.github/
└── workflows/
    └── deploy.yml     # GitHub Actions deployment workflow

web/
└── index.html        # HTML entry point
```

## 🎨 Features

- ✅ Responsive design (mobile, tablet, desktop)
- ✅ Animated transitions and effects
- ✅ Professional summary section
- ✅ Skills showcase
- ✅ Work experience timeline
- ✅ Open-source projects portfolio
- ✅ Contact information with clickable links
- ✅ Auto-deployment to GitHub Pages

## 🔧 Technologies

- **Flutter** - UI framework
- **Dart** - Programming language
- **Google Fonts** - Typography
- **Animated Text Kit** - Text animations
- **GitHub Pages** - Hosting
- **GitHub Actions** - CI/CD

## 🔍 Troubleshooting

### Site deployed to `/website/` path instead of root domain

**Problem**: Your site is accessible at `https://hossameldinmi.github.io/website/` instead of `https://hossameldinmi.github.io/`

**Solution**: Rename your repository from `website` to `hossameldinmi.github.io`

GitHub Pages requires the repository to be named `username.github.io` for root domain deployment. See the [Repository Name section](#%EF%B8%8F-important-repository-name-for-root-domain-deployment) above for detailed instructions.

### Site not updating after push

**Problem**: Changes aren't reflected on the live site

**Solutions**:
1. Check the **Actions** tab in your repository to verify the workflow completed successfully
2. Clear your browser cache (Ctrl+Shift+R or Cmd+Shift+R)
3. Wait 2-3 minutes for GitHub Pages to propagate changes
4. Verify GitHub Pages is enabled in **Settings** → **Pages** → **Source** → **GitHub Actions**

### Build failing in GitHub Actions

**Problem**: The deployment workflow fails

**Solutions**:
1. Check the workflow logs in the **Actions** tab
2. Verify `pubspec.yaml` dependencies are correct
3. Ensure Flutter version in `.github/workflows/deploy.yml` is compatible
4. Try running `flutter build web --release` locally to identify issues

## 📄 License

© 2024 Hossam Eldin Mahmoud. All rights reserved.

## 🤝 Contact

- Email: hossameldinmi@gmail.com
- LinkedIn: [linkedin.com/in/hossameldinmi](https://linkedin.com/in/hossameldinmi)
- GitHub: [github.com/hossameldinmi](https://github.com/hossameldinmi)