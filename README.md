 😈 Troll Script

A Linux prank script that creates controlled chaos on your desktop:
fake notifications, random volume changes, moving windows, cursor trolling, and even cow invasion 🐄

⚠️ WARNING: Use only on your own system or with permission. This script can interfere with normal desktop usage.

---

## 📦 Features

### 1. Fake Notifications
- Sends constant system notifications: *"I'm watching you 👁️"*

### 2. Random Volume
- Randomly changes system volume

### 3. Cursor Troll
- Randomly moves your mouse cursor

### 4. Moving Window
- Moves the active window around the screen

### 5. Caps Lock Chaos
- Periodically toggles Caps Lock

### 6. Mini DVD Mode
- Makes the active window jump around the screen

### 7. ALL AT ONCE 💥
- Runs all effects simultaneously

### 8. Cow Invasion 🐄
- Spawns animated cows with random `fortune` messages
- Appears in random positions on screen

- 🚀 Installation & Usage
Bash
chmod +x troll.sh
./troll.sh
Then choose an option from the menu.
🐄 Cow Invasion (Mode 8)
When selecting option 8:
The script checks for required tools:
xcowsay
fortune-mod
If missing, they will be installed automatically (requires sudo)
Then a continuous loop starts:
Random cow positions on screen
Random cow sizes (small / medium / large)
Random fortune messages
Infinite spawn until stopped (Ctrl + C)
💀 Safety Warning
Do NOT run this on:
school computers
work machines
shared systems
Some effects may require restarting your session to fully stop
🧠 Controls
Press Ctrl + C to stop most running modes
Some background processes may need manual killing:
Bash
pkill xdotool
pkill xcowsay
😎 Author
Made for fun, experimentation, and learning Linux scripting.

---

## ⚙️ Requirements

Install dependencies before running:


sudo apt install xdotool libnotify-bin pulseaudio-utils fortune-mod xcowsay



Here's the script, put it into the console:
```bash
curl -O https://raw.githubusercontent.com/MrVPNru/TrollPC/main/troll.sh && chmod +x troll.sh && ./troll.sh```
