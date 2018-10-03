alias la='ls -al'
alias ll='ls -l'
alias lla='ls -al'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jo/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/jo/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jo/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/jo/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# Android SDK
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools
export TERM=xterm-256color-italic
