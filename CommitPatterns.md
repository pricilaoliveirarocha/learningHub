# 📌 Minha Convenção de Mensagens de Commit Git

Este documento define minhas diretrizes pessoais de mensagens de commit para todas as pastas neste repositório.

Sigo um estilo semântico e legível inspirado nos Conventional Commits, adaptado para repositórios baseados em estudos.

## ✅ Formato

<tipo>(<escopo>): <descrição curta>

### Exemplos:
- feat(js): adicionar exemplo de arrow function
- docs(css): atualizar notas sobre flexbox
- fix(php): corrigir string de conexão PDO
- refactor(js): melhorar lógica do loop para legibilidade
- chore: reestruturar layout da pasta frontend
- test(js): adicionar casos de teste para função fatorial
- study(git): explorar comportamento merge vs rebase

## 🔤 Tipos de Commit (Descrição Detalhada)

| Tipo       | Descrição                                                                 |
|------------|---------------------------------------------------------------------------|
| `feat`     | Introduz um novo conceito, funcionalidade ou exemplo de código           |
| `fix`      | Corrige um erro ou código quebrado                                       |
| `docs`     | Mudanças na documentação ou notas em Markdown                           |
| `style`    | Formatação de código, indentação, etc. (sem mudanças na lógica)         |
| `refactor` | Melhorias no código sem alterar o comportamento                         |
| `test`     | Adiciona ou atualiza casos de teste ou exemplos de validação            |
| `chore`    | Reorganização de pastas, atualizações de config, tarefas não-funcionais |
| `study`    | Arquivos temporários ou exploratórios e experimentos de aprendizado     |
| `perf`     | Otimizações de performance (raro em repos de estudo)                    |
| `ci`       | Mudanças na configuração de integração contínua                         |
| `build`    | Mudanças relacionadas ao sistema de build ou dependências               |
| `revert`   | Reverter um commit anterior                                             |
| `wip`      | Trabalho em progresso (commits temporários, evitar uso a longo prazo)   |

## 📂 Escopo

Use a pasta ou tópico como escopo:  
Exemplos: js, php, css, git, algorithms, oop, dom, docker, clean-code, etc.

## ✅ Diretrizes de Commit

- Mantenha a descrição curta abaixo de 70 caracteres  
- Use modo imperativo (ex: "adicionar" não "adicionado")  
- Uma mudança lógica por commit  
- Separe mudanças não relacionadas em commits diferentes  

## 🔁 Exemplo de Fluxo de Commit

```bash
git add javascript/arrow-functions.js
git commit -m "feat(js): adicionar sintaxe e exemplos de arrow function"