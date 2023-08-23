# https://dnschecker.org/country/cn/#A/raw.githubusercontent.com
# sudo echo "185.199.110.133 raw.githubusercontent.com" >> /etc/hosts
# wget https://raw.githubusercontent.com/barwe/bashrc.d/master/install.sh && bash install.sh

[ -d "$HOME/bashrc.d" ] && rm -rf $HOME/bashrc.d
git clone --depth 1 https://github.com/barwe/bashrc.d.git $HOME/bashrc.d

if [ -z "$(grep BARWE_BASHRC_D $HOME/.bashrc)" ]; then
  echo -e '\n\n## BARWE_BASHRC_D' >> $HOME/.bashrc;
  echo -e '[ -d $HOME/bashrc.d ] && source $HOME/bashrc.d/bashrc.sh' >> $HOME/.bashrc;
fi

. $HOME/bashrc.d/bashrc.sh