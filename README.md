<div align="center">

<img src="https://img.shields.io/badge/Termux-000000?style=for-the-badge&logo=android&logoColor=white" />
<img src="https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white" />
<img src="https://img.shields.io/badge/XFCE4-2284F2?style=for-the-badge&logo=xfce&logoColor=white" />
<img src="https://img.shields.io/badge/VS_Code-0078D4?style=for-the-badge&logo=visual-studio-code&logoColor=white" />

# 📱 code-mobile

**Transforme seu Android em um ambiente de desenvolvimento completo — direto pelo Termux.**

*Um script bash que instala automaticamente o XFCE4 + Code-OSS no seu dispositivo Android.*

</div>

---

## ✨ O que é isso?

O **code-mobile** é um script de automação para [Termux](https://termux.dev/) que configura um ambiente desktop Linux completo no seu Android, incluindo:

- 🖥️ **XFCE4** — Ambiente gráfico leve e funcional via [Termux:X11](https://github.com/termux/termux-x11)
- 💻 **Code-OSS** — O Visual Studio Code open-source, pronto para codar
- ⚙️ Todas as dependências necessárias instaladas automaticamente

Ideal para quem quer programar em qualquer lugar, sem precisar de um computador.

---

## 📋 Pré-requisitos

Antes de começar, certifique-se de ter:

- ✅ [Termux](https://f-droid.org/packages/com.termux/) instalado (recomendado via F-Droid)
- ✅ [Termux:X11](https://github.com/termux/termux-x11) instalado no dispositivo
- ✅ Conexão com a internet
- ✅ Pelo menos **3 GB** de espaço livre
- ✅ Android 7.0 ou superior

---

## 🚀 Instalação

Execute os comandos abaixo no Termux, **na ordem**:

```bash
pkg install wget
```

```bash
wget https://github.com/iarleydev0/code-mobile/blob/main/setup.sh
```

```bash
chmod +x setup.sh
```

```bash
~/setup.sh
```

> ⏳ O processo pode levar alguns minutos dependendo da sua conexão e dispositivo. Aguarde até a conclusão.

---

## ▶️ Como usar após a instalação

1. Abra o **Termux:X11**
2. Volte ao **Termux** e execute o comando abaixo para iniciar o ambiente:

```bash
iniciarxfce
```

3. O **XFCE4** será exibido automaticamente no Termux:X11
4. Abra o **Code-OSS** pelo menu de aplicativos ou pelo terminal:

```bash
code-oss
```

---

## 📦 O que o script instala?

| Pacote | Descrição |
|---|---|
| `xfce4` | Ambiente desktop gráfico |
| `xfce4-terminal` | Terminal integrado ao XFCE |
| `code-oss` | Editor de código (VS Code open-source) |
| `termux-x11-nightly` | Servidor gráfico X11 para exibição |
| Dependências diversas | Bibliotecas e utilitários de suporte |

---

## 🛠️ Solução de problemas

**Tela em branco ao abrir o Termux:X11?**
> Certifique-se de abrir o **Termux:X11 primeiro** e só então executar `iniciarxfce` no Termux.

**Erro de permissão no script?**
> Confirme que executou `chmod +x setup.sh` antes de rodar.

**Code-OSS não abre?**
> Execute `code-oss` pelo terminal dentro do ambiente XFCE para ver mensagens de erro detalhadas.

---

## 🤝 Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para:

- 🐛 Abrir uma [issue](https://github.com/iarleydev0/code-mobile/issues) reportando bugs
- 💡 Sugerir melhorias
- 🔧 Enviar um Pull Request

---

## 📄 Licença

Distribuído sob a licença MIT. Veja `LICENSE` para mais informações.

---

<div align="center">

[iarleydev0](https://github.com/iarleydev0)©

</div>
