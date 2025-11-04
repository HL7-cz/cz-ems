Instance: EndOfCare2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* name = "EndOfCare2FHIRcz"
* title = "CZ End of Care Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ EMS Report EndOfCare Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogEndOfCare"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-composition-ems"
* group[=].element[+].code = #LogEndOfCareCz.endOfCareSpecification
* group[=].element[=].display = "A.2.10.1 - End of Care Specification"
* group[=].element[=].target.comment = "Composition.section:handOver.entry.ofType(CZ_ConditionEms or CZ_Organisation or CZ_PractitionerCore)"
* group[=].element[=].target.code = #Composition.section:handOver
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogEndOfCare"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-condition-ems"
* group[=].element[+].code = #LogEndOfCareCz.endOfCareSpecification.endOfCareMethod
* group[=].element[=].display = "A.2.10.1.1 - Method of End of Care"
* group[=].element[=].target.code = #Condition.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #LogEndOfCareCz.endOfCareSpecification.dateTimeOfDeath
* group[=].element[=].display = "A.2.10.1.2 - Date and Time of Death"
* group[=].element[=].target.code = #Condition.onsetDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogEndOfCare"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-organization-core"
* group[=].element[+].code = #LogEndOfCareCz.endOfCareSpecification.cpalpIdentifier
* group[=].element[=].display = "A.2.10.1.3 - CPALP Identifier"
* group[=].element[=].target.code = #Organisation.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #LogEndOfCareCz.endOfCareSpecification.departmentIdentifier
* group[=].element[=].display = "A.2.10.1.4 - Department Identifier"
* group[=].element[=].target.code = #Organisation.partOf
* group[=].element[=].target.display = "Organization.partOf.ofType(CZ_Organisation)"
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogEndOfCare"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"
* group[=].element[+].code = #LogEndOfCareCz.endOfCareSpecification.handingOverStaffZzs
* group[=].element[=].display = "A.2.10.1.5 - EMS Handing-Over Staff Identifier"
* group[=].element[=].target.code = #Practitioner.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogEndOfCare"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"
* group[=].element[+].code = #LogEndOfCareCz.endOfCareSpecification.receivingStaffCpalp
* group[=].element[=].display = "A.2.10.1.6 - Receiving CPALP Healthcare Professional Identifier"
* group[=].element[=].target.code = #Practitioner.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #LogEndOfCareCz.endOfCareSpecification.receivingStaffText
* group[=].element[=].display = "A.2.10.1.7 - Receiving CPALP Healthcare Professional (Text)"
* group[=].element[=].target.code = #Practitioner.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent