Logical: LogCzAttachmentsCz
Id: LogAttachmentsCz
Title: "A.4 - Přílohy"
Description: """Záznam o výjezdu ZZS - Jakékoli další přílohy spojené s výjezdem."""

* priloha 1..* Base "A.4 - Příloha" """Libovolná příloha vybraná uživatelem"""
  * typ 1..1 CodeableConcept "A.4.1 - Typ přílohy" """Definuje typ přílohy"""
  * format 1..1 CodeableConcept "A.4.2 - Formát přílohy" """Definuje formát přílohy"""
  * nazev 0..1 string "A.4.3 - Název přílohy" """Název, který blíže popisuje přílohu"""
  * popis 0..1 string "A.4.4 - Popis přílohy" """Doplňující popis přílohy"""
  * datumACasPrilohy 1..1 dateTime "A.4.5 - Datum a čas přílohy" """Datum a čas pořízení přílohy"""
  * dokument 1..1 base64Binary "A.4.6 - Dokument" """Fotografie, videozáznam, PDF z přístroje"""