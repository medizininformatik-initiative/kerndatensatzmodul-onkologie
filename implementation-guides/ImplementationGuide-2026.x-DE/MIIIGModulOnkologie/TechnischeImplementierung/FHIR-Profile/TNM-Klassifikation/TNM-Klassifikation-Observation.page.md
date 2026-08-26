---
parent: 
topic: TNMKlassifikationObservation
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation
---

## {{page-title}}





Dieses Profil ist das Gruppierungsprofil für eine TNM-Klassifikation in der Onkologie. 

Das Profil enthält das Referenzdatum und dient als Ankerpunkt für alle weiteren TNM-Einzelbeobachtungen zu diesem Zeitpunkt. Das Element `hasMember` enthält Referenzen zu allen verbundenen TNM-Einzelbeobachtungen.


Außerdem wird im Element `value` das UICC-Staging kodiert, dass von den untergeordneten TNM-Beobachtungen abgeleitet ist. 


### Erscheinungsformen der TNM-Klassifikation

Eine TNM-Klassifikation tritt im Behandlungsverlauf in verschiedenen Erscheinungsformen auf. Diese werden **nicht** über den oBDS-Meldeanlass unterschieden, sondern ausschließlich über zwei Achsen der FHIR-Repräsentation:

1. die **Code-Achse** des Gruppierungsprofils — `Observation.code` ist an das ValueSet `mii-vs-onko-tnm-klassifikation-typ` gebunden und trägt SNOMED CT `399537006` "Clinical TNM stage grouping", `399588009` "Pathologic TNM stage grouping" oder `399703000` "Integrated TNM category";
2. die **Präfix-Modifier der einzelnen Kategorien** — das c/p/u-Präfix als Extension auf `Observation.code` der Kategorie-Beobachtung sowie die UICC-Präfixe y, r und a als modifierExtension an der jeweiligen T-, N- bzw. M-Beobachtung.

Der Meldeanlass ist lediglich der typische Auslöser, aus dem sich die Erscheinungsform ergibt — er ist kein Unterscheidungsmerkmal und wird in der Ressource nicht abgebildet.

**(1) Klinisches Staging** (typischer Auslöser: Diagnose-Meldung). `code` = `399537006` "Clinical TNM stage grouping", die Kategorien tragen das c-Präfix. Das UICC-Stadium ist in aller Regel vorhanden, da klinisch alle drei Achsen T, N und M beurteilt werden.

**(2) Pathologisches Staging** (typischer Auslöser: Pathologie- oder OP-Meldung). `code` = `399588009` "Pathologic TNM stage grouping", die Kategorien tragen das p-Präfix, bei neoadjuvanter Vorbehandlung zusätzlich den y-Modifier (`ypT`, `ypN`). Ein UICC-Stadium wird hier typischerweise **nicht** angegeben: `value` ist im Meldungs-Panel bewusst mit 0..1 modelliert, da ein pathologisches Staging allein kein Stadium liefern kann — die M-Kategorie stammt in der Regel aus der klinischen Beurteilung.

**(3) Verlauf** (typischer Auslöser: Verlaufs-Meldung). Die Erscheinungsform ist variabel. Meist handelt es sich um ein erneutes klinisches Re-Staging (`code` = clinical), bei oder nach laufender Therapie ergänzt um den y-Modifier. Bei einem Rezidiv kommt der r-Modifier hinzu — dieser hängt am **Tumorstatus**, nicht am Meldeanlass, und kann daher auch außerhalb einer Verlaufs-Meldung auftreten. Erfolgt im Verlauf eine erneute Operation, kann die Klassifikation auch pathologisch sein.

**(4) Synthetisierte bzw. integrierte Klassifikation.** Hierfür existiert ein eigenes Profil `mii-pr-onko-tnm-klassifikation-synthetisiert` mit fixem `code` = `399703000` "Integrated TNM category". Es führt die Kategorien aus mehreren Quell-Klassifikationen zu einem kohärenten Stand zum Entscheidungszeitpunkt zusammen — auch gemischt, z. B. `ypT` und `ypN` aus der Pathologie mit `cM` aus der Klinik. Das UICC-Stadium ist hier **verpflichtend** (`value` 1..1), und `derivedFrom` referenziert verpflichtend die zugrunde liegenden Quell-Klassifikationen.

| Erscheinungsform | `Observation.code` | Kategorie-Präfixe | UICC-Stadium (`value`) | Profil |
|---|---|---|---|---|
| Klinisches Staging | `399537006` clinical | c | meist vorhanden | `mii-pr-onko-tnm-klassifikation` |
| Pathologisches Staging | `399588009` pathologic | p, yp | i. d. R. nicht vorhanden (0..1) | `mii-pr-onko-tnm-klassifikation` |
| Verlauf | clinical, ggf. pathologic | c/p, y bei/nach Therapie, r bei Rezidiv | variabel | `mii-pr-onko-tnm-klassifikation` |
| Synthetisiert / integriert | `399703000` integrated | gemischt (z. B. ypT + cN) | verpflichtend (1..1) | `mii-pr-onko-tnm-klassifikation-synthetisiert` |

Die Präfixe y, r und a sind als **modifierExtension** modelliert, weil sie die Interpretation des Kategorie-Wertes verändern: `ypT2` ist nicht gleichbedeutend mit `pT2`. Verarbeitende Systeme müssen diese Extensions kennen und dürfen eine Kategorie nicht ohne Auswertung des Präfixes interpretieren.


@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```


### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

Mapping Datensatz zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Onkologie'
    for differential.element where id.contains('TNMKlassifikation') 
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation'  
    for differential.element
    where mapping.identity='oBDS'
    select 
        oBDS: mapping.map,
        Definition: mapping.comment,
        FHIR: path
```

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele: 

    ```GET [base]/Observation?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?status=final

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".```

4. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|184305005```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

5. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

6. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

7. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?encounter=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

8. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?date=2024-02-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".

9. Der Suchparameter "method" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?method=http://loinc.org|LA26398-0

    Anwendungshinweise: Weitere Informationen zur Suche nach "method" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".```

10. Der Suchparameter "has-member" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?has-member=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "has-member" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

11. Der Suchparameter "derived-from" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?derived-from=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "derived-from" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

**Beispiele**

{{json:mii-exa-onko-tnm-klassifikation-TisN0M0}}

{{json:mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1}}

---
