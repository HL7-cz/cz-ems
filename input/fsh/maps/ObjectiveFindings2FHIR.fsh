Instance: ObjectiveFindingsEMS2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* name = "A.2.6 ObjectiveFindingsEMS2FHIR2FHIRcz"
* title = "CZ Objective Findings Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ Emergency Medical Service Report ObjectiveFindings Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/ObjectiveFindingsEmsCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-observation-height-ems"
* group[=].element[+].code = #ObjectiveFindingsEmsCz.antropometricData
* group[=].element[=].display = "A.2.6.1 - Anthropometric Data"
* group[=].element[=].target.comment = "Composition.section:objectiveFindings.entry.ofType(CZ_ObservationBMIEms or CZ_ObservationHeightEms or CZ_ObservationWeightEms)"				
* group[=].element[=].target.code = #Composition.section:objectiveFindings
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #antropometricData.textResult
* group[=].element[=].display = "A.2.6.1.1 - Examination result text"
* group[=].element[=].target.code = #CZ_Observation.valueString
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #antropometricData.parametricRecord.description
* group[=].element[=].display = "A.2.6.1.2.1 - Examination description"
* group[=].element[=].target.code = #CZ_Observation.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #antropometricData.parametricRecord.result
* group[=].element[=].display = "A.2.6.1.2.2 - Formalized examination result"
* group[=].element[=].target.comment = ""				
* group[=].element[=].target.code = ##CZ_Observation.valueCodeableConcept
* group[=].element[=].target.equivalence = #equivalent	
// will be continued ...
