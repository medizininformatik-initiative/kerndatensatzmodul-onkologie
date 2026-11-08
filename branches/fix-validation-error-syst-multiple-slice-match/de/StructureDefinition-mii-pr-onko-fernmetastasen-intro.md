Dieses Profil beschreibt Fernmetastasen, wie sie im Rahmen des oBDS in der Onkologie für die Meldung an die Krebsregister erfasst werden. Für jede Metastase sind folgende Datenfelder einzeln anzugeben:
* Datum der Feststellung
* Lokalisation basierend auf oBDS-eigener Kodierung

In der FHIR-Profilierung **SOLL** jede Fernmetastase als einzelne Ressource angelegt werden.
Im oBDS ist die Angabe von nicht-invasiven diagnostischen Prozeduren nicht vorgesehen. Ebensowenig muss laut oBDS der Grad der diagnostischen Sicherung (klinisch, radiologisch, histologisch) erhoben werden. Bei Bedarf **KANN** eine Fernmetastase auf entsprechende diagnostische Prozeduren verweisen.

Dieses Profil ist konform zum [Patho-Finding-Profil des MII-Pathologiebefundes](https://simplifier.net/guide/mii-ig-pathologie/Befund-TechnischeImplementierung-FHIRProfile-MII-PR-Patho-Finding?version=current) und kann daher als Observation in einen pathologischen Befundbericht eingebunden werden.

---

**Beispiele**

[mii-exa-onko-fernmetastasen-1](Observation-mii-exa-onko-fernmetastasen-1.html)
