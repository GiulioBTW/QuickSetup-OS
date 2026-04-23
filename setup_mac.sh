#!/bin/bash

# --- Auto-elevazione Sudo ---
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "🍎 macOS Auto Setup Starter"
echo "---------------------------"

# 1. Installazione Homebrew (se manca)
if ! command -v brew &> /dev/null; then
    echo "📦 Installazione Homebrew..."
    /bin/bash -c "$(curl -fsSL https://githubusercontent.com)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# 2. Aggiornamento Homebrew
brew update

# 3. Installazione Applicazioni (Casks)
echo "🚀 Installazione applicazioni..."
apps=(
    google-chrome
    firefox
    vlc
    visual-studio-code
    iterm2
    7zip
    stats
)

for app in "${apps[@]}"; do
    echo "Installando $app..."
    brew install --cask $app --force
done

# 4. Tweak di Sistema (macOS Defaults)
echo "⚙️  Applicazione tweak di sistema..."
defaults write NSGlobalDomain AppleShowAllExtensions -bool true # Mostra estensioni
defaults write com.apple.finder ShowPathbar -bool true          # Barra percorso Finder
defaults write NSGlobalDomain AppleInterfaceStyle Dark          # Dark Mode
killall Finder

# 5. Aggiornamenti software Apple
echo "🔄 Controllo aggiornamenti macOS..."
sudo softwareupdate -ia

echo "✅ Setup completato!"
