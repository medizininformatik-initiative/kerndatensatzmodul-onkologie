---
parent: 
topic: TNM-Kategories
---

## {{page-title}}

Dieses Profil ist ein Container für ein TNM-Staging in der Onkologie. 

Der oBDS erfasst die TNM-Klassifikation umfassend in einzelnen Datenfeldern. Die T-, N- und M-Kategorien können zusammenhängend oder getrennt erfasst werden. Spezifische Ausprägungen, z.B. eine klinische oder pathologische Klassifikation, lassen sich ebenfalls abbilden.

Im folgenden sind die Profile für T-, N- und M-Kategorien dargestellt.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie' or  
url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie' or
url= 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie'     
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
order by 
    name desc
```

---


### Inhalt TNM T-Kategorie (Tumorgröße)

<tabs>
<tab title="Darstellung">{{tree: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie, buttons}}</tab>
  
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	           url =        'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie'
        select
	        Beschreibung: description
        with
            no header
        ```

        @```
        from 
            StructureDefinition 
        where 
               url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie'
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie}}</tab>
  <tab title="JSON">{{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie}}</tab>
  <tab title="Link">{{link:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie}}</tab>
</tabs>

### Inhalt TNM N-Kategorie (Lymphknoten)

<tabs>
<tab title="Darstellung">{{tree: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie, buttons}}</tab>
  
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	           url =        'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie'
        select
	        Beschreibung: description
        with
            no header
        ```

        @```
        from 
            StructureDefinition 
        where 
               url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie'
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie}}</tab>
  <tab title="JSON">{{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie}}</tab>
  <tab title="Link">{{link:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie}}</tab>
</tabs>

---

### Inhalt TNM M-Kategorie (Fernmetastasen)

<tabs>
<tab title="Darstellung">{{tree: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie, buttons}}</tab>
  
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	           url =        'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie'
        select
	        Beschreibung: description
        with
            no header
        ```

        @```
        from 
            StructureDefinition 
        where 
               url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie'
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie}}</tab>
  <tab title="JSON">{{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie}}</tab>
  <tab title="Link">{{link:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie}}</tab>
</tabs>

---

Mapping Datensatz zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Onkologie'
    for differential.element where id.contains('TNM')
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition 
where    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-t-kategorie' or  
url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-n-kategorie' or
url= 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-m-kategorie' 
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
    
    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie```

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie```

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "part-of" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?part-of=Procedure/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "part-of" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

4. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?status=final

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".```

5. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|184305005```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

6. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

7. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

8. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?encounter=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

9. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?date=2024-02-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".

10. Der Suchparameter "method" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?method=http://loinc.org|LA26398-0

    Anwendungshinweise: Weitere Informationen zur Suche nach "method" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".```

11. Der Suchparameter "has-member" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?has-member=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "has-member" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

12. Der Suchparameter "derived-from" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?derived-from=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "derived-from" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

**Beispiele**

{{json:}}

---
