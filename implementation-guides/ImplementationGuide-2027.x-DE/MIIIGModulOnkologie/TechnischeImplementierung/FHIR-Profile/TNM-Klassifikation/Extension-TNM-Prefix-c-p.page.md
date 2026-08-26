---
parent: 
topic: TNM
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix
---

## {{page-title}}

Der c/p/u Präfix wird in der TNM-Klassifikation benutzt, um die Methode der Klassifikation anzugeben:
- **c** (clinical): Klinische Klassifikation, basierend auf klinischen Angaben vor Therapiebeginn
- **p** (pathological): Pathologische Klassifikation, basierend auf pathohistologischer Untersuchung nach operativer Entfernung
- **u** (ultrasound): Klassifikation mittels Ultraschall (z.B. endoskopischer Ultraschall)

In der vorliegenden Profilierung nutzen die Profile der T-,N- und M-Kategorie alle die gleiche Extension. 

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix' 
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
