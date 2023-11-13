# Architecture documentation template

## How it works

```mermaid
flowchart TD
    style datamodel fill:#cde,stroke:#000
    style generated_markdown fill:#cde,stroke:#000
    style workspace fill:#cde,stroke:#000
    style markdown fill:#cde,stroke:#000
    style dm2md fill:#aea,stroke:#000
    style structurizr fill:#aea,stroke:#000
    style architecture fill:#ddd,stroke:#000

    datamodel[<b>src/datamodel.yaml</b>\n<i>Contains the conceptual data model</i>]
    dm2md(dm2md)
    generated_markdown[<b>Generated markdown</b>\n<i>Temporary intermediate files</i>]
    workspace[<b>src/workspace.dsl</b>\n<i>Structurizr architecture description</i>]
    markdown[<b>src/docs/*.md</b>\n<i>Markdown files containing\ngeneral documentation</i>]
    structurizr(structurizr)
    architecture[<b>Architecture documentation</b>\n<i>A complete documentation site containing\ndocumentation, diagrams and the conceptual\ndata model</i>]

    datamodel --> dm2md
    dm2md --> generated_markdown
    generated_markdown --> structurizr
    markdown --> structurizr
    workspace --> structurizr
    structurizr --> architecture
```

## Prerequisites

* Docker
* Visual Studio Code
* Visual Studio Code plugins:
    * ciarant.vscode-structurizr
    * yzhang.markdown-all-in-one
    * jebbs.plantuml

## Getting started

* Fork this repository
* Start docker containers (`docker compose up`)
* Edit `src/workspace.dsl` and markdown files in `src/docs/`
* Preview markdown in Visual Studio Code
* Preview Structurizr output in browser http://127.0.0.1:8081/
* Stop docker containers (`docker compose down`)
