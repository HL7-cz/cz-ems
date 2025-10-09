Logical: LogEnDiagnosticSummary
Id: LogDiagnosticSummary
Title: "A.2.8 - Diagnostic Summary (en)"
Description: """Emergency Medical Service Report – Diagnostic Summary – A.2.8 EN"""

* diagnosticSummary 1..* Base "A.2.8 Diagnostic summary" """All problems/diagnoses that affect care during EMS."""
* SpecificationDiagnoses 1..1 string "A.2.8.1 - Specification of diagnoses in free text" """Specification of diagnoses or problems in free text"""
  * diagnosisFormalized 0..1 Base "A.2.8.2 - Formalized diagnosis" """Summary of diagnoses addressed by EMS dispatch in a formalized manner"""
  * code 1..1 CodeableConcept "A.2.8.2.1 - Diagnosis by code" """Formalized expression of a health problem by code (classification)."""
  * text 0..1 string "A.2.8.4 - Dg. text representation" """Meaning of the code according to the code system used."""
