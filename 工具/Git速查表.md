# Git 命令速查表

## 🚀 常用命令

### 基础操作

```bash
# 查看状态
git status

# 查看日志
git log
git log --oneline          # 简洁显示
git log --graph           # 图形化显示

# 查看差异
git diff                   # 工作目录 vs 暂存区
git diff --staged         # 暂存区 vs 上次提交
git diff HEAD~1           # 工作目录 vs 上次提交
```

### 添加和提交

```bash
# 添加所有修改
git add .

# 添加特定文件
git add 文件名.md

# 提交
git commit -m "提交说明"

# 添加并提交（一步完成）
git commit -am "提交说明"

# 修改最后一次提交
git commit --amend -m "新的提交说明"
```

### 推送和拉取

```bash
# 推送到远程
git push

# 拉取远程更新
git pull

# 拉取（rebase 方式）
git pull --rebase

# 获取远程更新但不合并
git fetch
```

---

## 🔧 撤销操作

### 撤销工作目录修改

```bash
# 撤销单个文件的修改
git restore 文件名.md

# 撤销所有修改
git restore .

# 撤销未跟踪的文件
git clean -f
```

### 撤销暂存区修改

```bash
# 取消暂存单个文件
git reset HEAD 文件名.md

# 取消暂存所有文件
git reset HEAD
```

### 撤销提交

```bash
# 撤销最后一次提交（保留修改）
git reset --soft HEAD~1

# 撤销最后一次提交（丢弃修改）
git reset --hard HEAD~1

# 回滚到指定提交
git reset --hard <commit-hash>
```

---

## 📊 分支管理

### 查看和创建

```bash
# 查看所有分支
git branch

# 查看远程分支
git branch -r

# 创建新分支
git branch 分支名

# 创建并切换到新分支
git checkout -b 分支名
```

### 切换和合并

```bash
# 切换分支
git checkout 分支名

# 合并分支
git merge 分支名

# 删除分支
git branch -d 分支名

# 强制删除分支
git branch -D 分支名
```

---

## 🏷️ 标签管理

```bash
# 列出所有标签
git tag

# 创建标签
git tag v1.0.0

# 推送标签到远程
git push origin v1.0.0

# 推送所有标签
git push origin --tags
```

---

## 🔍 查看历史

```bash
# 查看提交历史
git log

# 查看某个文件的历史
git log 文件名.md

# 查看某行代码是谁修改的
git blame 文件名.md

# 查看提交详情
git show <commit-hash>
```

---

## 💾 存储和清理

```bash
# 暂存当前工作（临时保存）
git stash

# 查看暂存列表
git stash list

# 恢复最近一次暂存
git stash pop

# 恢复指定暂存
git stash apply stash@{0}

# 删除暂存
git stash drop stash@{0}
```

---

## 🌐 远程操作

```bash
# 查看远程仓库
git remote -v

# 添加远程仓库
git remote add origin https://github.com/user/repo.git

# 修改远程仓库 URL
git remote set-url origin <new-url>

# 查看远程分支信息
git remote show origin
```

---

## 🎨 配置

```bash
# 查看配置
git config --list

# 设置用户名
git config --global user.name "Your Name"

# 设置邮箱
git config --global user.email "your@email.com"

# 设置默认编辑器
git config --global core.editor "vim"

# 设置别名
git config --global alias.st status
git config --global alias.co checkout
```

---

## 🆘 常见问题

### 撤销已经推送的提交

```bash
# 1. 回滚本地
git reset --hard HEAD~1

# 2. 强制推送
git push -f
```

### 解决合并冲突

```bash
# 1. 编辑冲突文件
# 2. 添加解决后的文件
git add 冲突文件.md
# 3. 完成合并
git commit
```

### 清理未跟踪的文件

```bash
# 预览会删除哪些文件
git clean -n

# 删除未跟踪的文件
git clean -f

# 删除未跟踪的文件和目录
git clean -fd
```

---

## 📝 MyOBS 常用命令

### 日常同步

```bash
cd myobs
git add .
git commit -m "更新笔记"
git push
```

### 一键同步（使用脚本）

```bash
cd myobs/工具
chmod +x 快速同步脚本.sh
./快速同步脚本.sh
```

### 查看修改

```bash
cd myobs
git status
git diff
```

---

## 🔗 相关资源

- [Git 官方文档](https://git-scm.com/docs)
- [GitHub 官方文档](https://docs.github.com/)
- [Pro Git 中文版](https://git-scm.com/book/zh/v2)

---

**最后更新**: 2026-01-31
