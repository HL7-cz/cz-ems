Logical: LogEnDiagnosticSummary
Id: LogDiagnosticSummary
Title: "A.2.8 - Diagnostic Summary (en)"
Description: """Emergency Medical Service Report – Diagnostic Summary – A.2.8 EN"""

* diagnosticSummary 1..* string "A.2.8.1 - Diagnostic Summary" """All problems/diagnoses that affect care during hospitalization or that are important to record in order to ensure continuity of care. A distinction is made between treated and untreated problems, as well as between conditions present at admission, acquired during hospitalization, and unclassifiable. The description should be structured, well specified, and codable."""
  * problemDescription 1..1 string "A.2.8.1.1 - Problem Description" """Textual description of the problem."""
  * detail 0..1 CodeableConcept "A.2.8.1.2 - Code" """Formalized representation of the health problem by a code (classification)."""
  * onsetDate 1..1 dateTime "A.2.8.1.3 - Onset Date" """Date of onset of the condition. Exact or approximate date."""
  * resolutionOrRemissionDate 0..1 dateTime "A.2.8.1.4 - Resolution/Remission Date" """Date when the problem was resolved or entered remission."""
  * problemCategory 1..1 code "A.2.8.1.5 - Problem Category" """- POA – Condition was present on admission"""
