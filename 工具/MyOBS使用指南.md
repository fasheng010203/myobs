# MyOBS 使用指南

## 📖 简介

MyOBS 是使用 Git + GitHub 管理的 Obsidian 知识库系统。

---

## 🎯 核心概念

### 仓库结构

```
myobs/                 # 根目录
├── .git/              # Git 版本控制
├── .gitignore         # 忽略规则
├── README.md          # 项目说明
├── 测试笔记-2026-01-31.md  # 示例笔记
└── 工具/              # 工具和脚本
    ├── 快速同步脚本.sh
    └── Git速查表.md
```

### Git 工作流

```
工作目录 → 暂存区 → 本地仓库 → 远程仓库
   ↓           ↓        ↓         ↓
  编辑      git add   git commit  git push
```

---

## 🚀 快速开始

### 第一次使用

1. **克隆仓库**
   ```bash
   git clone https://github.com/fasheng010203/myobs.git
   cd myobs
   ```

2. **在 Obsidian 中打开**
   - 打开 Obsidian
   - 选择 "打开文件夹作为 Vault"
   - 选择 `myobs` 文件夹

3. **开始记笔记**
   - 创建 `.md` 文件
   - 正常编辑和保存

### 日常使用

#### 步骤 1: 编辑笔记

在 Obsidian 中正常编辑笔记即可。

#### 步骤 2: 同步到 GitHub

**方式 A: 使用快速脚本**（推荐）

```bash
cd myobs/工具
./快速同步脚本.sh
```

**方式 B: 手动命令**

```bash
cd myobs
git add .
git commit -m "更新笔记"
git push
```

#### 步骤 3: 验证

访问 GitHub 查看：https://github.com/fasheng010203/myobs

---

## 📱 多设备使用

### 在新设备上设置

1. **安装 Obsidian**
   - 访问 https://obsidian.md/
   - 下载并安装

2. **克隆仓库**
   ```bash
   git clone https://github.com/fasheng010203/myobs.git
   ```

3. **打开仓库**
   - 在 Obsidian 中打开 `myobs` 文件夹

### 每次使用前

```bash
cd myobs
git pull
```

### 每次使用后

```bash
cd myobs
git add .
git commit -m "同步更新"
git push
```

---

## 🛠️ 工具说明

### 1. 快速同步脚本.sh

**位置**: `myobs/工具/快速同步脚本.sh`

**功能**: 一键同步所有笔记到 GitHub

**使用**:
```bash
cd myobs/工具
chmod +x 快速同步脚本.sh
./快速同步脚本.sh
```

**特点**:
- ✅ 自动检查修改
- ✅ 自动拉取远程更新
- ✅ 自动添加所有文件
- ✅ 自动提交并推送
- ✅ 显示详细的同步状态

### 2. Git速查表.md

**位置**: `myobs/工具/Git速查表.md`

**内容**:
- 常用 Git 命令
- 撤销操作
- 分支管理
- 常见问题解决

---

## 📝 笔记最佳实践

### 文件命名

- ✅ 使用有意义的名称
- ✅ 可以使用中文
- ✅ 包含日期便于归档
- ✅ 示例：`会议记录-2026-01-31.md`

### 目录组织

```
myobs/
├── 日记/              # 按日期的日记
├── 项目/             # 各个项目文档
├── 学习笔记/         # 学习资料
├── 工作相关/         # 工作文档
└── 工具/             # 工具和脚本
```

### 提交频率

- **频繁修改**: 每小时或每次重要修改后
- **日常使用**: 每天结束时
- **批量更新**: 完成一个主题后

### 提交信息规范

```bash
# 好的提交信息
git commit -m "添加新笔记：Python 基础语法"
git commit -m "更新会议记录：2026-01-31 团队会议"
git commit -m "fix: 修复拼写错误"
git commit -m "docs: 更新 README 文档"

# 不好的提交信息
git commit -m "update"
git commit -m "fix"
git commit -m "a"
```

---

## ⚠️ 注意事项

### 隐私和安全

⚠️ **重要**: 仓库是公开的，不要提交：

- ❌ 密码、API 密钥
- ❌ 个人身份证号
- ❌ 银行卡信息
- ❌ 商业机密
- ❌ 他人隐私

### 文件大小

- ✅ 笔记文件通常很小（KB 级别）
- ⚠️ 避免提交大文件（图片、视频）
- 💡 图片建议使用图床或外部链接

### 文件名

- ✅ 支持中文文件名
- ✅ 支持空格
- ⚠️ 避免特殊字符（如 `\`, `/`, `*`, `?`）
- 💡 建议使用 `-` 或 `_` 替代空格

---

## 🔧 高级用法

### 使用分支

```bash
# 为特定主题创建分支
git checkout -b 学习笔记

# 编辑笔记后提交
git add .
git commit -m "添加 Python 学习笔记"

# 合并回主分支
git checkout main
git merge 学习笔记

# 删除分支
git branch -d 学习笔记
```

### 查看历史

```bash
# 查看最近 5 次提交
git log --oneline -5

# 查看某个文件的修改历史
git log --follow 文件名.md

# 查看某次提交的详细内容
git show <commit-hash>
```

### 回滚版本

```bash
# 查看历史
git log --oneline

# 回滚到指定版本
git reset --hard <commit-hash>

# 强制推送（谨慎使用）
git push -f
```

---

## 🆘 故障排查

### 问题 1: 推送失败

**错误**: `Updates were rejected`

**解决**:
```bash
# 先拉取远程更新
git pull --rebase

# 再推送
git push
```

### 问题 2: 冲突

**错误**: `Automatic merge failed; fix conflicts`

**解决**:
1. 打开冲突文件
2. 查找 `<<<<<<<` 标记
3. 手动解决冲突
4. 保存文件
5. 添加并提交
   ```bash
   git add .
   git commit
   ```

### 问题 3: 忘记提交

**提示**: 定期运行快速同步脚本

**自动化**:
```bash
# 设置定时任务（macOS）
# 打开 "终端" → "偏好设置" → "描述文件"
# 添加以下内容：
# 每天晚上 10 点运行同步
# 0 22 * * * cd /path/to/myobs && ./工具/快速同步脚本.sh
```

---

## 📚 学习资源

### 官方文档
- [Obsidian 文档](https://help.obsidian.md/)
- [Git 官方文档](https://git-scm.com/docs)
- [GitHub 文档](https://docs.github.com/)

### 教程
- [Pro Git 中文版](https://git-scm.com/book/zh/v2)
- [Learn Git Branching](https://learngitbranching.js.org/)

### 社区
- [Obsidian 论坛](https://forum.obsidian.md/)
- [GitHub 社区](https://github.community/)

---

## 💡 最佳实践总结

1. **定期同步**: 每天或每次重要更新后同步
2. **清晰的提交信息**: 让历史更易理解
3. **使用分支**: 实验性内容使用分支
4. **备份重要**: GitHub 是最好的备份
5. **注意隐私**: 不要提交敏感信息

---

## 🎉 开始使用

现在您已经了解了 MyOBS 的使用方法，开始创建您的知识库吧！

**第一步**: 在 Obsidian 中创建第一个笔记
**第二步**: 使用快速同步脚本同步
**第三步**: 在 GitHub 上查看

**Happy Note-taking! 📝✨**
