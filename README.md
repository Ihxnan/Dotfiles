# Dotfiles

- A collection of my personal configuration files and dotfiles for system setup and tool preferences.

---

### System Requirements

- npm
- nodejs
- curl
- git

---

### Installation

please download [git](https://git-scm.com/) first.

<details>
<summary> git install </summary>

##### manjaro

If there is no update source,
please run ```sudo sh ./scripts/manjaro_config.sh``` before executing the following commands.

```
sudo pacman -Syyu
sudo pacman -S git
```
##### ubuntu
```
sudo apt update && sudo apt upgrade -y
sudo apt install git -y
```

</details>

```
git clone https://github.com/Ihxnan/Dotfiles.git
cd Dotfiles
```

#### manjaro
```
sudo sh ./scripts/manjaro.sh
```
#### manjaro_i3
```
sudo sh ./scripts/manjaro_i3.sh
```
#### ubuntu
```
sudo sh ./scripts/ubuntu.sh
```

---

### File Tree
````
dotfiles/
├── .i3/
│   └── config               # i3 窗口管理器配置
├── alacritty/
│   └── alacritty.toml       # Alacritty 终端模拟器设置
├── nvim/
│   ├── coc-settings.json    # CoC（代码补全工具）配置
│   └── init.vim             # Neovim 主配置文件
├── ranger/
│   ├── commands.py          # Ranger 文件管理器自定义命令
│   ├── devicons.py          # Ranger 图标配置
│   ├── rc.conf              # Ranger 主配置文件
│   └── scope.sh             # Ranger 文件预览脚本
└── scripts/
    ├── vim-plug.sh          # Vim 插件管理器安装脚本
    └── manjaro_config.sh    # Manjaro 系统专属配置脚本
