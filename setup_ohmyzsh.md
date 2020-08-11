Working Environment Setup
=========================

# Install Iterm2
- First things first, get iterm2 up and running.
- Install the color profile micah.itermcolors
	- Personal color scheme.
- Install the shell profile micah-iterm2profile.json
	- Sets up borderless, top-centre aligned window with tabs on the left.
- Install the keymaps micah.itermkeymap
	- This enables cmd+del/arrows and opt+del/arrows to move/delete words or lines.
- Set up Keys -> Hotkey -> opt+space
	- Global hotkey for toggling visibility of iterm.

# Install Homebrew
- `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`

# Install Oh-My-Zsh
- Install Zsh
	- `brew install zsh`
	- `chsh -s /usr/local/bin/zsh`
- Install Oh-My-Zsh
	- `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
	- Copy zshrc.txt into ~/.zshrc
- Install PowerLevel10k Theme
	- Method 1
		- `git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k`
	- Method 2
		- `brew install romkatv/powerlevel10k/powerlevel10k`
		- `echo 'source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc`
	- Follow the configuration steps on startup.
	- Copy p10k.zsh.txt into ~/.p10k.zsh
- Plugins:
	- `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

# Configuring Git
- The following commands will set git up for credentials with 2fa in mind.
	- `git config --global user.name "FirstName LastName"`
	- `git config --global user.email "email@domain.com"`
	- `git config --global credential.helper osxkeychain`
	- Account settings -> Developer Settings -> Generate key

# Installing Python
- `brew install python`
	- If running into problems where brew python is not found, run: `brew link python@3.8`.
	- Possibly need `brew link --overwrite python@3.8` (use with --dry-run option first).
- `pip3 install virtualenv`
- `pip3 install virtualenvwrapper`
- Export appropriate virtualenv commands (or copy them from .zshrc config)

# Sublime Text 3
- Create zsh alias (subl):
	- `ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl`
- Install Package Control
- Drop themes and color schemes into packages folder.