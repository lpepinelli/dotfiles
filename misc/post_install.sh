sudo pacman -Syu
sudo pacman -S alacritty --needed --noconfirm
sudo pacman -S nvidia-utils --needed --noconfirm
sudo pacman -S egl-wayland --needed --noconfirm
sudo pacman -S --needed base-devel git

mkdir ~/builds
cd ~/builds
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

paru -S hyprshot --needed --noconfirm
paru -S webcord --needed --noconfirm
paru -S 1password --needed --noconfirm
paru -S wlrobs-hg --needed --noconfirm
paru -S vesktop --needed --noconfirm
sudo pacman -S fastfetch --needed --noconfirm
paru -S hyprlock --needed --noconfirm
paru -S hypridle --needed --noconfirm
paru -S hyprpaper --needed --noconfirm
paru -S wlogout --needed --noconfirm
sudo pacman -S ttf-font-awesome --needed --noconfirm
sudo pacman -S zsh --needed --noconfirm
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


