Instance: diagnosticSummary2FHIR-cz-ems
InstanceOf: ConceptMap
Usage: #definition
* name = "DiagnosticSummary2FHIRCzEms"
* title = "CZ Diagnostic summary Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ EMS Report Diagnostic summary Model to this guide Map"""

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogDiagnosticSummary"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-condition-ems"
* group[=].element[+].code = #LogDiagnosticSummary.diagnosticSummary.problemDescription
* group[=].element[=].display = "A.2.8.1 - Problem description"
* group[=].element[=].target.code = #Condition.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #LogDiagnosticSummary.diagnosticSummary.details
* group[=].element[=].display = "A.2.8.2 - code"
* group[=].element[=].target.code = #Condition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

