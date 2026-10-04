# GitTools CLI

Uma ferramenta de linha de comando com uma Interface Interativa de Texto (TUI) para gerenciar facilmente os seus Aliases do Git.

## Funcionalidades

- **Menu Interativo (TUI):** Navegue facilmente pelas opções utilizando as setas direcionais do teclado.
- **Instalar Aliases Padrão:** Importa uma lista de aliases poderosos (definidos no `aliases.ini`) diretamente para o seu `~/.gitconfig`, suportando estratégia de merge ou reescrita caso existam conflitos.
- **CRUD de Aliases Customizados:**
  - **Ver todos:** Lista formatada dos aliases existentes.
  - **Adicionar:** Crie novos aliases de forma interativa.
  - **Editar:** Selecione e edite um alias existente via menu.
  - **Remover:** Apague aliases com segurança.
- **Modo Teste:** Rode a ferramenta com segurança localmente para experimentar sem afetar as suas configurações globais de usuário.

## Como Usar

### No Linux e macOS

Dê permissão de execução ao script:

```bash
chmod +x gittools
```

Execute a ferramenta:

```bash
./gittools
```

### No Windows

Se você possui o [Git for Windows](https://gitforwindows.org/) instalado, basta executar a ferramenta no seu Prompt de Comando (CMD) ou PowerShell:

Pelo CMD:
```cmd
gittools
```

Pelo PowerShell:
```powershell
.\gittools.ps1
```
*(Opcionalmente, no PowerShell, se a execução de scripts estiver bloqueada, pode ser necessário rodar `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass` antes da execução).*

### Modo de Teste

Para rodar em modo seguro (escreve as configurações em um `.gitconfig` na pasta local ao invés de usar o global `~/.gitconfig`), utilize a flag `--test`:

```bash
./gittools --test
```
