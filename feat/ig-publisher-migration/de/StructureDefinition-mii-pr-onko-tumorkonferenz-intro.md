Dieses Profil beschreibt die Tumorkonferenz und die Therapieempfehlungen für sowohl traditionelle als auch molekulare Tumorboard-Workflows.
Die Datenfelder sind seit der Version 2021 Teil des oBDS und werden in zwei verschiedenen Modulen erfasst. Da alle beteiligten Felder sehr gut über die FHIR CarePlan-Ressource abbildbar sind, wurden alle die Tumorkonferenz- und Therapieemfpehlungsfelder im Tumorkonferenz-Profil zusammengefasst.

### Unified Activity Slicing Architecture

Das Profil unterstützt **zwei verschiedene Implementierungsansätze** über Activity-Slicing:

#### **obds Slice**: Standard oBDS-Therapiekategorisierung
Für traditionelle Tumorboards mit oBDS 19.1 Kategorisierung:
- **Verwendung**: `activity[obds].detail.code` für Therapietyp (CH, HO, IM, ZS, etc.)
- **Status-Tracking**: `activity[obds].detail.status` und `activity[obds].detail.statusReason` für Therapieabweichungen
- **oBDS-Konformität**: Vollständige Abbildung der oBDS-Felder 19.1 und 19.2

#### **extended Slice**: Molekulare Tumorboard-Protokolle  
Für detaillierte molekulare Tumorboards mit strukturierten Therapieprotokollen:
- **Verwendung**: `activity[extended].reference` → RequestGroup/MedicationRequest/ServiceRequest
- **Anwendungsfälle**: Multi-Agent-Protokolle, pharmazeutische Klassen, spezifische Medikamentenauswahl
- **Erweiterte Funktionalität**: Über oBDS-Kategorisierung hinausgehende Detaillierung

### Gemeinsame Profilstruktur

Beide Slices teilen die gemeinsamen CarePlan-Elemente:
* **Patient-Referenz**: `subject`
* **Primärdiagnose-Referenz**: `addresses`
* **Tumorboard-Kategorie**: `category` nach oBDS 18.2
* **Datum**: `created` gemäß oBDS 18.1
* **Zusätzliche Informationen**: `supportingInfo` für relevante Verlaufs-Stagings

### Status-Management

#### Für obds Slice (traditionelle Tumorboards):
Die CarePlan-Ressource sieht eine verpflichtende Angabe des `status`-Elements einer `activity` vor. Die tatsächlich erfolgten Therapien werden in den Krebsregisterdaten erfasst und SOLLEN über `Procedure.basedOn(Reference(CarePlan))` auf die Tumorkonferenz-Ressource verweisen.

**Empfohlene Status-Codes** nach FHIR CarePlanActivityStatus:
- `completed`: Abgeschlossene Therapie
- `on-hold`: Therapieunterbrechung für noch nicht gestartete Therapie  
- `stopped`: Therapieunterbrechung für bereits gestartete Therapie
- `unknown`: Unbekannt, keine Statusinformationen verfügbar

**Therapieabweichungen**: Bei `on-hold` und `stopped` SOLL `statusReason` mit oBDS-Feld 'Therapieabweichung auf Wunsch des Patienten' befüllt werden.

#### Für extended Slice (molekulare Tumorboards):
Status-Tracking erfolgt in den referenzierten Ressourcen (RequestGroup, MedicationRequest, ServiceRequest). `activity.progress` kann für narrative Fortschrittsnotizen verwendet werden.

Jede Tumorkonferenz mit Therapieempfehlung SOLL als einzelne Ressource gespeichert und über `CarePlan.addresses(Reference(Condition))` auf die Primärdiagnose referenzieren. 

### FHIR Invariant Management

**Problem**: FHIR R4 Invariant cpl-3 verhindert gleichzeitige Nutzung von `activity.detail.code` und `activity.reference`

**Lösung**: Slice-spezifische Element-Deaktivierung:
- **obds slice**: `activity.detail` aktiviert, `activity.reference` deaktiviert (0..0)
- **extended slice**: `activity.reference` aktiviert, `activity.detail` deaktiviert (0..0)

### Implementierungsflexibilität

- **Rückwärtskompatibilität**: Bestehende oBDS-Implementierungen funktionieren unverändert
- **Hybride Ansätze**: Einzelne CarePlans können beide Slice-Typen verwenden
- **Schrittweise Adoption**: Start mit obds slice, Erweiterung zu extended slice bei Bedarf

### Anwendungsbeispiele

#### Traditionelles Tumorboard (obds slice):
```
* activity[obds].detail.code.coding = #OP "Operation"
* activity[obds].detail.status = #completed
```

#### Molekulares Tumorboard (extended slice):
```  
* activity[extended].reference = Reference(RequestGroup/molecular-protocol)
* activity[extended].progress.text = "HR+/HER2- mit PI3K-Aktivierung - CDK4/6 Inhibitor empfohlen"
```

#### Gemischter Ansatz:
```
* activity[obds].detail.code.coding = #OP "Operation"
* activity[extended].reference = Reference(RequestGroup/precision-medicine-protocol)
```

---

Mapping Datensatz zu FHIR

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele: 

    ```GET [base]/CarePlan?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter ```_profile``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/CarePlan?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

3. Der Suchparameter ```identifier``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?identifier=Tumorkonferenz_1```

    Anwendungshinweise: Weitere Informationen zur Suche nach "identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter ```category``` MUSS unterstützt werden:
    Beispiele:

    ```GET [base]/CarePlan?category=http://snomed.info/sct|734163000```

    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter ```subject``` MUSS unterstützt werden:
    Beispiele:

    ```GET [base]/CarePlan?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

6. Der Suchparameter ```period``` MUSS unterstützt werden:
    Beispiele:

    ```GET [base]/CarePlan?date=eq2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "period" finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#date).

7. Der Suchparameter ```contributor``` MUSS unterstützt werden:
    Beispiele:

    ```GET [base]/CarePlan?contributor=Practitioner/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "contributor" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

8. Der Suchparameter ```addresses``` MUSS unterstützt werden:
    Beispiele:

    ```GET [base]/CarePlan?addresses=Condition/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "addresses" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

9. Der Suchparameter ```activity-code``` MUSS unterstützt werden:
    Beispiele:

    ```GET [base]/CarePlan?activity-code=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapieempfehlung-typ|OP```

    Anwendungshinweise: Weitere Informationen zur Suche nach "activity-code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

**Beispiele**

### Traditionelle oBDS-Tumorkonferenz (obds slice):

[Beispiel: mii-exa-onko-tumorkonferenz-01](CarePlan-mii-exa-onko-tumorkonferenz-01.html)

### Molekulares Tumorboard (extended slice):

[Beispiel: mii-exa-onko-tumorkonferenz-pure-molecular](CarePlan-mii-exa-onko-tumorkonferenz-pure-molecular.html)

### Gemischter Ansatz (beide slices):

[Beispiel: mii-exa-onko-tumorkonferenz-mixed-approach](CarePlan-mii-exa-onko-tumorkonferenz-mixed-approach.html)
