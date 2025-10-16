Instance: PresentIllness2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* name = "PresentIllness2FHIRcz"
* title = "CZ Present Illness to this guide Map"
* status = #draft
* experimental = true
* description = """CZ EMS Report Present Illness Model to this guide mapping"""


* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/PresentIllnessEmsCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-composition-ems"
* group[=].element[+].code = #PresentIllnessEmsCz
* group[=].element[=].display = "A.2.5.1 - Textual description"
* group[=].element[=].target.code = #Composition.encounter.reasonCode.text
* group[=].element[=].target.equivalence = #equivalent

