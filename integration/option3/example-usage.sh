#!/bin/bash

# DevFlow + LinkNow Automation Script - Exemplos de Uso
# =======================================================

echo "🚀 DevFlow + LinkNow Integration Automation"
echo "==========================================="
echo ""

# Exemplo 1: Workflow completo (análise + branding + assinatura + deploy)
echo "📝 Exemplo 1: Workflow Completo"
echo "node automation-script.js --project ./my-app --branding true --sign true --deploy netlify"
echo ""

# Exemplo 2: Apenas análise e branding (sem assinatura)
echo "📝 Exemplo 2: Análise + Branding (sem assinatura)"
echo "node automation-script.js --project ./web-app --branding true --sign false --deploy vercel"
echo ""

# Exemplo 3: Apenas análise (sem branding nem assinatura)
echo "📝 Exemplo 3: Apenas Análise"
echo "node automation-script.js --project ./test-app --branding false --sign false --deploy github-pages"
echo ""

# Executar exemplo demo
echo "▶️  Executando demo..."
echo ""

node automation-script.js --project ./demo-app --branding true --sign true --deploy netlify
