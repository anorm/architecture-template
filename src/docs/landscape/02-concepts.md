<!-- THIS FILE IS GENERATED -->
## Concepts

### Overview

```plantuml
@startuml
!include https://raw.githubusercontent.com/anorm/plantuml-ext/main/datamodelling.puml
Entity(company, "Company", "A legal entity", $example="") {
}

Entity(person, "Person", "A physical person", $example="") {
}

Entity(project, "Project", "A scoped piece of work", $example="") {
}

Rel(company, "owns", project, )
Rel(person, "is friends with", person, )
Rel_U(person, "works at", company, position|from|to)
Rel_L(person, "participated in", project, )
@enduml

```


### Details: Company

```plantuml
@startuml
!include https://raw.githubusercontent.com/anorm/plantuml-ext/main/datamodelling.puml
Entity(company, "Company", "A legal entity", $example="") {
}

Entity_Ext(person, "Person", "A physical person", $example="") {
}

Entity_Ext(project, "Project", "A scoped piece of work", $example="") {
}

Rel(company, "owns", project, )
Rel(person, "is friends with", person, )
Rel(person, "works at", company, position|from|to)
Rel(person, "participated in", project, )
@enduml

```

Descriptions can use all aspects of [markdown](https://commonmark.org/help/).

**Bold**, *Italic*

* Lists
  * Sublists

1. numbered
2. lists

| Tables | left | center | right   |
|--------|:-----|:------:|--------:|
|        | foo  | bar    | baz     |

Horizontal rule

---

```
Code blocks
````

```plantuml
title PlantUML diagrams
A -> B
```

and so on...


### Details: Person

```plantuml
@startuml
!include https://raw.githubusercontent.com/anorm/plantuml-ext/main/datamodelling.puml
Entity_Ext(company, "Company", "A legal entity", $example="") {
}

Entity(person, "Person", "A physical person", $example="") {
}

Entity_Ext(project, "Project", "A scoped piece of work", $example="") {
}

Rel(company, "owns", project, )
Rel(person, "is friends with", person, )
Rel(person, "works at", company, position|from|to)
Rel(person, "participated in", project, )
@enduml

```

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
occaecat cupidatat non proident, sunt in culpa qui officia deserunt
mollit anim id est laborum.


### Details: Project

```plantuml
@startuml
!include https://raw.githubusercontent.com/anorm/plantuml-ext/main/datamodelling.puml
Entity_Ext(company, "Company", "A legal entity", $example="") {
}

Entity_Ext(person, "Person", "A physical person", $example="") {
}

Entity(project, "Project", "A scoped piece of work", $example="") {
}

Rel(company, "owns", project, )
Rel(person, "is friends with", person, )
Rel(person, "works at", company, position|from|to)
Rel(person, "participated in", project, )
@enduml

```

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
occaecat cupidatat non proident, sunt in culpa qui officia deserunt
mollit anim id est laborum.



