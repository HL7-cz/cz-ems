Logical: LogCzDiagnosticSummaryCz
Id: LogDiagnostickySouhrnCz
Title: "A.2.8 - Diagnostický souhrn"
Description: """Záznam o výjezdu ZZS - Diagnostický souhrn"""


* diagnostickySouhrn 1..* Base "A.2.8 Diagnostický souhrn" """Všechny problémy/diagnózy, které ovlivňují péči během výjezdu ZZS."""
  * upresneniDiagnozy 1..1 string "A.2.8.1 - Upřesnění diagnźy volným textem" """Upřesnění diagnóz nebo problémů volným textem"""
  * diagnozaFormalizovana 0..1 Base "A.2.8.2 - Diagnóza formalizovaná" """Souhrn diagnóz řešených výjezdem ZZS formalizovaně"""
  * kod 1..1 CodeableConcept "A.2.8.2.1 - Dg. kódem" """Formalizované vyjádření zdravotního problému kódem (klasifikace)."""
  * text 0..1 string "A.2.8.4 - Dg. textová reprezentace" """Význam kódu dle použitého kódového systému."""
