<!-- markdownlint-disable MD041 -->
<!-- Quelle: MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Terminologien.page.md.
     Englische Fassung: input/pagecontent/weitere-klassifikationen-terminologien.md — beide
     Sprachfassungen synchron halten. -->

Diese Seite dokumentiert die Terminologien für weitere Klassifikationen in der Onkologie, einschließlich hämatologischer und organspezifischer Staging-Systeme.

### Hintergrund

<!-- TODO:REVIEW Die folgenden drei Sätze sind bereits in der Quellseite unvollständig bzw. fehlerhaft ("Ann Arbor bei", "Die Plattform 65c stellt", Tippfehler) und wurden wortgetreu übernommen. -->
Der oBDS definiert hauptsächlich TNM als Stagingsystem aus, viele weitere krankheits- ode rorganspezifischen Staging- und Gradingsysteme werden im oBDS über das Freitextfeld Weitere Klassifikationen abgebildet. Dazu gehören z.B. das Nottigham Grading beim Brustkrebs oder Ann Arbor bei
Die Plattform 65c stellt
Einige der Staging-Systeme sind international gebräuchlich und bereits in CodeSystems wie SNOMED-CT und NCIt/UMLS enthalten, während andere primär im deutschen/deutschsprachigen Kontext verwendet werden.

Auch wenn für einige Staging-Systeme ein SNOMED-Code vorhanden ist und dieser für die Interoperabilität besser ist als ein eigenen CodeSystem, haben wir uns für die Abbildung gemäß des oBDS entschieden, da ggfs. die Daten an den Standorten direkt in diesem Format vorliegen. Eine SNOMED-Annotierung kann hier in zukünftigen Versionen via ConceptMaps angestrebt werden.

### Hierarchisches CodeSystem für Klassifikationssysteme

Das **Weitere Klassifikationen CodeSystem** nutzt eine hierarchische Struktur zur Organisation verschiedener Staging- und Klassifikationssysteme:

#### CodeSystem: mii-cs-onko-weitere-klassifikationen-obds

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Terminologien.page.md gate=B -->
> Die Konzepte mit Code und Bezeichnung sowie deren Unterkonzepte sind auf der
> Artefaktseite
> [`mii-cs-onko-weitere-klassifikationen-obds`](CodeSystem-mii-cs-onko-weitere-klassifikationen-obds.html)
> dargestellt.
{: .ig-highlight .ig-highlight-grey}

### Struktur des hierarchischen Ansatzes

#### Alle Klassifikationssysteme (Elternkonzepte)

<!-- TODO:REVIEW Dieser Abschnitt ist bereits in der Quellseite ohne Inhalt (weder Text noch Abfrage). Inhalt ergänzen oder Abschnitt streichen. -->

### ValueSets mit descendant-of Filter

Die ValueSets nutzen **descendant-of Filter** für wartbare Terminologie-Verwaltung.

#### Haupt-ValueSet für alle Klassifikationswerte

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Terminologien.page.md gate=B -->
> Definition und Inhalt (Codes mit Bezeichnung) des Haupt-ValueSets sind auf der
> Artefaktseite
> [`mii-vs-onko-weitere-klassifikationen`](ValueSet-mii-vs-onko-weitere-klassifikationen.html)
> dargestellt.
{: .ig-highlight .ig-highlight-grey}

### mCODE STU4 Pattern Integration

Die Implementierung folgt dem **mCODE STU4 code+method+value Pattern**:

#### Profil-Elemente für code+method+value Pattern

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Terminologien.page.md gate=B -->
> Kardinalitäten, Kurzbeschreibungen und Binding-Stärken der Elemente
> `Observation.code`, `Observation.method` und
> `Observation.value[x]:valueCodeableConcept` sind auf der Artefaktseite
> [`mii-pr-onko-weitere-klassifikationen`](StructureDefinition-mii-pr-onko-weitere-klassifikationen.html)
> dargestellt.
{: .ig-highlight .ig-highlight-grey}

#### Beispiel-Implementierung

<!-- TODO:REVIEW Der folgende Beispielcode verweist auf das CodeSystem mii-cs-onko-weitere-klassifikationen; im Modul existiert derzeit nur mii-cs-onko-weitere-klassifikationen-obds. -->
```
Instance: mii-exa-onko-weitere-klassifikationen-binet
InstanceOf: MII_PR_Onko_Weitere_Klassifikationen

// Allgemeiner Code für Staging
* code = $sct#385388004 "Tumorstadium-Befund"

// Spezifische Methode
* method = $mii-cs-onko-weitere-klassifikationen#binet "BINET Staging System"

// Tatsächlicher Wert
* valueCodeableConcept = $mii-cs-onko-weitere-klassifikationen#binet-a "BINET A"
```

### Verfügbare ValueSets

#### Alle ValueSets für Weitere Klassifikationen (bereits in SNOMED + MII-definiert)

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Terminologien.page.md gate=B -->
> Für die Weiteren Klassifikationen stehen die ValueSets
> [`mii-vs-onko-weitere-klassifikationen`](ValueSet-mii-vs-onko-weitere-klassifikationen.html)
> (Klassifikationssysteme) und
> [`mii-vs-onko-weitere-klassifikationen-auspraegungen`](ValueSet-mii-vs-onko-weitere-klassifikationen-auspraegungen.html)
> (Klassifikationswerte) bereit; Name, Beschreibung und Status sind dort jeweils
> angegeben.
{: .ig-highlight .ig-highlight-grey}

### Gesamtes CodeSystem - Übersicht aller MII-definierten Codes

<!-- TODO:REVIEW Die Quellseite listet hier Haupt- und Unterkonzepte des CodeSystems mii-cs-onko-weitere-klassifikationen auf; dieses Artefakt existiert im Modul nicht (vorhanden ist mii-cs-onko-weitere-klassifikationen-obds). Abschnitt fachlich prüfen. -->
Die Haupt- und Unterkonzepte der MII-definierten Codes sind auf der
Artefaktseite
[`mii-cs-onko-weitere-klassifikationen-obds`](CodeSystem-mii-cs-onko-weitere-klassifikationen-obds.html)
dargestellt.

### Mapping zu oBDS

Die Weitere Klassifikationen entsprechen dem **oBDS Feld 9 "Weitere Klassifikationen"**:

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Terminologien.page.md gate=B -->
> Die oBDS-Mappings der einzelnen Elemente sind auf der Artefaktseite
> [`mii-pr-onko-weitere-klassifikationen`](StructureDefinition-mii-pr-onko-weitere-klassifikationen.html)
> im Abschnitt *Mappings* dargestellt.
{: .ig-highlight .ig-highlight-grey}

### SNOMED CT Mappings

Für einige Klassifikationssysteme existieren SNOMED CT Äquivalente:

- BINET → SNOMED CT: 1149214008 (Binet chronic lymphocytic leukemia staging)
- Ann Arbor → SNOMED CT: 254373007 (Ann Arbor lymphoma staging)
- WHO Grade → SNOMED CT: 277612008 (WHO tumor grade)

### Beispiele

#### FIGO Stadium IVB (Ovariale Tumore)

[mii-exa-onko-weitere-klassifikationen-1](Observation-mii-exa-onko-weitere-klassifikationen-1.html)

#### Ann Arbor Stadium IIIX

[mii-exa-onko-weitere-klassifikationen-2](Observation-mii-exa-onko-weitere-klassifikationen-2.html)

#### FIGO Grad 2

[mii-exa-onko-weitere-klassifikationen-3](Observation-mii-exa-onko-weitere-klassifikationen-3.html)
