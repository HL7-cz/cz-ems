Instance: diagnosticSummary2FHIR-cz-ems
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/cz-ems/ConceptMap/diagnosticSummary2FHIR-cz-ems"
* name = "DiagnosticSummary2FHIRCzEms"
* title = "EMS diagnostic summary Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN EMS Diagnostic summary Model to this guide Map"""

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogDiagnosticSummary"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-condition-ems"
* group[=].element[+].code = #LogDiagnosticSummary.diagnosticSummary.problemDescription
* group[=].element[=].display = "A.2.8.1.1 - Problem description"
* group[=].element[=].target.code = #Condition.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #LogDiagnosticSummary.diagnosticSummary.details
* group[=].element[=].display = "A.2.8.1.2 - code"
* group[=].element[=].target.code = #Condition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

