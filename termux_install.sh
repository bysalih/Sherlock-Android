#!/data/data/com.termux/files/usr/bin/sh
# Termux setup script for Sherlock
# Run inside Termux on Android
set -e

echo "[*] Updating packages..."
pkg update -y
pkg upgrade -y

echo "[*] Installing required packages..."
pkg install -y python git clang make pkg-config openssl libffi

echo "[*] Upgrading pip..."
python -m pip install --upgrade pip setuptools wheel

echo "[*] Installing Python dependencies..."
# Adjust these to match sherlock's requirements; this list is a starting point
pip install requests beautifulsoup4 colorama rich

echo "[*] Cloning Sherlock (if not present)..."
if [ ! -d sherlock ]; then
  git clone https://github.com/sherlock-project/sherlock.git
fi

echo "[*] Installing Sherlock (editable)..."
cd sherlock
pip install -e .

echo "[*] If you want voice support, install Vosk (may require additional native libs):"
pip install vosk

echo "[*] Done. Run Sherlock with: python -m sherlock or python sherlock/sherlock.py"
