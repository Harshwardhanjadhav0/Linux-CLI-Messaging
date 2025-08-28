# 🚀 Linux Terminal Messaging Toolkit  

Send **Email**, **WhatsApp**, **SMS**, and even a **Tweet** right from your Linux terminal—no apps, no distractions, just pure CLI power.  

This repo showcases how simple scripts can transform your terminal into a **communication hub**. Perfect for automation, CI/CD pipelines, and DevOps workflows.  

---

## 📂 Project Structure
```
linux-cli-messaging/
├─ README.md
├─ .env.example         # Copy to .env and fill in your secrets
├─ load_env.sh          # Helper script to source env vars
├─ email/
│  └─ send_email_smtp.py
├─ whatsapp/
│  └─ send_whatsapp_twilio.sh
├─ sms/
│  └─ send_sms_twilio.sh
└─ twitter/
   └─ post_tweet_twurl.sh
```

---

## ⚡ Quick Start

1️⃣ Copy `.env.example` → `.env` and edit with your credentials:  
```bash
cp .env.example .env
nano .env
```

2️⃣ Load your environment variables:  
```bash
source load_env.sh
```

You’re ready to start sending messages! 🎉  

---

## 📧 Send Email (Python + SMTP)

**Requirements:** Python 3  

```bash
python3 email/send_email_smtp.py
```

- Supports Gmail, Outlook, and other SMTP providers.  
- Use an **App Password** if your account has 2FA enabled.  

---

## 💬 Send WhatsApp Message (Twilio + curl)

**Prerequisite:** Twilio account + WhatsApp Sandbox enabled.  

```bash
bash whatsapp/send_whatsapp_twilio.sh "Your message from Linux terminal"
```

- Make sure `WHATSAPP_FROM` and `WHATSAPP_TO` are set in E.164 format (`+9198xxxxxxx`).  

---

## 📱 Send SMS (Twilio + curl)

**Prerequisite:** Twilio number enabled for SMS.  

```bash
bash sms/send_sms_twilio.sh "Your SMS from Linux terminal"
```

- Set `TWILIO_SMS_FROM` and `SMS_TO` in `.env`.  

---

## 🐦 Tweet from Terminal (Twitter API + twurl)

**Setup (one-time):**  
```bash
gem install twurl  # requires Ruby
twurl authorize --consumer-key <CK> --consumer-secret <CS>
# Follow the PIN flow to connect your Twitter account
```

**Post a tweet:**  
```bash
bash twitter/post_tweet_twurl.sh "Tweet from Linux terminal 🚀"
```

---

## ⚠️ Notes & Best Practices
- **Never commit `.env`** with real secrets to GitHub.  
- For Gmail SMTP: use App Passwords if 2FA is enabled.  
- Twilio values must follow E.164 format.  
- Twitter API: `twurl` securely handles OAuth; the script just wraps the API call.  

---

## 🔗 Repo & Blog
- GitHub: [Linux-CLI-Messaging](https://github.com/Harshwardhanjadhav0/Linux-CLI-Messaging)  

---

👉 Imagine this in action:  
- Your **CI/CD pipeline tweets** a deployment update.  
- Your **server health check pings WhatsApp** when memory spikes.  
- An **email alert triggers instantly** when a job fails.  

This is where **DevOps meets real-world communication**.  

---

#Linux #DevOps #Automation #Twilio #APIs #CloudNative #Python #CI/CD #TerminalHacks  
