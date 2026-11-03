> **DEPRECATED seit v2027.** Multiple Primärtumoren (UICC-m-Suffix, oBDS 8.10) werden
> nicht mehr als eigene Observation geführt, sondern als
> `component[multipleTumoren]` an der
> [T-Kategorie](StructureDefinition-mii-pr-onko-tnm-t-kategorie.html) — das Suffix ist
> T-exklusiv und gehört an die Kategorie, nicht als gleichrangiges Panel-Mitglied daneben.
> Bestandsdaten bleiben lesbar; für Neuimplementierungen ist die Component zu verwenden.
{: .ig-highlight .ig-highlight-grey}

Dieses Profil bildet das m-Symbol einer TNM-Klassifikation ab.
Das m-Symbol gibt das Vorhandensein multipler Tumore an.

Die explizite Verwendung von `m` kodiert für mehrere Tumore, wobei die genaue Anzahl unbekannt ist. Statt `m` kann auch eine spezifische Anzahl angebenen werden.

Das m-Symbol ist von der M-Kategorie für die Bewertung von Fernmetastasen abzugrenzen.
