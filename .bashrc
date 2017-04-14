# Taken from https://github.com/mathiasbynens/dotfiles
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,completion,bash_prompt}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

[[ -s ~/.golang ]] && source ~/.golang
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh
