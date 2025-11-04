Instance: ClinicalCourseAndRecommendationsEMS2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* name = "ClinicalCourseAndRecommendations2FHIRcz"
* title = "CZ ClinicalCourseAndRecommendations Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ EMS Report ClinicalCourseAndRecommendations Model to this guide mapping"""
* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogRecommendations"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-composition-ems"
* group[=].element[+].code = #Recommendations.courseOfTreatment
* group[=].element[=].display = "A.2.9.1 - Course of Treatment"
* group[=].element[=].target.comment = "Composition.section:courseOfTreatment.entry.ofType(CZ_ProcedureEms)"				
* group[=].element[=].target.code = #CZ_CompositionEms.section:courseOfTreatment
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Recommendations.recommendations
* group[=].element[=].display = "A.2.9.2 - Recommendations"
* group[=].element[=].target.comment = "Composition.section:recommendations.entry.ofType(CZ_CarePlanEms)"				
* group[=].element[=].target.code = #CZ_CompositionEms.section:recommendations
* group[=].element[=].target.equivalence = #relatedto	

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogRecommendations"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-procedure-ems"
* group[=].element[+].code = #Recommendations.courseOfTreatment.description
* group[=].element[=].display = "A.2.9.1.1 - Course Description"
* group[=].element[=].target.code = #CZ_ProcedureEms.code.text
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Recommendations.courseOfTreatment.timestamp
* group[=].element[=].display = "A.2.9.1.2 - Timestamp"
* group[=].element[=].target.code = #CZ_ProcedureEms.performedDateTime
* group[=].element[=].target.equivalence = #equivalent


* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogRecommendations"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-carePlan-ems"
* group[=].element[+].code = #Recommendations.recommendations.description
* group[=].element[=].display = "A.2.9.2.1 - Recommendation Description"
* group[=].element[=].target.code = #CZ_CarePlanEms.description
* group[=].element[=].target.equivalence = #equivalent	
