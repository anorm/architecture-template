workspace {
    !identifiers hierarchical
    !impliedRelationships true

    name "The system landscape"
    description "The description of the system landscape"

    !docs docs/landscape/

    model {
        user = person "User"
        softwareSystem = softwareSystem "Software System"

        user -> softwareSystem "Uses"
    }

    views {
        systemLandscape "landscape" {
            include *
            autoLayout
        }

        styles {
            element "Database" {
                shape Cylinder
            }
            element "External" {
                background #999999
                color #ffffff
            }
        }

        // see https://github.com/structurizr/dsl-plugins/tree/main/src/main/java/com/structurizr/dsl/plugins/plantuml for plugin source
        !plugin plantuml.PlantUMLEncoderPlugin {
            "plantuml.url" "https://www.plantuml.com/plantuml"
        }

        // see https://github.com/structurizr/dsl-plugins/tree/main/src/main/java/com/structurizr/dsl/plugins/mermaid for plugin source
        !plugin mermaid.MermaidEncoderPlugin {
            "mermaid.url" "https://mermaid.ink"
        }

        theme default
    }

}
