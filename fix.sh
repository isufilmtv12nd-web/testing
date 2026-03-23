#!/bin/bash

echo "=== Git 狀態 ==="
cd /workspaces/testing
git status

echo -e "\n=== 檢查 LOGO們 檔案夾 ==="
ls -la "LOGO們/"

echo -e "\n=== Git 追蹤狀態 ==="
git ls-files | grep "LOGO們" || echo "❌ LOGO們 檔案尚未被 git 追蹤！"

echo -e "\n=== 添加所有檔案 ==="
git config --global user.email "build@testing.local"
git config --global user.name "GitHub Pages Builder"
git add -A
git add "LOGO們/"
git status

echo -e "\n=== 提交 ==="
git commit -m "Add: ensure all image files and HTML pages are tracked" || echo "沒有新更改"

echo -e "\n=== 推送 ==="
git push origin main

echo -e "\n=== 完成 ==="
echo "✅ 所有檔案已推送到 GitHub"
