# Dotfiles

#### 个人系统配置与工具偏好的配置文件集合

这个仓库包含了我日常使用的各种工具和系统的配置文件，便于在新环境中快速部署个人工作流。

---

## 前置要求
在使用前，请确保系统以安装以下工具：
- [Git](https://git-scm.com/downloads)

## 安装步骤

1. 克隆仓库到本地
```sh
git clone https://github.com/Ihxnan/Dotfiles.git
cd Dotfiles
```

2. 安装使用的软件

- arch
```sh
bash ./scripts/arch.sh
```
- debian
```sh
bash ./scripts/debian.sh
```

3. 安装.config 文件
```sh
# 执行安装
bash setup.sh
```
---

## 包含的配置

- **窗口管理器**：i3 配置（.i3/config）
- **终端**：Alacritty 配置（.config/alacritty/）
- **Shell**：Fish 配置（.config/fish/）
- **编辑器**：
  - Neovim 配置（.config/nvim/）
  - Vim 配置（.vimrc）
- **文件管理器**：Ranger 配置（.config/ranger/）
- **状态栏**：i3blocks 配置（.config/i3blocks/）
- **compositor**：Picom 配置（.config/picom.conf）
- **包管理器**：Pacman 配置（pacman.conf）
    - 不在setup.sh中
    - Arch系发行版可选择
    - `sudo sh ./scripts/pacman_conf.sh`

---

## 脚本说明

- `scripts/backup`：备份当前系统中的配置文件到仓库
- `scripts/submit`：提交更新到远程仓库

---
