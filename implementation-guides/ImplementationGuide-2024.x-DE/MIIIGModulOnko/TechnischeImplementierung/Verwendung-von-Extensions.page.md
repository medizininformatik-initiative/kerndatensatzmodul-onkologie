## {{page-title}}

Die Umsetzung des oBDS erfolgt unter Verwendung von Extensions. Dies hat insbesondere mit der oBDS-Datenstruktur und den oBDS-spezifischen Codesystemen und dem Versuch zu tun, diese mit Modulen aus dem MII-Kerndatensatz abzubilden. 

Die vorliegenden Extensions wurden mit dem Fokus auf die Integration in den MII-Kerndatensatz und die Verwendung als Sekundärdatennutzung der Krebsregisterdaten über das FDPG gestaltet. 

Da die Verwendung von Extensions im FHIR-Kontext nach Möglichkeit zu vermeiden ist, zumindest solange es sinnvolle alternative Möglichkeiten innerhalb es bestehenden FHIR-Datenmodell gibt, sollen im Folgenden Umsetzungsalternativen aufgezeigt und diskutiert werden. 

### Prozeduren-Extension (Intention, Stellung)
__Intention__
* Notwendigkeit der Extension: 
    * die FHIR R4 Prozedur enthält kein Element, das die Behandlungsintention adäquat darstellen kann. 
    * die MII-Prozedur enthält daher eine Extension [Durchführungsabsicht](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht)

    * CarePlan enthält das Element Intention ; dieses beschreibt jedoch die Stärke der Intention  der Ressource (wie bindend die Ressource ist, also Plan, Option, Anforderung etc.) und kann damit nicht für die Kodierung der Behandlungsabsicht im Sinne des oBDS genutzt werden
* Alternativer Vorschlag
    * Eventuell kann über ein konsentiertes SNOMED-Mapping eine Übereinstimmung erreicht werden, so dass die Behandlungintention direkt in SNOMED-CT erfasst wird und so mittels der Extension [Durchführungsabsicht](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht) durchgeführt werden kann. 

__Stellung__
* Die Stellung einer Strahlen- oder Systemischen Therapie kann über die bisherigen FHIR-Prozeduren nicht abgebildet werden. Eine Abbildung über eine andere Ressource (z.B. in CarePlan als Teil der Tumorkonferenz) wurde diskutiert, aber als nicht vorteilhafter eingeschätzt. 


### Strahlentherapie-Bestrahlungs-Extension
* Notwendigkeit der Extension: Abbildung des komplexen oBDS-Bestrahlungs-Typ über traditionelle FHIR-Ressourcen derzeitig nur bedingt möglich. 
* Darstellung der Einzelbestrahlungen MII nicht möglich, da jeweils verpflichtende OPS-Codes oder SNOMED-CT-Codes angegeben werden müssen, die nicht für alle oBDS-Datenfelder vorliegen

* Alternativer Vorschlag
    * Strahlentherapie weiter as MII_Prozedur
    * Bestrahlung als R4 Prozedur definieren
        * bodySite für Zielgebiet, mit Lateralitätsextension
        * code als Applikationsart 
        * method als Slice für und Strahlenart
        * Abbildung von Dosis und Boost weiterhin über Extensions

### TNM (c/p, itc,sn) -Extensions

Alternative Umsetzungen: 
* als Einzelobservations mit bestehender TNM-Grouperlogik
    * Vorteil: verhält sich genauso wie andere Kategorien und Symbole
    * Nachteil: kommt nicht eigenständig vor, enge Kopplung an T/N/M_Klassifikationsprofile notwendig
* als Teil der T/N/M Kategorien (z.B. component)
    



