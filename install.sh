#install google chrome
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo apt-get install libxss1 libgconf2-4 libappindicator1 libindicator7
#sudo dpkg -i google-chrome-stable_current_amd64.deb
#google-chrome
#then lock to launcher and make default

#remove 450Mb of bloat
#sudo apt-get remove --purge firefox libreoffice*
#sudo apt-get clean
#sudo apt-get autoremove

#get the numix themes and the unity tweak tool
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle
sudo apt install unity-tweak-tool

#then using the unity tweak tool set up the themes you want

#core necessary python packages
sudo apt install python3-pip
sudo pip3 install virtualenv virtualenvwrapper
# http://docs.python-guide.org/en/latest/dev/virtualenvs/ for virtualenvwrapper setup
# see here for info on setting up jupyter notebook with virtualenvs
# http://anbasile.github.io/programming/2017/06/25/jupyter-venv/

#make the filesystem that I like
# rmdir Documents/ Music/ Pictures/ Public/ Templates/ Videos/
# mkdir gitrepos drive

#download the 14.04 insync .deb package from their website
#cd Downloads
#sudo dpkg -i insync_1.3.8.36087-trusty_amd64.deb
#do all the setup stuff via gui for insync

#get the system load indicator
#sudo apt-get install indicator-multiload

#setting up atom
#wget https://atom.io/download/deb -O atom64.deb
#sudo dpkg --install atom-amd64.deb
#add atom packages for minimum functionality
#apm install file-icons  minimap script autocomplete-paths
#atom packages for using git
#apm install git-plus markdown-pdf
#atom packages for latex functionality
#apm install latex language-latex pdf-view
#atom packages for python functionality
#apm install python-tools autocomplete-python

#install git
#sudo apt-get install git
#set global name and email to identify commits
git config --global user.name "Leo Browning"
git config --global user.email leobrowning92@gmail.com
# Set git to use the credential memory cache
git config --global credential.helper cache
# Set the cache to timeout after 1 hour (setting is in seconds)
git config --global credential.helper 'cache --timeout=3600'



# installing TexLive
#sudo apt install texlive-full texworks
# ensuring that there is a us english dictionary working
#sudo ln -s /usr/share/hunspell/en_US.dic /usr/share/myspell/dicts/
#sudo ln -s /usr/share/hunspell/en_US.aff /usr/share/myspell/dicts/


# great tool for install a tiny little latex equation editor
# see here https://klatexformula.sourceforge.io/
#sudo apt install klatexformula
#setting up inkscape
#sudo apt-get install inkscape

#installing blender noe: dont use apt-get, its not up to date
#get the tar from the blender website https://www.blender.org/download/
#extract to blender folder in home
#run from there

#installing openscad from latest repo
#sudo add-apt-repository ppa:openscad/releases
#sudo apt-get update
#sudo apt-get install openscad

#installg the jupyter notebook for python3
#sudo apt-get -y install python3 build-essential python3-pip python3-dev
#pip3 install jupyter
#add the following line to ~/.bashrc
#export PATH=$PATH:~/.local/bin
#note if just run in terminal this will be reset on logout

#modify the scroll speed of mouse
#sudo apt-get install imwheel
#for the contenst of imwheel see
#http://www.webupd8.org/2015/12/how-to-change-mouse-scroll-wheel-speed.html
#and .imwheelrc which needs to be in home directory.

#fstab needs to be in /etc/

# avr gcc toolchain for flashing custome stuff to atmega microcontrollers
#sudo apt-get install gcc-avr binutils-avr gdb-avr avr-libc avrdude

#easy color picker app
#sudo apt-get install gcolor2

# Setting up python to do cairo image working
#pip 3 install cairo
#pip 3 install imageio
#sudo apt-get install libfreeimage3 libfreeimage-dev

#get the bit that allows the git prompt for bash
#curl
#https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
#-o ~/.git-prompt.sh
#then add the following lines to bashrc
#. ~/.git-prompt.sh
#export GIT_PS1_SHOWDIRTYSTATE=1
#and include $(__git_ps1 " (%s)") in your PS1 prompt

#nifty tool for correcting command typos
#sudo pip3 install --user thefuck

#nano ~/.bash_aliases
#add the following lines
#eval $(thefuck --alias)
#source ~/.bashrc


# useful little programmes
#sudo apt install tree tldr
