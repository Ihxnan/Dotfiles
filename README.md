# Dotfiles

#### 个人系统配置与工具偏好的配置文件集合

这个仓库包含了我日常使用的各种工具和系统的配置文件，便于在新环境中快速部署个人工作流。

---

## 前置要求
在使用前，请确保系统以安装以下工具：
- [Git](https://git-scm.com/downloads)

---

## 安装步骤

1. 克隆仓库到本地

    首先，通过 git 命令将 Dotfiles 仓库克隆到本地计算机，并进入仓库目录（后续所有操作均在此目录下执行）
```sh
git clone https://github.com/Ihxnan/Dotfiles.git
cd Dotfiles
```

2. 安装使用的软件(按系统版本选择)

    根据你的 Linux 发行版（Arch 或 Debian 系列，如 Ubuntu、Deepin 等），执行对应的脚本安装所需软件。

- arch 系列系统
```sh
bash ./scripts/arch.sh
```
- debian 系列系统
```sh
bash ./scripts/debian.sh
```

3. 部署配置文件

    执行 setup 脚本，将配置文件链接到系统对应目录

```sh
bash setup.sh
```
---

## 注意

1. 软件安装后需补充操作：执行完步骤 2 中的 bash ./scripts/***.sh（*** 为 arch 或 debian）后，脚本最后会提示输入密码，务必完成密码输入，此操作用于修改系统默认 Shell（确保后续配置生效）。
2. 配置文件安装后需重启：执行完步骤 3 的 bash setup.sh 后，必须重启系统，否则部分配置（如 Shell、窗口管理器等）无法加载。
3. Neovim 插件自动安装说明：系统重启后，首次打开 nvim（终端文本编辑器）时，lazy.nvim（插件管理器）会自动下载并安装所需插件。若安装过程中出现报错，无需额外操作，关闭并重新打开 nvim 即可完成剩余插件安装。

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
