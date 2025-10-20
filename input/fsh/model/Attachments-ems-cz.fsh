Logical: LogCzAttachmentsEmsCz
Id: LogAttachmentsEmsCz
Title: "A.2.11 - Přílohy"
Description: """Záznam o výjezdu - Jedna příloha nebo kolekce příloh"""

* priloha 1..* Base "A.2.11.1 - Příloha" """Libovolná příloha vybraná uživatelem"""
  * typ 1..1 CodeableConcept "A.2.11.1.1 - Typ přílohy" """Definuje typ přílohy"""
  * format 1..1 CodeableConcept "A.2.11.1.2 - Formát přílohy" """Definuje formát přílohy"""
  * nazev 0..1 string "A.2.11.1.3 - Název přílohy" """Název, který blíže popisuje přílohu"""
  * popis 0..1 string "A.2.11.1.4 - Popis přílohy" """Doplňující popis přílohy"""
  * datumACasPrilohy 1..1 dateTime "A.2.11.1.5 - Datum a čas přílohy" """Datum a čas pořízení přílohy"""
  * dokument 1..1 base64Binary "A.2.11.1.6 - Dokument" """Fotografie, videozáznam, PDF z přístroje"""