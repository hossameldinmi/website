#!/bin/bash

# Script to help update local repository after renaming on GitHub
# This script should be run AFTER renaming the repository on GitHub from "website" to "hossameldinmi.github.io"

set -e

echo "=========================================="
echo "Repository Rename Helper Script"
echo "=========================================="
echo ""
echo "⚠️  IMPORTANT: This script assumes you have already renamed the repository on GitHub!"
echo ""
echo "Steps to rename repository on GitHub:"
echo "1. Go to: https://github.com/hossameldinmi/website"
echo "2. Click 'Settings' in the top menu"
echo "3. Find 'Repository name' section"
echo "4. Change name from 'website' to 'hossameldinmi.github.io'"
echo "5. Click 'Rename'"
echo ""
read -p "Have you completed the rename on GitHub? (y/n) " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Please rename the repository on GitHub first, then run this script again."
    exit 1
fi

echo ""
echo "✅ Updating local repository configuration..."
echo ""

# Update remote URL
echo "📝 Updating remote URL..."
git remote set-url origin https://github.com/hossameldinmi/hossameldinmi.github.io.git

# Verify the change
echo "✅ Remote URL updated!"
echo ""
echo "Current remote configuration:"
git remote -v

echo ""
echo "=========================================="
echo "✅ Setup Complete!"
echo "=========================================="
echo ""
echo "Your repository is now configured for root domain deployment."
echo ""
echo "Next steps:"
echo "1. Push any change to trigger deployment:"
echo "   git add ."
echo "   git commit -m 'Update after repository rename'"
echo "   git push origin main"
echo ""
echo "2. Your site will be available at:"
echo "   https://hossameldinmi.github.io/"
echo ""
echo "3. Monitor deployment in the Actions tab:"
echo "   https://github.com/hossameldinmi/hossameldinmi.github.io/actions"
echo ""
