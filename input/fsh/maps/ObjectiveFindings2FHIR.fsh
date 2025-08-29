Instance: ObjectiveFindingsEMS2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* name = "A.2.6 ObjectiveFindingsEMS2FHIR2FHIRcz"
* title = "CZ Objective Findings Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ Emergency Medical Service Report ObjectiveFindings Model to this guide mapping"""
/*
* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/ObjectiveFindingsEmsCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-observation-height-ems"
* group[=].element[+].code = #LogRecommendations.courseOfTreatment
* group[=].element[=].display = "A.2.9.1 - Course of Treatment"
* group[=].element[=].target.comment = "Composition.section:clinicalCourseAndRecommendations.entry.ofType(CZ_ProcedureEms)"				
* group[=].element[=].target.code = #Composition.section:clinicalCourseAndRecommendations
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #courseOfTreatment.description
* group[=].element[=].display = "A.2.9.1.1 - Course Description"
* group[=].element[=].target.code = #CZ_ProcedureEms.code.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #courseOfTreatment.timestamp
* group[=].element[=].display = "A.2.9.1.2 - Timestamp"
* group[=].element[=].target.code = #CZ_ProcedureEms.performedDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #LogRecommendations.recommendations
* group[=].element[=].display = "A.2.9.2 - Recommendations"
* group[=].element[=].target.comment = "Composition.section:clinicalCourseAndRecommendations.entry.ofType(CZ_ProcedureEms)"				
* group[=].element[=].target.code = #Composition.section:clinicalCourseAndRecommendations
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[+].code = #recommendations.description
* group[=].element[=].display = "A.2.9.2.1 - Recommendation Description"
* group[=].element[=].target.code = #CZ_ProcedureEms.code.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
*/
