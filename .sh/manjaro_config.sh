echo '[archlinuxcn]
SigLevel = Never
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch' >> /etc/pacman.conf

pacman-mirrors -c China

# 更新
pacman -Syyu

