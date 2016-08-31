#install google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install libxss1 libgconf2-4 libappindicator1 libindicator7
sudo dpkg -i google-chrome-stable_current_amd64.deb
google-chrome
#then lock to launcher and make default

#remove 450Mb of bloat
sudo apt-get remove --purge firefox libreoffice*
sudo apt-get clean
sudo apt-get autoremove

#get the numix themes and the unity tweak tool
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle unity-tweak-tool

#then using the unity tweak tool set up the themes you want

#core necessary python packages
sudo apt-get install python-numpy python-matplotlib

#make the filesystem that I like
rmdir Documents/ Music/ Pictures/ Public/ Templates/ Videos/
mkdir gitrepos drive

#download the 14.04 insync .deb package from their website
cd Downloads
sudo dpkg -i insync_1.3.8.36087-trusty_amd64.deb
#do all the setup stuff via gui for insync

#get the system load indicator
sudo apt-get install indicator-multiload

#setting up atom
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom
#add atom packages for minimum functionality
apm install file-icons  minimap python-tools script
#atom packages for using git
apm install git-plus markdown-pdf
#atom packages for latex functionality
apm install latex language-latex pdf-view

#install git
sudo apt-get install git
#set global name and email to identify commits
git config --global user.name "Leo Browning"
git config --global user.email leobrowning92@gmail.com
# Set git to use the credential memory cache
git config --global credential.helper cache
# Set the cache to timeout after 1 hour (setting is in seconds)
git config --global credential.helper 'cache --timeout=3600'



# installing TexLive
sudo add-apt-repository ppa:texlive-backports/ppa
sudo apt-get update
sudo apt-get texlive-full texworks
# ensuring that there is a us english dictionary working
sudo ln -s /usr/share/hunspell/en_US.dic /usr/share/myspell/dicts/
sudo ln -s /usr/share/hunspell/en_US.aff /usr/share/myspell/dicts/

#setting up inkscape
sudo apt-get install inkscape

#installing blender noe: dont use apt-get, its not up to date
#get the tar from the blender website https://www.blender.org/download/
#extract to blender folder in home
#run from there

#installing openscad from latest repo
sudo add-apt-repository ppa:openscad/releases
sudo apt-get update
sudo apt-get install openscad

#installg the jupyter notebook for python3
sudo apt-get -y install python3 build-essential python3-pip python3-dev
pip3 install jupyter
#add the following line to ~/.bashrc
export PATH=$PATH:~/.local/bin
#note if just run in terminal this will be reset on logout

#modify the scroll speed of mouse
sudo apt-get install imwheel
#for the contenst of imwheel see
#http://www.webupd8.org/2015/12/how-to-change-mouse-scroll-wheel-speed.html
