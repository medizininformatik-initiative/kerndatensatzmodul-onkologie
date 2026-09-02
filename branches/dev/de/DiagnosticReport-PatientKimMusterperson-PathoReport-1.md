# PatientKimMusterperson-PathoReport-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-PathoReport-1**

## Beispiel DiagnosticReport: PatientKimMusterperson-PathoReport-1

-------

**German**

-------

## Pathology report Cancer Narrative 

| | |
| :--- | :--- |
| Subject | Kim Musterperson (no stated gender), DoB: 1956-03-14 |

**Report Details**

Histologie: Resektat vom 30.09.2021: Neoplasie des Ovars (Z.n. neoadjuvanter Therapie) (ICD-10-C56) Ovar o.n.A. (ICD-O-C56.9) Untersuchungsmaterial: Resektat WHO-Typ: Seröses Adenokarzinom (ICD-O M-8441/3) Lokale Tumorausbreitung: Ovartumor links mit einer max. Größe von 2,2 cm und tumorinfiltrierter Kapsel mit Nachweis von Tumorzellen auf der Ovaroberfläche, Anteil vitaler Tumorzellen von ca. 80 %. UICC-Klassifikation (8. Auflage): ypT3c. pM1b (HEP) L1. V0. Pn0 FIGO: IVB



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "PatientKimMusterperson-PathoReport-1",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "22034-3",
      "display" : "Pathology report Cancer Narrative"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "conclusion" : "Histologie: Resektat vom 30.09.2021: Neoplasie des Ovars (Z.n. neoadjuvanter Therapie) (ICD-10-C56) Ovar o.n.A. (ICD-O-C56.9) Untersuchungsmaterial: Resektat WHO-Typ: Seröses Adenokarzinom (ICD-O M-8441/3) Lokale Tumorausbreitung: Ovartumor links mit einer max. Größe von 2,2 cm und tumorinfiltrierter Kapsel mit Nachweis von Tumorzellen auf der Ovaroberfläche, Anteil vitaler Tumorzellen von ca. 80 %. UICC-Klassifikation (8. Auflage): ypT3c. pM1b (HEP) L1. V0. Pn0 FIGO: IVB"
}

```
