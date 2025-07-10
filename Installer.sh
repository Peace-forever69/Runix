#!/data/data/com.termux/files/usr/bin/bash

# ─── Colors ───────────────────────────────────────────
RED='\033[0;31m'
GRN='\033[0;32m'
YEL='\033[1;33m'
NC='\033[0m'

# ─── Banner ───────────────────────────────────────────
echo -e "${GRN}"
echo '██████╗ ██╗   ██╗███╗   ██╗██╗██╗  ██╗'
echo '██╔══██╗██║   ██║████╗  ██║██║╚██╗██╔╝'
echo '██████╔╝██║   ██║██╔██╗ ██║██║ ╚███╔╝ '
echo '██╔═══╝ ██║   ██║██║╚██╗██║██║ ██╔██╗ '
echo '██║     ╚██████╔╝██║ ╚████║██║██╔╝ ██╗'
echo '╚═╝      ╚═════╝ ╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝'
echo '          Runix: Smart File Runner'
echo -e "${NC}"

echo -e "📦 Installing Runix..."

# ─── Setup Directories ───────────────────────────────
mkdir -p "$HOME/bin"

# ─── Download Main Script ────────────────────────────
curl -s -o "$HOME/bin/Runix" https://raw.githubusercontent.com/Peace-forever69/Pex/main/Runix

# ─── Make Executable ────────────────────────────────
chmod +x "$HOME/bin/Runix"

# ─── Create Symlinks ────────────────────────────────
ln -sf "$HOME/bin/Runix" "$HOME/bin/run"
ln -sf "$HOME/bin/Runix" "$HOME/bin/Run"

# ─── Ensure ~/bin is in PATH ────────────────────────
if ! echo "$PATH" | grep -q "$HOME/bin"; then
    echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.bashrc"
    source "$HOME/.bashrc"
fi

echo -e "${GRN}✅ Installed successfully!${NC}"
echo -e "🔧 Run ${YEL}run settings${NC} to configure, or ${YEL}run your_file.ext${NC} to start."
