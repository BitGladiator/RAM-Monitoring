# 🧠 RAM & Disk Monitoring

A lightweight and easy-to-use Bash script suite for **monitoring RAM usage** and **disk space** on Linux servers. Perfect for system admins or anyone who wants simple alerts without heavy tooling.

---

## 📜 Overview

This repository contains two shell scripts:

| Script         | Function                                                                 |
|----------------|--------------------------------------------------------------------------|
| `ram_status.sh` | ⚠️ Warns if available RAM drops below a safe threshold (default: `500MB`) |
| `fs_status.sh`  | 📬 Sends email alert if disk usage on a specific partition exceeds a limit |

---

## 🚀 Quick Start

1. **Make the scripts executable:**

   ```bash
   chmod +x ram_status.sh fs_status.sh

2. **Run manually** or set up with `cron` for regular checks.

---

## ⚙️ Configuration

### `ram_status.sh`

* Default RAM threshold: `500MB`
* Customize it by editing the `TH` variable:

  ```bash
  TH=500  # Set to your preferred threshold in MB
  ```

### `fs_status.sh`

* Monitors partition `vda2` by default.
* Sends alerts to: `karansh1232@gmail.com`
* Customize disk usage limit or email as needed:

  ```bash
  TO="you@example.com"
  ```

---

## ⏰ Optional: Set Up Cron Jobs

To run the checks every 10 minutes, add this to your crontab:

```bash
*/10 * * * * /path/to/ram_status.sh
*/10 * * * * /path/to/fs_status.sh
```

---

## 📬 Requirements

* `mail` utility (for email alerts)
* Works on most modern Linux systems with `bash`, `df`, `free`, and `awk`

---

