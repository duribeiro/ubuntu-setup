# Ubuntu Setup Script

Este repositório contém um script automatizado (`setup.sh`) desenhado para configurar rapidamente um ambiente de terminal de alta produtividade para desenvolvedores no Ubuntu ou distribuições baseadas em Debian.

## O que o script instala e configura?
- **Atualização do sistema** base (`apt update && apt upgrade`).
- **Pacotes Essenciais**: `curl`, `wget`, `git`, `build-essential`.
- **Node.js**: Versão LTS v20.x baixada do NodeSource, com `npm`.
- **Zsh & Oh My Zsh**: Troca o terminal padrão para Zsh, com Oh My Zsh.
- **Utilitários Produtivos de Terminal**:
  - `lsd`: Substituto do `ls` com suporte a ícones.
  - `bat` (`batcat`): Substituto do `cat` com `syntax-highlighting`.
  - `fastfetch`: Para visualizar dados rápidos do sistema.
  - `fzf`: Localizador interativo para melhorar sua busca no histórico.
  - `zoxide`: Navegador inteligente de diretórios (alternativa ao `cd`).
- **Plugins do Zsh**:
  - `zsh-autosuggestions`
  - `zsh-syntax-highlighting`
- **Aliases configurados**:
  - `att` (atualiza o sistema)
  - `ls`, `ll`, `tree` para rodar `lsd`
  - `cat` para rodar `batcat`
- **Temas**: Tema randômico configurado para Zsh.

## Como Usar

Para configurar sua máquina instantaneamente, basta clonar este repositório e executar o script:

```bash
git clone https://github.com/duribeiro/ubuntu-setup.git
cd ubuntu-setup
chmod +x setup.sh
./setup.sh
```

Ao final, recarregue seu terminal ou faça logoff/login, e divirta-se!
