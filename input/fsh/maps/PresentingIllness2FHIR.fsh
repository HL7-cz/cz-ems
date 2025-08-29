Instance: PresentingIllness2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* name = "PresentingIllness2FHIRcz"
* title = "CZ Presenting Illness to this guide Map"
* status = #draft
* experimental = true
* description = """CZ EMS Report Presenting Illness Model to this guide mapping"""


* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/PresentingIllnessEmsCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-composition-ems"
* group[=].element[+].code = #PresentingIllnessEmsCz
* group[=].element[=].display = "A.2.5.1 - Textual description"
* group[=].element[=].target.code = #Composition.section:presentingIllness.text
* group[=].element[=].target.equivalence = #equivalent