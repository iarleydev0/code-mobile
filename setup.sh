# Cores para output
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

log()  { echo -e "${CYAN}[*]${NC} $1"; }
ok()   { echo -e "${GREEN}[✓]${NC} $1"; }
warn() { echo -e "${YELLOW}[!]${NC} $1"; }
err()  { echo -e "${RED}[✗]${NC} $1"; exit 1; }


echo -e "${GREEN}"
echo "────────Termux DevKit────────"
echo -e "${NC}"

echo -e "${CYAN}"
echo "Esse script instalará automaticamente todos os pacotes necessários para o uso do code-oss no XFCE4. Isso significa que você terá possibilidades de usar outras linguagens e ferramentas além do HTML e CSS diretamente do seu celular"
echo -e "${NC}"

log "Atualizando repositórios base..."
pkg update -y && pkg upgrade -y || err "Ocorreu um erro ao atualizar os repositórios, limpe o Termux e tente novamente."
ok "Repositórios atualizados com sucesso!"

log "Instalando repositórios para o funcionamento do XFCE4..."
pkg install -y x11-repo && pkg install -y termux-x11-nightly pulseaudio xfce4 || err "Houve uma falha ao instalar os repositórios do X11, limpe o Termux e inicie o processo novamente."
ok "Repositórios para o XFCE4 instlados com sucesso!"

log "Instalando o code-oss(editor de código) e chromium(navegador)..."
pkg install -y tur-repo code-oss chromium || err "Ocorreu um erro ao instalar o code-oss e chromium, limpe o Termux e inicie o processo novamente."
ok "Os programas code-oss e chromium foram instalados com sucesso!"

log "Configurando o ambiente..."
cat > "iniciar-xfce.sh" << 'EOF'
#!/bin/bash

pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1 2>/dev/null

# Inicia Termux-X11
termux-x11 :0 &
sleep 2

env DISPLAY=:0 startxfce4 &
EOF

chmod +x iniciar-xfce.sh
ln -s ~/iniciar-xfce.sh $PREFIX/bin/iniciarxfce

echo "${GREEN}Ambiente configurado com sucesso. Para iniciar o XCFE, use ${RED}iniciarxfce${GREEN}."
