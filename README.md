# 🚀 LinkNow DevFlow Integration Suite

**Ecosistema completo de integração para desenvolvimento, branding e deploy de aplicativos**

[![LinkNow](https://img.shields.io/badge/Powered%20by-LinkNow-0066CC?style=for-the-badge)](https://linknow.com.br)
[![Flutter](https://img.shields.io/badge/Flutter-3.35.4-02569B?style=for-the-badge&logo=flutter)](https://flutter.dev)
[![License](https://img.shields.io/badge/License-Proprietary-red?style=for-the-badge)](LICENSE)

---

## 📦 **O que está incluído?**

Este repositório contém **2 ferramentas completas** e **4 métodos de integração**:

### **🎨 1. LinkNow Branding Tool** (Flutter)
Ferramenta completa para padronizar e assinar aplicativos com a marca LinkNow Digital Strategy.

**Localização:** [`flutter_app/`](./flutter_app/)

**Funcionalidades:**
- ✅ Aplicação automática de branding LinkNow
- ✅ Assinatura digital de aplicativos
- ✅ Gerenciamento de projetos
- ✅ Dashboard visual profissional
- ✅ Tema Material Design 3 customizado

**Preview Web:** [LinkNow Branding Tool](https://5060-i3rr3wfus70di3elc3v0j-02b9cc79.sandbox.novita.ai)

---

### **🔗 2. DevFlow + LinkNow Integration Suite**
4 métodos completos de integração entre DevFlow Pipeline e LinkNow Branding Tool.

**Localização:** [`integration/`](./integration/)

**Métodos de Integração:**

1. **🔘 Botão Integrado** - Interface simples com botão LinkNow
2. **🖼️ iFrame Embedado** - Dashboard unificado com abas
3. **🤖 Script de Automação** - Workflow automatizado para CI/CD
4. **📊 Dashboard Completo** - Gerenciamento avançado (em desenvolvimento)

**Portal de Integrações:** [Integration Suite](https://8080-i3rr3wfus70di3elc3v0j-02b9cc79.sandbox.novita.ai)

---

## 🚀 **Quick Start**

### **LinkNow Branding Tool**

```bash
# Clone o repositório
git clone https://github.com/surflinc2000-cpu/link.git
cd link/flutter_app

# Instalar dependências
flutter pub get

# Executar preview web
flutter run -d chrome
```

### **Integration Suite**

```bash
# Acessar diretório de integração
cd integration

# Opção 1: Abrir portal no navegador
open index.html

# Opção 3: Executar automação
cd option3
node automation-script.js --project ./demo-app
```

---

## 📚 **Documentação**

### **LinkNow Branding Tool**
- 📖 [README Principal](./flutter_app/README.md)
- 🔗 [Guia de Integração](./flutter_app/INTEGRATION_GUIDE.md)

### **Integration Suite**
- 📖 [README](./integration/README.md)
- 📘 [Guia Completo de Integração](./integration/INTEGRATION_COMPLETE_GUIDE.md)

---

## 🎯 **Estrutura do Repositório**

```
linknow-devflow-suite/
├── flutter_app/                      # LinkNow Branding Tool
│   ├── lib/                          # Código Flutter
│   │   ├── main.dart
│   │   ├── models/
│   │   ├── screens/
│   │   ├── widgets/
│   │   ├── services/
│   │   └── theme/
│   ├── assets/                       # Ícones e imagens
│   ├── android/                      # Configuração Android
│   ├── web/                          # Configuração Web
│   ├── pubspec.yaml
│   ├── README.md                     # Documentação da ferramenta
│   └── INTEGRATION_GUIDE.md          # Guia de integração
│
├── integration/                      # Suite de Integração
│   ├── option1/                      # Botão Integrado
│   │   └── devflow-integrated.html
│   ├── option2/                      # iFrame Embedado
│   │   └── unified-iframe.html
│   ├── option3/                      # Automação
│   │   ├── automation-script.js
│   │   └── example-usage.sh
│   ├── option4/                      # Dashboard Completo
│   │   └── unified-dashboard-base.html
│   ├── index.html                    # Portal principal
│   ├── README.md                     # Documentação
│   └── INTEGRATION_COMPLETE_GUIDE.md # Guia detalhado
│
└── README.md                         # Este arquivo
```

---

## 🎨 **LinkNow Branding**

### **Paleta de Cores**
| Cor | Hex | Uso |
|-----|-----|-----|
| Azul Principal | `#0066CC` | Botões, AppBar, elementos principais |
| Azul Secundário | `#004C99` | Hover states, elementos secundários |
| Azul Destaque | `#3399FF` | Highlights, badges |

### **Logo & Identidade**
- Logo: "L" estilizado + "LINKNOW"
- Slogan: "DIGITAL STRATEGY"
- Tipografia: Sans-serif, Bold, Uppercase

---

## 🔄 **Workflow Integrado**

```
┌─────────────────────────────────────────────────────────┐
│              DEVFLOW PIPELINE                           │
│  Upload → Análise → Validação → Otimização             │
└─────────────────┬───────────────────────────────────────┘
                  ↓
┌─────────────────────────────────────────────────────────┐
│           LINKNOW BRANDING TOOL                         │
│  Branding → Assinatura → Relatórios                    │
└─────────────────┬───────────────────────────────────────┘
                  ↓
┌─────────────────────────────────────────────────────────┐
│               DEPLOY FINAL                              │
│  Netlify / Vercel / GitHub Pages / AWS S3              │
└─────────────────────────────────────────────────────────┘
```

---

## 🛠️ **Tecnologias Utilizadas**

### **LinkNow Branding Tool**
- **Flutter** 3.35.4
- **Dart** 3.9.2
- **Material Design** 3
- **Provider** (State Management)
- **Hive** (Local Storage)

### **Integration Suite**
- **HTML5** / **CSS3**
- **JavaScript** (ES6+)
- **Node.js** (Automação)
- **TailwindCSS** (UI Framework)

---

## 📊 **Casos de Uso**

### **1. Agência Digital**
Aplique branding LinkNow em todos os projetos desenvolvidos para manter identidade visual consistente.

### **2. CI/CD Pipeline**
Use o script de automação para integrar branding e assinatura no processo de build.

### **3. Desenvolvimento Corporativo**
Dashboard unificado para gerenciar múltiplos projetos e equipes.

### **4. Portfólio de Apps**
Padronize todos os apps do seu portfólio com a marca LinkNow.

---

## 🔐 **Requisitos**

### **LinkNow Branding Tool**
- Flutter SDK 3.35.4+
- Dart SDK 3.9.2+
- Android SDK (para build APK/AAB)

### **Integration Suite**
- Navegador moderno (Chrome, Firefox, Safari, Edge)
- Node.js 14+ (para script de automação)

---

## 🎬 **Demonstração**

### **LinkNow Branding Tool**
![LinkNow Tool](./flutter_app/assets/images/linknow_logo.png)

### **Integration Suite**
Acesse o portal interativo: [Integration Portal](https://8080-i3rr3wfus70di3elc3v0j-02b9cc79.sandbox.novita.ai)

---

## 🤝 **Contribuindo**

Contribuições são bem-vindas! Para contribuir:

1. Fork este repositório
2. Crie uma branch para sua feature (`git checkout -b feature/NovaFeature`)
3. Commit suas mudanças (`git commit -m 'Adiciona NovaFeature'`)
4. Push para a branch (`git push origin feature/NovaFeature`)
5. Abra um Pull Request

---

## 📝 **Changelog**

### **v1.0.0** (Novembro 2025)
- ✅ LinkNow Branding Tool completo
- ✅ 4 métodos de integração implementados
- ✅ Documentação completa
- ✅ Portal de integrações interativo
- ✅ Script de automação CI/CD

---

## 🐛 **Problemas Conhecidos**

Nenhum problema crítico conhecido no momento.

Reporte bugs em: [GitHub Issues](https://github.com/surflinc2000-cpu/link/issues)

---

## 📞 **Suporte**

**LinkNow Digital Strategy**  
Transforming Ideas into Digital Reality

📧 Email: contato@linknow.com.br  
🌐 Website: www.linknow.com.br  
💬 Slack: #linknow-devflow  
📚 Documentação: https://docs.linknow.com.br

---

## 📄 **Licença**

© 2025 LinkNow Digital Strategy  
Todos os direitos reservados.

Este software é proprietário e confidencial. Uso não autorizado é estritamente proibido.

---

## 🙏 **Agradecimentos**

- Flutter Team pela excelente framework
- TailwindCSS pela biblioteca de UI
- Toda a comunidade open-source

---

## 🌟 **Recursos Destacados**

- ✨ **4 Integrações Completas** - Flexibilidade total
- 🎨 **Branding Automático** - Identidade visual consistente
- ✍️ **Assinatura Digital** - Segurança e confiança
- 🤖 **Automação CI/CD** - Deploy simplificado
- 📊 **Dashboard Visual** - Gerenciamento intuitivo
- 📱 **Multi-plataforma** - Web, Android, iOS
- 🚀 **Production Ready** - Pronto para uso real

---

## 🎯 **Próximos Passos**

1. ✅ Explorar a documentação
2. ✅ Testar as integrações
3. ✅ Integrar ao seu workflow
4. ✅ Personalizar conforme necessário
5. ✅ Compartilhar feedback

---

## 📈 **Estatísticas do Projeto**

- **📁 2 Ferramentas Completas**
- **🔗 4 Métodos de Integração**
- **📝 2 Documentações Extensivas**
- **🌐 2 Portais Web Interativos**
- **🤖 1 Script de Automação**
- **✅ 100% Funcional e Testado**
- **📦 +50 Arquivos de Código**

---

**🎉 Bem-vindo ao LinkNow DevFlow Integration Suite!**

**Powered by LinkNow Digital Strategy** 💙

---

## 🔗 **Links Rápidos**

| Recurso | Link |
|---------|------|
| **🎨 LinkNow Tool** | [Preview Web](https://5060-i3rr3wfus70di3elc3v0j-02b9cc79.sandbox.novita.ai) |
| **🔗 Integration Portal** | [Portal](https://8080-i3rr3wfus70di3elc3v0j-02b9cc79.sandbox.novita.ai) |
| **📖 Docs Flutter** | [README](./flutter_app/README.md) |
| **📘 Docs Integration** | [Guia Completo](./integration/INTEGRATION_COMPLETE_GUIDE.md) |
| **💻 Automation Script** | [Download](./integration/option3/automation-script.js) |
| **🐛 Issues** | [GitHub Issues](https://github.com/surflinc2000-cpu/link/issues) |

---

**Developed with ❤️ by LinkNow Digital Strategy**
