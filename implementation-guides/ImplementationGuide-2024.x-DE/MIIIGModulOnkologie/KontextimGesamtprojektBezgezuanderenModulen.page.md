## {{page-title}}
 
Das Erweiterungsmodul Onkologie bedient sich umfassend der Basismodule des MII. 
* Die onkologische Primärdiagnose basiert auf dem MII-Modul **[Diagnose][5]**  
* Die Therapiedokumentation von Operationen, Strahlen- und allgemeine Angaben zu Systemischen Therapien basieren auf dem MII-Modul **[Prozedur][6]**
* Die spezifische Kodierung von Wirkstoffen als Teil der Systemischen Therapie basiert auf dem MII-Modul **[Medikation][7]**. 

Da die Datenerfassung für den oBDS auf den Krebsregistermeldungen basiert, ist eine Abbildung über die oben genannten Module jedoch nur teilweise möglich.  

Für eine weitergehende Verknüpfung der onkologischen Registerdaten sind besonders folgende Erweiterungsmodule relevant. 
* [Pathologiebefundbericht][1] 
* [Biobank][2] 
* [Molekulargenetischer Befundbericht][3]
* [Bildgebung][4] (noch im Aufbau)

[1]: https://simplifier.net/medizininformatikinitiative-modulpathologie "MII KDS-Modul Pathologiebefundbericht"
[2]: https://simplifier.net/medizininformatikinitiative-modulbiobank "MII KDS-Modul Biobank"
[3]: https://simplifier.net/medizininformatikinitiative-modulomics "MII KDS-Modul Molekulargenetischer Befundbericht"
[4]: https://simplifier.net/Medizininformatik-Initiative-Modul-Bildgebung "MII KDS-Modul Bildgebung"
[5]: https://simplifier.net/mii-basismodul-diagnose-2024 "MII KDS-Modul Diagnose"
[6]: https://simplifier.net/mii-basismodul-prozedur-2024 "MII KDS-Modul Prozedur"
[7]: https://simplifier.net/mii-basismodul-medikation-2024 "MII KDS-Modul Medikation"


Langfristig ist eine enge Verzahnung mit den oben genannten Modulen geplant. In der ersten Version ist diese jedoch komplett optional. Das hat zwei primäre Gründe: 
1. Die einzelnen MII-Module wurden zu unterschiedlichen Zeitpunkten entwickelt und nutzen daher teilweise unterschiedliche Versionen der gleichen Packages (insb. Basisprofile DE). Eine Harmonisierung wird für den nächsten Releasezeitraum **Anfang 2025** angestrebt. 
2. Die Erzeugung von FHIR-Ressourcen aus anderen Modulen erfordert teilweise die Existenz von Daten, die in dieser Form nicht Teil des oBDS sind. (Beispiel: Das Modul Bioprobe erfordert bei der Erstellung zwingend die Angabe der Verfügbarkeit).  Da FHIR-Ressourcen derzeit (Stand April 2024) noch nicht flächendeckend aus Primärsystemen ausgespielt werden können, und nicht jeder  DIZ-Standorte zwingenderweise alle Erweiterungsmodule ganz oder teilweise in ETL-Strecken erzeugen können, ist die Verwendung von anderen MII-Modulen angedacht, aber optional. 

Das Erweiterungsmodul Onkologie bildet darüber hinaus die Grundlage für das **Erweiterungsmodul Molekulares Tumorboard**, in dem tiefergehende onkologisch relevante Fragestellungen wie Leitlinien-Behandlung,  Next-Generation-Sequencing und personalisierte Therapien detailliert abgebildet werden können. 
