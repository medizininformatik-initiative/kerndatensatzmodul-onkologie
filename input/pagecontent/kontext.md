Das KDS-Modul Onkologie bedient sich umfassend der Basismodule des MII. 
* Die onkologische Primärdiagnose basiert auf dem MII-Modul **[Diagnose][5]**  
* Die Therapiedokumentation von Operationen, Strahlen- und allgemeine Angaben zu Systemischen Therapien basieren auf dem MII-Modul **[Prozedur][6]**
* Die spezifische Kodierung von Wirkstoffen als Teil der Systemischen Therapie basiert auf dem MII-Modul **[Medikation][7]**. 

Da die Datenerfassung für den oBDS auf den Krebsregistermeldungen basiert, ist eine Abbildung über die oben genannten Module jedoch nur teilweise möglich.  

Für eine weitergehende Verknüpfung der onkologischen Registerdaten sind besonders folgende KDS-Module relevant. 
* [Pathologiebefundbericht][1] 
* [Biobank][2] 
* [Molekulargenetischer Befundbericht][3]
* [Bildgebung][4] (noch nicht umgesetzt, Integration geplant für Version 2027)

[1]: https://simplifier.net/medizininformatikinitiative-modulpathologie "MII KDS-Modul Pathologiebefundbericht"
[2]: https://simplifier.net/medizininformatikinitiative-modulbiobank "MII KDS-Modul Biobank"
[3]: https://simplifier.net/medizininformatikinitiative-modulomics "MII KDS-Modul Molekulargenetischer Befundbericht"
[4]: https://simplifier.net/Medizininformatik-Initiative-Modul-Bildgebung "MII KDS-Modul Bildgebung"
[5]: https://simplifier.net/mii-basismodul-diagnose-2024 "MII KDS-Modul Diagnose"
[6]: https://simplifier.net/mii-basismodul-prozedur-2024 "MII KDS-Modul Prozedur"
[7]: https://simplifier.net/mii-basismodul-medikation-2024 "MII KDS-Modul Medikation"
[8]: https://simplifier.net/mii-erweiterungsmodul-molekulares-tumorboard "MII KDS-Modul Molekulares Tumorboard"

Langfristig ist eine enge Verzahnung mit den oben genannten Modulen geplant. In den ersten Versionen 2025 und 2026 ist diese jedoch komplett optional. Das hat vor allem einen Grund: 
2. Die Erzeugung von FHIR-Ressourcen aus anderen Modulen erfordert teilweise die Existenz von Daten, die in dieser Form nicht Teil des oBDS sind. (Beispiel: Das Modul Bioprobe erfordert bei der Erstellung zwingend die Angabe der Verfügbarkeit).  Da FHIR-Ressourcen derzeit (Stand Juli 2025) noch nicht flächendeckend aus Primärsystemen ausgespielt werden können, und nicht jeder  DIZ-Standorte zwingenderweise alle KDS-Module ganz oder teilweise in ETL-Strecken erzeugen können, ist die Verwendung von anderen MII-Modulen angedacht, aber optional. 

Das KDS-Modul Onkologie bildet darüber hinaus die Grundlage für das [KDS-Modul Molekulares Tumorboard][8], in dem tiefergehende onkologisch relevante Fragestellungen wie Leitlinien-Behandlung,  Next-Generation-Sequencing und personalisierte Therapien detailliert abgebildet werden können. Benötigte Anpassungen (z.B. genauere Anpassung der Therapieempfehlungen) wurden für das MTB-Modul ausspezifiziert und in die Version v2026 übernommen.
