# 🎨 LinkNow Branding Tool

**Ferramenta Flutter Completa para Padronização e Assinatura de Aplicativos**

---

## ✨ **Funcionalidades**

### 🎨 **Branding Automático**
- Aplicação automática do logo LinkNow
- Configuração de cores padrão (#0066CC)
- Splash screen com animações
- Tema Material Design 3 personalizado
- Footer "Powered by LinkNow"

### ✍️ **Assinatura Digital**
- Assinatura de APKs com certificado LinkNow
- Gerenciamento de keystore e credenciais
- Verificação de integridade
- Relatórios detalhados de assinatura

### 📁 **Gerenciamento de Projetos**
- Dashboard visual de projetos
- Suporte para múltiplos tipos (Flutter, React Native, Web, etc)
- Histórico de modificações
- Status de branding e assinatura

---

## 🌐 **Preview Web**

**URL do Preview:** https://5060-i3rr3wfus70di3elc3v0j-02b9cc79.sandbox.novita.ai

A ferramenta está rodando em modo web para demonstração e teste.

---

## 🚀 **Como Usar**

### **1. Dashboard de Projetos**
- Visualize todos os seus projetos
- Verifique status de branding e assinatura
- Crie novos projetos com o botão "+"

### **2. Aplicar Branding**
1. Selecione um projeto
2. Clique em "Branding"
3. Configure as opções
4. Clique em "Aplicar Branding"

### **3. Assinar Aplicativo**
1. Selecione um projeto
2. Clique em "Assinar"
3. Insira as credenciais do keystore
4. Confirme a assinatura

---

## 🎨 **Paleta de Cores LinkNow**

| Cor | Hexadecimal | Uso |
|-----|-------------|-----|
| **Azul Principal** | `#0066CC` | Botões, AppBar, elementos principais |
| **Azul Secundário** | `#004C99` | Hover states, elementos secundários |
| **Azul Destaque** | `#3399FF` | Highlights, badges |

---

## 📦 **Dependências**

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: 6.1.5+1          # State management
  file_picker: 8.1.6          # Seleção de arquivos
  shared_preferences: 2.5.3   # Armazenamento local
  path_provider: 2.1.5        # Caminhos do sistema
  intl: 0.19.0                # Internacionalização
  archive: 3.6.1              # Manipulação de arquivos
```

---

## 📁 **Estrutura do Projeto**

```
flutter_app/
├── lib/
│   ├── main.dart                 # Entry point
│   ├── models/
│   │   └── app_project.dart      # Modelo de dados
│   ├── screens/
│   │   ├── splash_screen.dart    # Splash com branding
│   │   └── home_screen.dart      # Tela principal
│   ├── widgets/
│   │   ├── project_card.dart     # Card de projeto
│   │   ├── branding_dialog.dart  # Dialog de branding
│   │   └── signing_dialog.dart   # Dialog de assinatura
│   ├── services/
│   │   ├── branding_service.dart # Lógica de branding
│   │   └── signing_service.dart  # Lógica de assinatura
│   ├── theme/
│   │   └── app_theme.dart        # Tema LinkNow
│   └── utils/
├── assets/
│   ├── icons/
│   │   └── app_icon.png          # Ícone do app
│   └── images/
│       └── linknow_logo.png      # Logo LinkNow
├── android/                      # Configuração Android
├── web/                          # Configuração Web
├── pubspec.yaml
├── README.md                     # Este arquivo
└── INTEGRATION_GUIDE.md          # Guia de integração
```

---

## 🔧 **Desenvolvimento**

### **Executar em Desenvolvimento**
```bash
flutter run -d chrome
```

### **Build para Web**
```bash
flutter build web --release
```

### **Build para Android**
```bash
flutter build apk --release
```

---

## 📝 **Documentação Adicional**

- 📘 [Guia de Integração com DevFlow](./INTEGRATION_GUIDE.md)
- 🔗 [Integration Suite](../integration/README.md)

---

## 🎯 **Casos de Uso**

### **1. Agência Digital**
Aplique branding consistente em todos os apps desenvolvidos para clientes.

### **2. Portfólio de Apps**
Mantenha uma identidade visual uniforme em múltiplos projetos.

### **3. White Label Apps**
Personalize apps base com a marca de diferentes clientes.

---

## 📊 **Tecnologias Utilizadas**

- **Flutter** 3.35.4
- **Dart** 3.9.2
- **Material Design** 3
- **Provider** (State Management)
- **Hive** (Local Storage)

---

## 📄 **Licença**

© 2025 LinkNow Digital Strategy  
Todos os direitos reservados.

---

## 📞 **Suporte**

**LinkNow Digital Strategy**  
📧 Email: contato@linknow.com.br  
🌐 Website: www.linknow.com.br

---

**Powered by LinkNow Digital Strategy** 🚀

---

## 🔗 **Links Relacionados**

- [Repositório Principal](../)
- [Integration Suite](../integration/)
- [Preview Web](https://5060-i3rr3wfus70di3elc3v0j-02b9cc79.sandbox.novita.ai)
