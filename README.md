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
    generated_markdown[<b>src/docs/landscape/02-concepts.md</b>\n<i>Generated markdown</i>]
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
    * `ciarant.vscode-structurizr`
    * `yzhang.markdown-all-in-one`
    * `jebbs.plantuml`
    * (optional) `bierner.markdown-mermaid`

## Getting started

* Fork this repository
* Start docker containers (`docker compose up`)

* Edit the software model in `src/workspace.dsl`
* Edit the markdown documentation files in `src/docs/`
* Edit the conceptual data model in `src/datamodel.yaml`
* Preview markdown in Visual Studio Code
* Preview Structurizr output in browser http://127.0.0.1:8081/
* Stop docker containers (`docker compose down`)

## Schema of `datamodel.yaml`

```
datamodel:
  description: string
  entities:
    ENTITY_ID:
      name: string
      aka:                          #OPTIONAL
        - string
      shortDescription: string      #OPTIONAL
      description: string           #OPTIONAL
      properties:                   #OPTIONAL
        PROPERTY_NAME:
          description: string       #OPTIONAL
          type: string              #OPTIONAL
          values:                   #OPTIONAL
            - string
          examples:                 #OPTIONAL
            - string
          relations:                #OPTIONAL
            - to: ENTITY_ID
              description:          #OPTIONAL
              properties:           #OPTIONAL
                PROPERTY_NAME: {}
diagrams:
  - name: string
    type: overview OR details
    whitelist:                      #OPTIONAL
      - ENTITY_ID
    blacklist:                      #OPTIONAL
      - ENTITY_ID
    layout:
      DIAGRAM_ID:                   # overview or ENTITY_ID
        ENTITY_ID-ENTITY_ID: L, R, U or D
```