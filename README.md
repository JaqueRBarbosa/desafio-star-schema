# ⭐ Star Schema — Análise Acadêmica

Projeto desenvolvido como desafio prático de **Modelagem Dimensional** da DIO.

## 🎯 Objetivo

Construir um modelo dimensional no formato **Star Schema**, tendo o **Professor** como objeto central de análise, a partir de um modelo relacional acadêmico.

## 🏗️ Modelo Dimensional

O modelo foi estruturado com uma tabela fato e cinco dimensões:

- **FatoProfessor** — relação entre professor, disciplina, curso, departamento e período.
- **DimProfessor** — informações dos professores.
- **DimDisciplina** — disciplinas.
- **DimCurso** — cursos.
- **DimDepartamento** — departamentos e campi.
- **DimData** — dimensão temporal criada conforme requisito do desafio.

### 📌 Granularidade

Cada registro da `FatoProfessor` representa a relação de **um professor com uma disciplina e um curso em determinado período**.

### ⭐ Estrutura do Star Schema

```text
                    ┌─────────────────┐
                    │  DimProfessor   │
                    └────────┬────────┘
                             │
                             │
┌─────────────────┐    ┌─────▼───────────┐    ┌─────────────────┐
│DimDepartamento  │────│  FatoProfessor  │────│ DimDisciplina   │
└─────────────────┘    └─────┬───────────┘    └─────────────────┘
                             │
                      ┌──────┴──────┐
                      │             │
               ┌──────▼─────┐ ┌────▼──────┐
               │  DimCurso  │ │  DimData  │
               └────────────┘ └───────────┘
```
## 📊 Resultado

O modelo dimensional possui:

12 professores
15 disciplinas
6 cursos
4 departamentos
12 registros na dimensão de data
18 registros na tabela fato

## 🛠️ Tecnologias
MySQL <br>
MySQL Workbench <br>
SQL <br>
Modelagem Dimensional <br>

### 📚 Contexto

A modelagem foi construída a partir do modelo relacional fornecido no desafio, adaptando sua estrutura para um modelo dimensional voltado à análise de professores.

A tabela FatoProfessor centraliza as relações entre professores, disciplinas, cursos, departamentos e períodos, enquanto as dimensões fornecem os contextos necessários para a análise.

A DimData foi adicionada de forma sintética, conforme solicitado no desafio, permitindo análises temporais mesmo sem uma dimensão de data originalmente presente no modelo relacional.

## 🎯 Conceitos Aplicados
Modelagem dimensional
Star Schema
Tabela fato
Tabelas dimensão
Definição de granularidade
Chaves primárias e estrangeiras
Relacionamentos entre fato e dimensões
Dimensão de tempo
