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
    }

}
