Logical: LogCzDiagnosticSummaryCz
Id: LogDiagnostickySouhrnCz
Title: "A.2.7 - Diagnostický souhrn (cz)"
Description: """Zpráva o výjezdu ZZS – Diagnostický souhrn – A.2.7 CZ"""


* diagnostickySouhrn 1..* string "A.2.7.1 Diagnostický souhrn" """Všechny problémy/diagnózy, které ovlivňují péči během hospitalizace nebo které je důležité zaznamenat pro zajištění kontinuity péče. Rozlišuje se mezi problémy léčenými a neléčenými, dále mezi stavy přítomnými při přijetí, získanými během hospitalizace a neklasifikovatelnými. Popis je strukturovaný, dobře specifikovaný a kódovatelný."""
  * popisProblemu 1..1 string "A.2.7.1.1 - Popis problému" """Popis problému textem"""
  * detail 0..1 CodeableConcept "A.2.7.1.2 - Kód" """Formalizované vyjádření zdravotního problému kódem (klasifikace)."""
  * datumVzniku 1..1 dateTime "A.2.7.1.3 - Datum vzniku" """Datum vzniku onemocnění. Přesné nebo přibližné datum."""
  * datumVyreseniRemise 0..1 dateTime "A.2.7.1.4 - Datum vyřešení či remise" """Datum vyřešení či ustoupení problému do remise."""
  * kategorieProblemu 1..1 code "A.2.7.1.5 - Kategorie problému" """- POA - Stav byl přítomen při přijetí