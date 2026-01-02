#!/bin/bash
# =============================================================================
# LinkNow Digital Strategy - Service Monitor & Auto-Restart Script
# =============================================================================
# Este script monitora e reinicia automaticamente os serviços quando necessário
#
# Serviços Monitorados:
#   - Porta 5060: LinkNow Branding Tool (Página de informações no GitHub)
#   - Porta 8080: Integration Portal (4 opções de integração DevFlow + LinkNow)
#
# Uso:
#   ./monitor_services.sh          # Execução única
#   watch -n 30 ./monitor_services.sh   # Monitoramento contínuo a cada 30 segundos
# =============================================================================

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Função para imprimir com timestamp
log() {
    echo -e "${BLUE}[$(date '+%Y-%m-%d %H:%M:%S')]${NC} $1"
}

# Função para verificar se uma porta está respondendo
check_port() {
    local port=$1
    local response=$(curl -sI http://localhost:$port 2>&1 | head -1)
    
    if echo "$response" | grep -q "200 OK"; then
        return 0  # Serviço OK
    else
        return 1  # Serviço com problema
    fi
}

# Função para reiniciar serviço na porta 5060
restart_5060() {
    log "${YELLOW}🔄 Reiniciando serviço na porta 5060...${NC}"
    
    # Matar processos existentes
    lsof -ti:5060 | xargs -r kill -9 2>/dev/null
    sleep 2
    
    # Reiniciar serviço
    cd /home/user/linknow-redirect
    export PYTHONUNBUFFERED=1 PYTHONIOENCODING=utf-8
    python3 -m http.server 5060 --bind 0.0.0.0 > /home/user/linknow-redirect.log 2>&1 &
    
    sleep 3
    
    if check_port 5060; then
        log "${GREEN}✅ Serviço 5060 reiniciado com sucesso!${NC}"
        return 0
    else
        log "${RED}❌ Falha ao reiniciar serviço 5060${NC}"
        return 1
    fi
}

# Função para reiniciar serviço na porta 8080
restart_8080() {
    log "${YELLOW}🔄 Reiniciando serviço na porta 8080...${NC}"
    
    # Matar processos existentes
    lsof -ti:8080 | xargs -r kill -9 2>/dev/null
    sleep 2
    
    # Reiniciar serviço
    cd /home/user/integration
    export PYTHONUNBUFFERED=1 PYTHONIOENCODING=utf-8
    python3 -m http.server 8080 --bind 0.0.0.0 > /home/user/integration-server.log 2>&1 &
    
    sleep 3
    
    if check_port 8080; then
        log "${GREEN}✅ Serviço 8080 reiniciado com sucesso!${NC}"
        return 0
    else
        log "${RED}❌ Falha ao reiniciar serviço 8080${NC}"
        return 1
    fi
}

# =============================================================================
# VERIFICAÇÃO PRINCIPAL
# =============================================================================

echo ""
log "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
log "${BLUE}  LinkNow Digital Strategy - Monitor de Serviços${NC}"
log "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo ""

# Contadores
services_checked=0
services_ok=0
services_restarted=0

# Verificar Porta 5060
log "🔍 Verificando porta 5060 (LinkNow Branding Tool)..."
services_checked=$((services_checked + 1))

if check_port 5060; then
    log "${GREEN}✅ Porta 5060: ONLINE${NC}"
    services_ok=$((services_ok + 1))
else
    log "${RED}❌ Porta 5060: OFFLINE${NC}"
    restart_5060
    if [ $? -eq 0 ]; then
        services_restarted=$((services_restarted + 1))
        services_ok=$((services_ok + 1))
    fi
fi

echo ""

# Verificar Porta 8080
log "🔍 Verificando porta 8080 (Integration Portal)..."
services_checked=$((services_checked + 1))

if check_port 8080; then
    log "${GREEN}✅ Porta 8080: ONLINE${NC}"
    services_ok=$((services_ok + 1))
else
    log "${RED}❌ Porta 8080: OFFLINE${NC}"
    restart_8080
    if [ $? -eq 0 ]; then
        services_restarted=$((services_restarted + 1))
        services_ok=$((services_ok + 1))
    fi
fi

echo ""
log "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
log "${GREEN}📊 Resumo:${NC}"
log "   Serviços verificados: $services_checked"
log "   Serviços online: $services_ok"
log "   Serviços reiniciados: $services_restarted"

if [ $services_ok -eq $services_checked ]; then
    log "${GREEN}✅ Todos os serviços estão operacionais!${NC}"
else
    log "${YELLOW}⚠️  Alguns serviços apresentaram problemas${NC}"
fi

log "${BLUE}═══════════════════════════════════════════════════════════════${NC}"
echo ""

# URLs dos serviços
log "${BLUE}🔗 URLs dos Serviços:${NC}"
log "   Porta 5060: ${GREEN}https://5060-i3rr3wfus70di3elc3v0j-02b9cc79.sandbox.novita.ai${NC}"
log "   Porta 8080: ${GREEN}https://8080-i3rr3wfus70di3elc3v0j-02b9cc79.sandbox.novita.ai${NC}"
echo ""

exit 0
