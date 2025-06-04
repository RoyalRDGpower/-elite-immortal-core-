#!/data/data/com.termux/files/usr/bin/bash

# === GitHub Push Script by Supreme ===

cd ~/SupremeOps/scripts || exit

# Make sure Git is initialized
git init

# Add GitHub repo if not already added
git remote remove origin 2>/dev/null
git remote add origin https://github.com/RoyalRDGpower/-elite-immortal-core-.git
# Copy boot script to repo (if needed)
cp ~/.termux/boot/rdg_boot.sh ./rdg_boot.sh

# Stage changes
git add .

# Commit with timestamp
git commit -m "⚡ Boot script updated by SupremeRDG at $(date +'%Y-%m-%d %H:%M:%S')"

# Force push to main branch
git branch -M main
git push -f origin main

# Echo complete
echo "✅ GitHub push complete. Boot script synced to -elite-immortal-core-"
