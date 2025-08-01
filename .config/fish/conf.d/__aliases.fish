for command in mount umount sv pacman updatedb su shutdown poweroff reboot
    alias $command "sudo $command"
end
set -e command

# Command Replacementt

alias cat bat
alias la 'eza --color=auto --group-directories-first -a'
alias lda 'eza --color=auto --group-directories-first -Da'
alias ld 'eza --color=auto --group-directories-first -D'
alias ll 'eza --color=auto --group-directories-first -l'
alias ls 'eza --color=auto --group-directories-first'

## Default Flags

alias cp "cp -v"
alias gemini "gemini -c \$HOME/gemini_cli_config.json"
alias lynx "lynx -cookies -cfg $HOME/.config/lynxrc"
alias mv "mv -v"
alias rclone "rclone --verbose"
alias rm "rm -v"
alias rsync "rsync -azrPl"
alias vidir "vidir --verbose"

## Command Shortcuts

alias ctrash 'gio trash --empty' # Wipe Trash Bin
alias dmenu "dmenu -b -nf '#ffffff' -nb '#000000' -sb '#1c1c1f' -sf '#7c5cff'" # Dmenu Coloring
alias historyc "rm \$HOME/.zsh_history" # Clear ZSH history
alias lg lazygit
alias lgd "lazygit -p \$HOME/dotfiles/"
alias mks "sudo make clean install"
alias nethunter 'nmap -v -sn 192.168.0.1/24 | grep -v "host down"' # Search for all open hosts
alias pushall "parallel git push ::: github forgejo origin"
alias rb "rebos gen current build"
alias rc "rebos gen commit $(date +%F%H%M)"
alias sshadb "adb forward tcp:8022 tcp:8022; ssh localhost -p 8022" # Use SSH over ADB
alias sx "sh \$HOME/.config/sxhkd/__sxhkd"
alias sxh 'nvim $HOME/.config/sxhkd/sxhkdrc' # Quick Access to System Bindings
alias v nvim

## Script Shortcuts

alias bb "bmark -r list | fzf -m | xargs -I {} xdg-open '{}' " # Shortcuts to interact with taskwarrior
alias fv "sh \$SCRIPTS/__flashcards.sh" # Flashcards in the CLI
alias jnd "jn journal day Journals/Daily" # Create daily note
alias o "\$HOME/scripts/__obsidian-helper.sh" # Obsidian Git Commands
alias rr ranger_cd # Change directory for ranger
alias s "\$HOME/.local/bin/search -s" # Search the web using Mullvad Leta
alias sm "\$HOME/.local/bin/sshmanager" # Easily access SSH hosts
alias tt "\$HOME/scripts/taskwarrior-helper" # Shortcuts to interact with taskwarrior

# Distros

## NixOS

alias nx "cd \$HOME/nix/; just"

## Termux

alias autoremove 'apt autoremove'
alias install 'pkg install'
alias remove 'pkg uninstall'
alias update 'pkg update'
alias upgrade 'pkg upgrade'
