defaults write com.apple.dashboard mcx-disabled -boolean YES
defaults write com.apple.dock mcx-expose-disabled -bool TRUE
defaults write com.apple.Dock autohide-delay -float 10 
killall Dock
