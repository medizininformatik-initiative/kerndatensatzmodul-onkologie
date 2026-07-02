Diese Seite dokumentiert die Terminologien für weitere Klassifikationen in der Onkologie, einschließlich hämatologischer und organspezifischer Staging-Systeme.

### Hintergrund
Der oBDS definiert hauptsächlich TNM als Stagingsystem aus, viele weitere krankheits- ode rorganspezifischen Staging- und Gradingsysteme werden im oBDS über das Freitextfeld Weitere Klassifikationen abgebildet. Dazu gehören z.B. das Nottigham Grading beim Brustkrebs oder Ann Arbor bei 
Die Plattform 65c stellt 
Einige der Staging-Systeme sind international gebräuchlich und bereits in CodeSystems wie SNOMED-CT und NCIt/UMLS enthalten, während andere primär im deutschen/deutschsprachigen Kontext verwendet werden. 

Auch wenn für einige Staging-Systeme ein SNOMED-Code vorhanden ist und dieser für die Interoperabilität besser ist als ein eigenen CodeSystem, haben wir uns für die Abbildung gemäß des oBDS entschieden, da ggfs. die Daten an den Standorten direkt in diesem Format vorliegen. Eine SNOMED-Annotierung kann hier in zukünftigen Versionen via ConceptMaps angestrebt werden. 

### Hierarchisches CodeSystem für Klassifikationssysteme

Das **Weitere Klassifikationen CodeSystem** nutzt eine hierarchische Struktur zur Organisation verschiedener Staging- und Klassifikationssysteme:

#### CodeSystem: mii-cs-onko-weitere-klassifikationen-obds

### Struktur des hierarchischen Ansatzes

#### Alle Klassifikationssysteme (Elternkonzepte)

### ValueSets mit descendant-of Filter

Die ValueSets nutzen **descendant-of Filter** für wartbare Terminologie-Verwaltung.

#### Haupt-ValueSet für alle Klassifikationswerte

#### Inhalt des Haupt-ValueSets

### mCODE STU4 Pattern Integration

Die Implementierung folgt dem **mCODE STU4 code+method+value Pattern**:

#### Profil-Elemente für code+method+value Pattern

#### Beispiel-Implementierung

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

### Gesamtes CodeSystem - Übersicht aller MII-definierten Codes

#### Hauptkonzepte
#### Alle Unterkonzepte (Klassifikationswerte)
### Mapping zu oBDS

Die Weitere Klassifikationen entsprechen dem **oBDS Feld 9 "Weitere Klassifikationen"**:

### SNOMED CT Mappings

Für einige Klassifikationssysteme existieren SNOMED CT Äquivalente:

- BINET → SNOMED CT: 1149214008 (Binet chronic lymphocytic leukemia staging)
- Ann Arbor → SNOMED CT: 254373007 (Ann Arbor lymphoma staging)
- WHO Grade → SNOMED CT: 277612008 (WHO tumor grade)

### Beispiele

#### FIGO Stadium IVB (Ovariale Tumore)
[Beispiel: mii-exa-onko-weitere-klassifikationen-1](Observation-mii-exa-onko-weitere-klassifikationen-1.html)

#### Ann Arbor Stadium IIIX
[Beispiel: mii-exa-onko-weitere-klassifikationen-2](Observation-mii-exa-onko-weitere-klassifikationen-2.html)

#### FIGO Grad 2
[Beispiel: mii-exa-onko-weitere-klassifikationen-3](Observation-mii-exa-onko-weitere-klassifikationen-3.html)
