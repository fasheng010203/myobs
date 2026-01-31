#!/bin/bash

# ============================================
# MyOBS 快速同步脚本
# ============================================
# 用途：一键同步 MyOBS 笔记到 GitHub
# 使用：./快速同步脚本.sh

set -e  # 遇到错误立即退出

# 切换到脚本所在目录
cd "$(dirname "$0")/.."

echo "🔄 MyOBS 快速同步工具"
echo "====================="
echo ""

# 检查是否有修改
if [ -z "$(git status --porcelain)" ]; then
    echo "✅ 没有需要提交的更改"
    echo "   工作目录是干净的"
    exit 0
fi

# 显示修改状态
echo "📊 当前修改："
git status --short
echo ""

# 拉取远程更新
echo "📥 拉取远程更新..."
git pull --rebase --stat
echo ""

# 添加所有修改
echo "➕ 添加所有修改..."
git add .
echo ""

# 提交（带时间戳）
TIMESTAMP=$(date '+%Y-%m-%d %H:%M')
echo "💾 提交更改..."
git commit -m "Auto sync: $TIMESTAMP"
echo ""

# 推送到 GitHub
echo "📤 推送到 GitHub..."
git push
echo ""

echo "✅ 同步完成！"
echo "📊 当前分支：$(git branch --show-current)"
echo "🕐 同步时间：$TIMESTAMP"
