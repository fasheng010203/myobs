# 📝 MyOBS - 个人知识管理库

这是我的个人 Obsidian Vault 知识库，使用 Git 进行版本管理。

## 📋 概述

- **类型**: Obsidian Vault
- **用途**: 个人知识管理、笔记、项目文档
- **版本控制**: Git + GitHub
- **仓库地址**: https://github.com/fasheng010203/myobs.git

---

## 🚀 快速开始

### 克隆仓库

```bash
git clone https://github.com/fasheng010203/myobs.git
cd myobs
```

### 在 Obsidian 中打开

1. 打开 Obsidian
2. 选择 "打开文件夹作为 Vault"
3. 选择 `myobs` 文件夹

---

## 📁 目录结构

```
myobs/
├── .git/              # Git 版本控制
├── .gitignore         # Git 忽略规则
├── README.md          # 项目说明
└── [您的笔记文件]
```

---

## 🔄 Git 工作流程

### 添加新笔记

```bash
# 1. 查看修改状态
git status

# 2. 添加文件
git add .
# 或添加特定文件
git add 新笔记.md

# 3. 提交更改
git commit -m "添加新笔记：[标题]"

# 4. 推送到 GitHub
git push
```

### 同步到其他设备

```bash
# 拉取最新更改
git pull

# 如果有冲突，解决后提交
git add .
git commit -m "解决冲突"
git push
```

---

## 🔧 配置

### Git 用户信息

```bash
# 设置全局用户名
git config --global user.name "Your Name"

# 设置全局邮箱
git config --global user.email "your_email@example.com"

# 查看当前配置
git config --list
```

### .gitignore

已配置忽略以下文件：
- `node_modules/` - 依赖包
- `out/`, `dist/` - 构建输出
- `.DS_Store` - macOS 系统文件
- `*.log` - 日志文件
- 环境变量文件
- IDE 配置文件

---

## 📊 常用命令

### 查看状态

```bash
git status              # 查看当前状态
git log                # 查看提交历史
git diff               # 查看未暂存的修改
```

### 撤销操作

```bash
git restore 文件.md     # 撤销文件的修改
git reset HEAD 文件.md  # 取消暂存
git reset --soft HEAD~1 # 撤销最后一次提交（保留修改）
```

### 分支管理

```bash
git branch              # 查看所有分支
git branch 新分支       # 创建新分支
git checkout 分支名     # 切换分支
git merge 分支名        # 合并分支
```

---

## 🎯 使用场景

### 场景 1：日常笔记同步

```bash
# 每天结束时
git add .
git commit -m "更新笔记 $(date +%Y-%m-%d)"
git push
```

### 场景 2：多设备同步

```bash
# 在新设备上首次使用
git clone https://github.com/fasheng010203/myobs.git

# 每次使用前
git pull

# 每次使用后
git add .
git commit -m "同步更新"
git push
```

### 场景 3：项目文档管理

```bash
# 为特定项目创建分支
git checkout -b project-x-docs

# 添加项目文档
git add project-x/
git commit -m "添加项目 X 文档"

# 合并回主分支
git checkout main
git merge project-x-docs
```

---

## 🛠️ 高级用法

### 使用 SSH 密钥（推荐）

```bash
# 生成 SSH 密钥
ssh-keygen -t ed25519

# 添加到 GitHub
# Settings → SSH and GPG keys → New SSH key

# 切换到 SSH URL
git remote set-url origin git@github.com:fasheng010203/myobs.git

# 现在 push 不需要密码
git push
```

### 自动化同步脚本

创建 `sync.sh`:

```bash
#!/bin/bash

# 拉取最新更改
git pull

# 添加所有修改
git add .

# 提交（带时间戳）
git commit -m "Auto sync $(date '+%Y-%m-%d %H:%M')"

# 推送到 GitHub
git push
```

使用：
```bash
chmod +x sync.sh
./sync.sh
```

---

## 📚 相关资源

- [Obsidian 官方文档](https://help.obsidian.md/)
- [Git 官方文档](https://git-scm.com/doc)
- [GitHub 官方文档](https://docs.github.com/)
- [Obsidian + Git 教程](https://publish.obsidian.md/)

---

## 🔐 隐私和安全

### 敏感信息

⚠️ **重要**：此仓库是公开的，不要提交：
- 密码、API 密钥
- 个人隐私信息
- 商业机密
- 他人隐私

如需存储敏感信息：
1. 使用私有仓库
2. 或使用 Obsidian 的加密插件
3. 或将敏感信息放在其他位置

### 私有仓库

如果需要私有仓库：

```bash
# 在 GitHub 创建私有仓库
# 然后更新远程 URL
git remote set-url origin https://github.com/fasheng010203/myobs-private.git
```

---

## 📝 许可证

MIT License

---

## 🙏 致谢

- Obsidian 团队
- Git 和 GitHub
- 所有贡献者

---

**最后更新**: 2026-01-31

**Happy Note-taking! 📝✨**
