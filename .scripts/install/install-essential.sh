
#--> shell 
sudo pacman -S fish --noconfirm
curl -L https://get.oh-my.fish | fish
fish -c "omf install bobthefish"
fish -C "omf theme bobthefish"


#--> set mirrors
sudo pacman-mirrors -c Germany ;sudo pacman -Syu yay --noconfirm

#--> install programs
yay -S base             --noconfirm
yay -S base-devel       --noconfirm
yay -S tldr             --noconfirm
yay -S chromium         --noconfirm
yay -S cmake            --noconfirm
yay -S xclip            --noconfirm
yay -S xsel             --noconfirm
yay -S neovim           --noconfirm
yay -S fzf              --noconfirm
yay -S alacritty        --noconfirm
yay -S tmux             --noconfirm
yay -S tmuxinator       --noconfirm
yay -S ranger           --noconfirm
yay -S ueberzug         --noconfirm
yay -S googler          --noconfirm
yay -S translate-shell  --noconfirm
