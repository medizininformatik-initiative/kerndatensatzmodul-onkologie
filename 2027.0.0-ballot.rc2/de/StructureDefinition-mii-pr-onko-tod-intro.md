Dieses Profil beschreibt ob und wann ein Patient tumorbedingt verstorben ist. Es ist Teil des oBDS-Tumorregister-Datensatzes.

Das Todesdatum kann im MII Kerndatensatz ebenfalls über die Patienten-Ressource abgebildet werden, wurde hier aber aus Gründen der Datenstruktur und -zusammengehörigkeit zusätzlich als Observation hinzugefügt.

Seit der Version MII-Patient(2024) ist auch ein Sterbegrund direkt in der Patientenressource vorhanden. Im Unterschied zu der oBDS-Todesursache, die mittels ICD-10-GM erfasst wird, bezieht sich das MII-Patient-Sterbeursache auf die ICD-10-WHO.

Es beinhaltet:
* eine Referenz auf Patient
* den Observation-Code "184305005 | Cause of death (observable entity)" (SNOMED-CT)
* das genaue Todesdatum
* eine Kodierung der Todesursache nach ICD-10 GM
* eine Interpretation des Zusammenhanges zwischen Tumorerkrankung und Todesursache

Im oBDS wird die Todesmeldung als eigenständige Entität übermittelt. Da es nur eine Todesmeldung für jeden Patient geben sollte, ist in der FHIR-Profilierung daher keine direkte Verknüpfung zur Primärdiagnose oder den einzelnen Verlaufs-Stagings hinterlegt, sondern ausschließlich zum Patienten.

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tod/Tod-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tod/Tod-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Tod](StructureDefinition-mii-pr-onko-tod.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-tod-j](Observation-mii-exa-onko-tod-j.html)

[mii-exa-onko-tod-n](Observation-mii-exa-onko-tod-n.html)

[mii-exa-onko-tod-u](Observation-mii-exa-onko-tod-u.html)
