bindkey -e

if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi

eval "$(starship init zsh)"
eval "$(direnv hook zsh)"

PATH=$PATH:/usr/sbin
export PATH=$HOME/.gem/ruby/3.2.0/bin:$PATH
