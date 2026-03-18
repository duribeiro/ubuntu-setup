<div align="center">
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/ubuntu/ubuntu-plain.svg" alt="Ubuntu Logo" width="100">

  # 🚀 Ubuntu Productivity Setup
  
  **O script definitivo para transformar distribuições baseadas em Debian/Ubuntu no ambiente de desenvolvimento de terminal perfeito, em questão de minutos.**

  [![Shell Script](https://img.shields.io/badge/Language-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)](setup.sh)
  [![Ubuntu](https://img.shields.io/badge/Platform-Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)](#)
  [![Zsh](https://img.shields.io/badge/Shell-Zsh-yellow?style=for-the-badge&logo=gnome-terminal&logoColor=black)](#)
  [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

  <p>
    <a href="#-sobre-o-projeto">Recursos</a> •
    <a href="#%EF%B8%8F-instalação-rápida">Instalação</a> •
    <a href="#-ferramentas-inclusas">Ferramentas</a>
  </p>
</div>

---

## 💡 Sobre o Projeto

Este repositório fornece um script *plug-and-play* (`setup.sh`) preparado para automatizar o ambiente inicial de qualquer programador recém chegado ao **Ubuntu**. Ele elimina horas de configuração manual ao instalar e padronizar nativamente ferramentas fundamentais, compiladores, Node.js de última geração e um terminal altamente estético e inteligente usando **Zsh**, **FZF** e muito mais.

---

## ✨ Recursos

- ⚡ **Zero Interação:** Todas as ferramentas são preparadas para baixar de forma automática e silenciosa suas respectivas últimas versões estáveis (LTS) através de APIs de Releases (como o repositório NodeSource e a API do GitHub).
- 🎨 **Terminal Lindo:** Zsh turbinado com _Oh My Zsh_ e um seletor de tema aleatório diário (`fastfetch` acoplado visualmente para métricas de tela inicial).
- 🧠 **Smart CLI:** Autocompletar interativo liderado pelo seu histórico prévio, e syntax-highlighting nativa de prompt.
- 🔍 **Navegação Suprema:** FZF inserido para buscar comandos no seu histórico num piscar de olhos (`Ctrl+R`), e `zoxide` para pular para diretórios complexos com apenas 2 letras.

---

## 📦 Ferramentas Inclusas

O script embarca automaticamente os seguintes pacotes na sua máquina:

| Categoria | Stack |
| :--- | :--- |
| **Sistema & Base** | `curl`, `wget`, `git`, `build-essential`, `nano` |
| **Shell & Core** | **Zsh**, **Oh My Zsh** |
| **Plugins Zsh** | `zsh-autosuggestions`, `zsh-syntax-highlighting` |
| **Programação** | **Node.js Latest LTS** e `npm` (Atualização Dinâmica) |
| **Substituições Modernas** | `lsd` (substitui o *ls* com ícones), `batcat` (cat com cores sintáticas) |
| **Navegação Rapida** | `fzf`, `zoxide`, `fastfetch` |

---

## ⚙️ Instalação Rápida

Abra o seu terminal recém instalado no novo Ubuntu e rode os comandos abaixo passo-a-passo:

```bash
# 1. Clone este repositório para o seu sistema:
git clone https://github.com/duribeiro/ubuntu-setup.git

# 2. Acesse a pasta do projeto e dê permissão:
cd ubuntu-setup
chmod +x setup.sh

# 3. Inicie a mágica:
./setup.sh
```

> **Aviso:** O script fará atualizações completas via `apt update && apt upgrade` por padrão, o que pode demorar alguns minutos dependendo de quão antiga for sua mídia de instalação ou da velocidade da internet.
> 
> Ao final, **feche o terminal e abra um novo** para que as fontes, temas e atalhos surtam efeito definitivo!

---

## ⌨️ Aliases Produtivos

Como extra, o `setup.sh` injetará também atalhos cruciais no seu arquivo `~/.zshrc` final, para poupar muita digitação e uso de cliques no seu decorrer:

| Comando | Executará por trás | O que faz de verdade |
| :--- | :--- | :--- |
| `update` | `sudo apt update && sudo apt upgrade -y` | Atualiza todo o repositório do seu Linux. |
| `ls` | `lsd` | Lista os arquivos coloridos em blocos com favicons. |
| `ll` | `lsd -l` | Lista verticalmente arquivos com visualização de dono e permissões explícitas. |
| `la` | `lsd -a` | Lista todos os arquivos da pasta, incluindo os ocultos. |
| `lla`| `lsd -la` | Lista todos os arquivos (ocultos inclusos) verticalmente com permissões. |
| `tree`| `lsd --tree` | Mostra a árvore inteira hierárquica e ramificada nas pastas. |

<br>

<div align="center">
  <sub>Criado de dev para dev. 💙</sub>
</div>
