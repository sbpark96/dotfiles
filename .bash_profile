# ~/.bash_profile: executed by bash for login shells.

# Source .bashrc if it exists
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Set PATH
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
