if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/crazyDeveloperz/Master-Bot.git /AutoFilterWithStream
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Master-Bot
fi
cd /AutoFilterWithStream
pip3 install -U -r requirements.txt
echo "Starting...."
python3 bot.py
