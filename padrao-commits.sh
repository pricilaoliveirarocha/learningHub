#!/usr/bin/env bash
#
# Validação de mensagem de commit personalizada
# Author: Pricila Oliveira Rocha
# Att: 04/11/2025
# Formato esperado: "#<número> <tipo>(<escopo opcional>): <descrição>"
# Exemplo: "#123 feature: adicionada nova autenticação"
#

# Caminho do arquivo de mensagem de commit (fornecido pelo Git)
COMMIT_MSG_FILE=$1

# Lê a mensagem do commit
COMMIT_MSG=$(cat "$COMMIT_MSG_FILE")

# Regex para o formato: "#123 tipo: descrição"
CUSTOM_COMMIT_REGEX='^#[0-9]+[[:space:]]+(feature|bugfix|hotfix|docs|style|refactor|test|chore|build|ci|perf|revert)(\([a-zA-Z0-9_.-]+\))?(!)?:[[:space:]].+$'

# Cores para melhor legibilidade
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # Sem cor

# Verifica se a mensagem corresponde ao padrão
if ! [[ $COMMIT_MSG =~ $CUSTOM_COMMIT_REGEX ]]; then
    echo -e "${RED}✖ ERRO:${NC} A mensagem de commit não segue o formato esperado."
    echo
    echo -e "${YELLOW}Formato obrigatório:${NC}"
    echo -e "  #<número> <tipo>(<escopo opcional>): <descrição>"
    echo
    echo -e "${YELLOW}Tipos válidos:${NC}"
    echo -e "  feat      → nova funcionalidade"
    echo -e "  fix       → correção de bug"
    echo -e "  docs      → mudanças em documentação"
    echo -e "  style     → formatação, espaçamento, etc. (sem alterar lógica)"
    echo -e "  refactor  → refatoração de código (sem alterar comportamento)"
    echo -e "  test      → adição ou modificação de testes"
    echo -e "  chore     → tarefas de build, configs, dependências"
    echo -e "  build     → mudanças no sistema de build ou dependências externas"
    echo -e "  ci        → alterações em pipelines ou scripts de integração contínua"
    echo -e "  perf      → melhorias de desempenho"
    echo -e "  revert    → reverter commit anterior"
    echo
    echo -e "${YELLOW}Exemplos válidos:${NC}"
    echo -e "  #123 feat(auth): adicionar funcionalidade de login"
    echo -e "  #45 fix(api)!: corrigir erro de timeout"
    echo -e "  #9 docs(readme): atualizar instruções de instalação"
    echo
    echo -e "${CYAN}Dica:${NC} o número após '#' é obrigatório e deve ser o ID da tarefa/issue."
    echo
    exit 1
else
    echo -e "${GREEN}✔ Commit verificado com sucesso!${NC}"
fi

exit 0
