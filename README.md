# Dotfiles

This is my personal dotfiles repository. It contains my configuration files for various applications and utilities. i am using manjaro linux so i am not sure if it will work on other distros or not. i will update this readme as i add more files.and try to make it more readable.

I might add an install script for my dotfiles in the future. but for now, i will just keep it as a readme file. so before we start clone this repo to your home directory.

```bash
git clone https://github.com/mr-mahmood/dotfiles.git
```

now lets start, shall we?

## apps

This are the apps i am using and i have added a part for config and install it. so click on every one of them that you like but i suggest you to follow the way that i add.

- [hyperland](#hyperland)
- [kitty](#kitty)
- [fish](#fish)
- [nvim](#nvim)
- [starship](#starship)
- [tmux](#tmux)
- [waybar](#waybar)
- [waypaper](#waypaper)
- [wofi](#wofi)

## hyperland

This is my personal configuration for hyperland. i am using it for my daily work. and it is amazing as i personalize it for my self, for install it first we need to install **[hyprland](https://hyprland.org/)** it self and **[kitty](https://github.com/kovidgoyal/kitty)** because hyprland use kitty as it`s default terminal

1. install kitty and hyprland and stow

```bash
sudo pacman -S kitty hyprland stow
```

2. after installing completed, log out of your gnome session or KDE session and log in to hyprland.

3. Now you are in hyprland and you see a screen like this:

![hyprland](./readme_images/hyprland-first-run-1.webp)
don't panic, it's just just original first run hyprland screen.

4. now we need to install our configurations for hyprland, so we will use stow to install it.

```bash
cd ~/dotfiles/hyprland
stow hyprland
```

5. hyprland config has multiple parts, so we need to install them one by one.
```bash
sudo pacman -S waybar hyprlock hyprpaper swww wofi
yay -S waypaper hyprshot swaync
```

> [!WARNING]  
> [yay](https://github.com/Jguer/yay) can be install using pacman, and if you find any problem using yay,
you can let me know in the issues section.
>
> using hyperland and other apps need some custome nerdfonts, so you need to install them. i provide fonts in my dotfiles use them


- [waybar](https://github.com/Alexays/Waybar) is a status bar for hyprland like this:

![waybar](./readme_images/waybar.png)

- [hyprlock](https://github.com/hyprwm/hyprlock) is a lock screen for hyprland, this is a example that i change it in my own prefer

![hyprlock](./readme_images/hyprlock.png)

- [hyprpaper](https://wiki.hyprland.org/Hypr-Ecosystem/hyprpaper/) is the official wallpaper utility for Hyprlands a wallpaper 
- [swww](https://github.com/LGFae/swww) is a window switcher that allow you to change wallpapers with cool animations.

![swww](./readme_images/grow.gif)

- [wofi](https://github.com/SimplyCEO/wofi) is a application launcher for wayland, it is a replacement for rofi.
- [waypaper](https://github.com/anufrievroman/waypaper) is a wallpaper GUI for hyprland and can be use to set your wallpapers.

![waypaper](./readme_images/waypaper.webp)

- [hyprshot](https://github.com/Gustash/Hyprshot) is a screenshot utility for hyprland
- [swaync](https://github.com/ErikReider/SwayNotificationCenter) is a notification daemon for hyprland

6. now lets add our wallpapers to hyprland, so we will use waypaper and hyprpaper to do that. but first lets add it to config directory and rest of it is automatic:
```bash
cd ~/dotfiles
stow backgrounds
```

so now we have installed all depentences and add configs for hyprland, now lets use it. and learn what we can do with it, if you installed hyprland and add configs to it, you should see something like this after a reboot:

![hyprland-after-install](./readme_images/hyprland.png)

it is beatiful, isn't it? now lets find out what we can do with it.

> [!INFO]
> Hyperland is a tiling window manager, therefore we can use keyboard without need of a mouse
and this will improve our productivity. by the way it's fun to use it so that's a very good thing.

once we are in hyprland, we can use some keybindings to open some apps, so lets see what we can do with this keybindings:

- super + q : open terminal(kitty, fish, etc)
- super + e : open file Manager
- super + f : open firefox
- super + t : cahnge wallpaper
- super + c : close active window
- super + m : exit hyprland
- print : take screenshot of a region
- shift + print : take screenshot of the whole screen

there is a lot more about hyprland and i leave it to you to explore it.
