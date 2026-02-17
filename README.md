
---

Here are some information about my setup:
- DE: Xfce4
- Terminal: kitty
- Shell: zsh
- Panel: Xfce4 Panel
- File Manager: Thunar
- Theme: Ant-Bloody
- Icons: gruvbox-plus-icon-pack
- Fonts: JetBrains-Mono
  
---

### 🍂 Installation(termux)

```bash
cd $HOME
pkg upgrade -y
pkg update -y
pkg install git -y
pkg install wget
wget https://raw.githubusercontent.com/3324343/xfce4-conf/refs/heads/main/scripts/termux-setup.sh
chmod +x termux-setup.sh
bash termux-setup.sh
```
