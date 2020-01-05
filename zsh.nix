{ pkgs, ... }:
{
programs.zsh = {

  enable = true;

  interactiveShellInit = ''
  export ZSH=${pkgs.oh-my-zsh}/share/oh-my-zsh/

# Customize your oh-my-zsh options here
   ZSH_THEME="maran"
   plugins=(git catimg)

   alias abcde="abcde -c ~/git/configs/abcde.conf"
   alias docker="sudo docker"
   alias rebuildnow="sudo nix-channel --update && sudo nixos-rebuild switch --upgrade"
   alias ydl='youtube-dl -x --audio-format "opus" --audio-quality 0 -o "~/music/%(title)s.%(ext)s"'
   alias rgrep="grep -r"
   alias adpdf="asciidoctor -r asciidoctor-pdf -b pdf -a pdf-style='theme.yml'"
   alias torb="tor-browser &"
   alias mountdata="if ! grep -qs '/mnt/data-drive' /proc/mounts; then sudo cryptsetup luksOpen /dev/disk/by-uuid/6ed8cf7b-1fb2-4dad-9648-14adb275e8f7 data-drive && sudo mount /dev/mapper/data-drive /mnt/data-drive;fi"

   bindkey "''${terminfo[khome]}" beginning-of-line
   bindkey "''${terminfo[kend]}" end-of-line

   # Fix locale warnings
   export LANG="en_US.UTF-8"
   export LC_ALL="en_US.UTF-8"
   export LANGUAGE="en_US.UTF-8"
   export LC_CTYPE="en_US.UTF-8"

   source $ZSH/oh-my-zsh.sh
   byobu
   '';

   promptInit = ""; # Clear this to avoid a conflict with oh-my-zsh
};
}
