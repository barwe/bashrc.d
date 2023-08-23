# wget https://raw.githubusercontent.com/barwe/bashrc.d/master/install.sh && bash install.sh
git clone --depth 1 https://github.com/barwe/bashrc.d.git $HOME/bashrc.d

if [ -z "$(grep BARWE_BASHRC_D $HOME/.bashrc)" ]; then
  echo -e '## BARWE_BASHRC_D' >> $HOME/.bashrc;
  echo -e '[ -d $HOME/bashrc.d ] && source $HOME/bashrc.d/bashrc.sh' >> $HOME/.bashrc;
fi

source $HOME/bashrc.d/bashrc.sh