Logical: LogCzEndOfCareCz
Id: LogEndOfCareCz
Title: "A.2.10 - Ukončení"
Description: """Záznam o výjezdu ZZS - Ukončení"""

* specifikaceUkonceni 1..1 Base "A.2.10.1 - Specifikace ukončení" """Specifikace ukončení péče"""
  * zpusobUkonceni 1..1 CodeableConcept "A.2.10.1.1 - Způsob ukončení" """Popis způsobu ukončení péče o pacienta. Hodnota z číselníku Způsob ukončení."""
  * datumCasUmrti 0..1 dateTime "A.2.10.1.2 - Datum a čas úmrtí" """Datum a čas úmrtí (odhadem)."""
  * identifikaceCpalp 0..1 Identifier "A.2.10.1.3 - Identifikace CPALP" """Identifikátor cílového poskytovatele lůžkové akutní péče. Hodnota z Kmenového registru PZS."""
  * identifikaceOddeleni 0..1 Identifier "A.2.10.1.4 - Identifikace oddělení" """Identifikátor cílového oddělení CPALP. Hodnota z Kmenového registru PZS."""
  * identifikacePredavajiciPracovnikZzs 0..1 Identifier "A.2.10.1.5 - Identifikace předávajícího pracovníka ZZS" """Identifikátor předávajícího pracovníka záchranné služby. Hodnota z Kmenového registru ZP."""
  * identifikacePrebirajiciZdravotnikCpalp 0..1 Identifier "A.2.10.1.6 - Identifikace přebírajícího zdravotníka CPALP" """Identifikátor přebírajícího zdravotníka. Hodnota z Kmenového registru ZP."""
  * identifikacePrebirajiciZdravotnikText 0..1 string "A.2.10.1.7 - Identifikace přebírajícího zdravotníka CPALP textem" """Textová informace o přebírajícím zdravotníkovi, pokud není dostupný kód z registru."""