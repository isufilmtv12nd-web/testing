#!/bin/bash
# 重要：此腳本確保所有檔案都被正確追蹤和推送到 GitHub

cd /workspaces/testing

# 配置 git
git config user.email "build@test.local"
git config user.name "GitHub Pages"

# 強制添加所有檔案，包括 LOGO們 資料夾中的圖片
echo "📁 添加所有檔案..."
git add carousel.html
git add index.html  
git add transparent-3.html
git add test.html
git add status.html
git add "LOGO們/"
git add -f "LOGO們/主視覺logo.png"
git add -f "LOGO們/透明的孩子3.png"
git add -f "LOGO們/透明的孩子s.png"

# 查看狀態
echo -e "\n✅ 當前狀態："
git status

# 提交
echo -e "\n📝 提交檔案..."
git commit -m "Ensure: all image files and HTML pages in LOGO們 folder are tracked"

# 推送
echo -e "\n🚀 推送到 GitHub..."
git push origin main -f

echo -e "\n✨ 完成！"
echo "訪問: https://isufilmtv12nd-web.github.io/testing/status.html"
