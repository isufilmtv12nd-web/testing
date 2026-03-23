#!/bin/bash
cd /workspaces/testing
git config --global user.email "test@example.com"
git config --global user.name "Test User"
git add carousel.html index.html transparent-3.html test.html push.sh
git commit -m "Fix: use relative paths for GitHub Pages instead of raw.githubusercontent.com"
git push origin main 2>&1
