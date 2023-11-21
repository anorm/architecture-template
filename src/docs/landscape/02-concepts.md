<!-- THIS FILE IS GENERATED -->
## Concepts

### Overview

```plantuml
@startuml
!include https://raw.githubusercontent.com/anorm/plantuml-ext/main/datamodelling.puml
Entity(foo, "The foo", "The one and only foo", $example="") {
}

Entity(bar, "The bar", "The one before baz", $example="") {
}

Rel(foo, "has a lot of", bar, )
@enduml

```


### Details: The foo

```plantuml
@startuml
!include https://raw.githubusercontent.com/anorm/plantuml-ext/main/datamodelling.puml
Entity(foo, "The foo", "The one and only foo", $example="") {
}

Entity_Ext(bar, "The bar", "The one before baz", $example="") {
}

Rel(foo, "has a lot of", bar, )
@enduml

```

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
occaecat cupidatat non proident, sunt in culpa qui officia deserunt
mollit anim id est laborum.


### Details: The bar

```plantuml
@startuml
!include https://raw.githubusercontent.com/anorm/plantuml-ext/main/datamodelling.puml
Entity_Ext(foo, "The foo", "The one and only foo", $example="") {
}

Entity(bar, "The bar", "The one before baz", $example="") {
}

Rel(foo, "has a lot of", bar, )
@enduml

```

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
occaecat cupidatat non proident, sunt in culpa qui officia deserunt
mollit anim id est laborum.



