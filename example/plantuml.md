# Plantuml Demo

@startuml
  Alice -> Bob : Hello
@enduml

Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

@startuml
  interface if1
  if1 --> [Consumer]
  [Producer] --> if1
@enduml

Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

@startuml
skinparam Shadowing false

package "Scrum Team" {
    :Developer 1:
    :Developer 2:
    :Developer 3:
    :Architect:
    :Test Engineer:
    :Req. Engineer:
    :Quality Assistance:
}

package "Increment 1..m" {
    package "User Story 1..n" {
      actor SWDEV <<Role>>
      actor SWTE <<Role>>
      actor SWARC <<Role>>
      actor SWRE <<Role>>
      actor SWQA <<Role>>
      
      [Scrum Team] -> [MAN.3]
      
      SWRE -> [SWE.1]
      SWARC -> [SWE.2]
      SWDEV -> [SWE.3]
      SWTE -> [SWE.5]
      SWTE -> [SWE.6]

      [SWE.1] --> [SWE.2]
      [SWE.2] --> [SWE.3]
      [SWE.3] --> [SWE.4]
      [SWE.4] --> [SWE.5]
      [SWE.5] --> [SWE.6]
      
      [SWE.1] <-- [SWE.2]
      [SWE.2] <-- [SWE.3]
      [SWE.3] <-- [SWE.4]
      [SWE.4] <-- [SWE.5]
      [SWE.5] <-- [SWE.6]
      
      [MAN.3] --> [SWE.1]
      note right of [MAN.3]
      Sprint Planning
      end note
      note right of [SWE.1]
      SW Requirements Engineering
      end note
      note right of [SWE.2]
      SW Architecture
      end note
      note right of [SWE.3]
      SW Detailed Design
      end note
      note right of [SWE.4]
      SW Unit Verification
      end note
      note right of [SWE.5]
      SW Integration, Integration Test
      end note
      note right of [SWE.6]
      SW Qualification Test
      end note
    }
}

@enduml