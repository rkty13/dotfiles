# Taken from https://github.com/mathiasbynens/dotfiles
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
PATH="/usr/texbin:${PATH}"
export PATH

[[ -s ~/.bashrc ]] && source ~/.bashrc
[[ -s ~/.hackbca ]] && source ~/.hackbca
[[ -s ~/.golang ]] && source ~/.golang

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/robertkim/Downloads/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/robertkim/Downloads/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/robertkim/Downloads/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/robertkim/Downloads/google-cloud-sdk/completion.bash.inc'
fi

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
