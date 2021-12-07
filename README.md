# Install
sudo apt-get install -y xdotool \
sudo apt-get install -y numlockx

# Get mouse position
Trỏ chuột vào vị trí cần lấy, chạy command: xdotool getmouselocation

# Telegram API commandline
curl -s -X POST https://api.telegram.org/bot$API_TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="Message"

# Telegram notification with Python
- Install telegram module: pip install python-telegram-bot
```python
import telegram

#Define API_TOKEN and ID_CHAT
API_TOKEN="xxxxxx"
ID_CHAT="xxxxxx"

bot = telegram.Bot(token=API_TOKEN)
bot.sendMessage(chat_id=ID_CHAT, text=message)
```