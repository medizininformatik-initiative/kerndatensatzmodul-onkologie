<!-- markdownlint-disable MD041 -->

### CapabilityStatement

Um eine dezentrale Datenauswertung mittels des Deutschen
Forschungsdatenportals für Gesundheit (FDPG) der Medizininformatik-Initiative
zu ermöglichen, MUSS die
[capabilities-Interaktion](https://www.hl7.org/fhir/R4/http.html#capabilities)
unterstützt werden, sodass durch den FHIR-Server unter `[BASE_URL]/metadata`
ein CapabilityStatement exponiert wird. Innerhalb dieses CapabilityStatements
MUSS angegeben werden, welche Profile inkl. Version sowie welche
Suchparameter unterstützt werden.

Nachfolgend wird aufgelistet, welche Inhalte verpflichtend im
CapabilityStatement angegeben werden MÜSSEN. Darüber hinaus MUSS die
Konformität zu dem nachfolgenden CapabilityStatement in der jeweiligen
CapabilityStatement-Instanz unter
[`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates)
angegeben werden.

Canonical:
`https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CapabilityStatement/mii-cps-onko-capabilitystatement`

Artefaktseite:
[CapabilityStatement des Moduls Onkologie](CapabilityStatement-mii-cps-onko-capabilitystatement.html)

{% include CapabilityStatement-mii-cps-onko-capabilitystatement-html.xhtml %}
