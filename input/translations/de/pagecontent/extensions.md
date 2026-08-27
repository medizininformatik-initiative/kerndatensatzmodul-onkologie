<!-- markdownlint-disable MD041 -->

Die vollständige, automatisch generierte Liste der Extensions dieses Moduls
findet sich auf der [Artefakt-Übersicht](artifacts.html). Diese Seite
dokumentiert die Entwurfsentscheidungen: warum Extensions nötig wurden und
welche Alternativen diskutiert wurden.

### Verwendung von Extensions

Die Umsetzung des oBDS erfolgt unter Verwendung von Extensions. Dies hat
insbesondere mit der oBDS-Datenstruktur, den oBDS-spezifischen Codesystemen
und dem Versuch zu tun, diese mit Modulen aus dem MII-Kerndatensatz
abzubilden. Die vorliegenden Extensions wurden mit Fokus auf die Integration
in den MII-Kerndatensatz und die Sekundärdatennutzung der Krebsregisterdaten
über das FDPG gestaltet.

Da die Verwendung von Extensions im FHIR-Kontext nach Möglichkeit zu
vermeiden ist — zumindest solange es sinnvolle Alternativen innerhalb des
bestehenden FHIR-Datenmodells gibt — werden im Folgenden
Umsetzungsalternativen aufgezeigt und diskutiert.

### Prozeduren-Extensions (Intention, Stellung)

**Intention**

- Notwendigkeit der Extension:
  - Die FHIR-R4-Prozedur enthält kein Element, das die Behandlungsintention
    adäquat darstellen kann.
  - Die MII-Prozedur enthält daher eine Extension
    [Durchführungsabsicht](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht).
  - CarePlan enthält zwar das Element `intent`; dieses beschreibt jedoch die
    Verbindlichkeit der Ressource (Plan, Option, Anforderung etc.) und kann
    damit nicht für die Kodierung der Behandlungsabsicht im Sinne des oBDS
    genutzt werden.
- Alternativer Vorschlag: Eventuell kann über ein konsentiertes
  SNOMED-Mapping eine Übereinstimmung erreicht werden, sodass die
  Behandlungsintention direkt in SNOMED CT erfasst und mittels der Extension
  Durchführungsabsicht transportiert werden kann.

**Stellung zur operativen Therapie**

Die Stellung einer Strahlen- oder Systemischen Therapie kann über die
bisherigen FHIR-Prozeduren nicht abgebildet werden. Eine Abbildung über eine
andere Ressource (z. B. in CarePlan als Teil der Tumorkonferenz) wurde
diskutiert, aber als nicht vorteilhafter eingeschätzt.

### Strahlentherapie-Bestrahlungs-Extension

- Notwendigkeit der Extension: Die Abbildung des komplexen
  oBDS-Bestrahlungs-Typs über traditionelle FHIR-Ressourcen ist derzeit nur
  bedingt möglich.
- Eine Darstellung der Einzelbestrahlungen als eigenständige MII-Prozeduren
  ist nicht möglich, da jeweils verpflichtende OPS- oder SNOMED-CT-Codes
  angegeben werden müssten, die nicht für alle oBDS-Datenfelder vorliegen.
- Alternativer Vorschlag:
  - Strahlentherapie weiterhin als MII-Prozedur,
  - Bestrahlung als R4-Prozedur definieren:
    - `bodySite` für das Zielgebiet, mit Lateralitäts-Extension,
    - `code` als Applikationsart,
    - `method` als Slice für die Strahlenart,
    - Abbildung von Dosis und Boost weiterhin über Extensions.

### TNM-Extensions (c/p-Präfix, itc, sn)

Alternative Umsetzungen:

- als Einzelobservations mit bestehender TNM-Grouper-Logik
  - Vorteil: verhält sich genauso wie andere Kategorien und Symbole
  - Nachteil: kommt nicht eigenständig vor, enge Kopplung an die
    T/N/M-Klassifikationsprofile notwendig
- als Teil der T/N/M-Kategorien (z. B. `component`)
