# curl -o install.sh https://github.com/barwe/bashrc.d/blob/master/install.sh && . install.sh
git clone --depth 1 https://github.com/barwe/bashrc.d.git $HOME

if [ -z "$(grep BARWE_BASHRC_D $HOME/.bashrc)" ]; then
  echo -e '## BARWE_BASHRC_D' >> $HOME/.bashrc;
  echo -e '[ -d $HOME/bashrc.d ] && source $HOME/bashrc.d/bashrc.sh' >> $HOME/.bashrc;
fi

source $HOME/bashrc.d/bashrc.sh