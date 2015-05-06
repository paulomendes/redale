if [  -e /usr/bin/redale ]; then
	echo "\033[0;33mYou already have redale installed. You already are a happy guy with a fantastic shor usefull script\033[0m"
	echo "\033[0;33mWe are justing updating your redale\033[0m"
fi
echo "\033[0;34mGetting redale DUDE!\033[0m"

if [ -d ~/.redale ]; then
	rm -rf ~/.redale
fi

hash git >/dev/null && /usr/bin/env git clone https://github.com/paulomendes/redale.git ~/.redale || {
  echo "git not installed"
  exit
}

sudo rm -f /usr/bin/redale
echo "\033[0;34mAlmost There\033[0m"

sudo mv ~/.redale/redale.py /usr/bin/redale

echo "\033[0;34mClearing all the fucking mess\033[0m"

echo "\033[0;34mCongratulations!!! redale was installed!!!\033[0m"
echo ""
echo "\033[0;34m______ ___________  ___  _     _____ \033[0m"
echo "\033[0;34m| ___ \  ___|  _  \/ _ \| |   |  ___|\033[0m"
echo "\033[0;34m| |_/ / |__ | | | / /_\ \ |   | |__  \033[0m"
echo "\033[0;34m|    /|  __|| | | |  _  | |   |  __| \033[0m"
echo "\033[0;34m| |\ \| |___| |/ /| | | | |___| |___ \033[0m"
echo "\033[0;34m\_| \_\____/|___/ \_| |_|_____|____/ \033[0m"
echo ""

rm -rf ~/.redale