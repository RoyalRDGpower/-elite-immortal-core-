#!/data/data/com.termux/files/usr/bin/bash

# === RDGpower Supreme Boot Trigger ===

# Step 1: Wait for the system to fully boot (optional delay)
sleep 20

# Step 2: Simulate Fake GPS via Intent (adjust coordinates if needed)
am start -a android.intent.action.VIEW -d "geo:0,0?q=40.7128,-74.0060(RDG Supreme Base)" > /dev/null 2>&1

# Step 3: Auto-open Windscribe app (simulate VPN activation)
am start -n com.windscribe.vpn/com.windscribe.vpn.activity.SplashActivity > /dev/null 2>&1

# Step 4: Send Telegram bot alert
BOT_TOKEN="8079952068:AAGGM9eGSaJA5RBu2YaLnMFjr9d2XZ4HneQ"
CHAT_ID="6388656492"
MESSAGE="💠 RDGpower Supreme has rebooted — Fake GPS & Windscribe VPN Activated."

curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
     -d chat_id="$CHAT_ID" \
     -d text="$MESSAGE"

# Step 5: Echo in Termux log
echo "🚀 RDG Supreme Boot Sequence Executed"
