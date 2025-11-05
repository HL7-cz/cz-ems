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
* group[=].element[=].target.comment = "#Encounter.hospitalization"
* group[=].element[=].target.code = #Composition.encounter.ofType(CZ_EncounterEms)
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogEndOfCare"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-encounter-ems"
* group[=].element[+].code = #LogEndOfCareCz.endOfCareSpecification
* group[=].element[=].display = "A.2.10.1 - End of Care Specification"
* group[=].element[=].target.comment = "#Encounter.hospitalization"
* group[=].element[=].target.code = #Encounter.hospitalization
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #LogEndOfCareCz.endOfCareSpecification.endOfCareMethod
* group[=].element[=].display = "A.2.10.1.1 - Method of End of Care"
* group[=].element[=].target.code = #Encounter.hospitalization.extension:TerminationMethod.extension:code.valueCoding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #LogEndOfCareCz.endOfCareSpecification.dateTimeOfDeath
* group[=].element[=].display = "A.2.10.1.2 - Date and Time of Death"
* group[=].element[=].target.code = #Encounter.hospitalization.extension:TerminationMethod.extension:dateTime.valueDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #LogEndOfCareCz.endOfCareSpecification.cpalpIdentifier
* group[=].element[=].display = "A.2.10.1.3 - CPALP Identifier"
* group[=].element[=].target.code = #Encounter.hospitalization.destination
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #LogEndOfCareCz.endOfCareSpecification.handingOverStaffZzs
* group[=].element[=].display = "A.2.10.1.5 - EMS Handing-Over Staff Identifier"
* group[=].element[=].target.code = #Encounter.hospitalization.extension:TerminationMethod.extension:handingOverStaff.valueIdentifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #LogEndOfCareCz.endOfCareSpecification.receivingStaffCpalp
* group[=].element[=].display = "A.2.10.1.6 - Receiving CPALP Healthcare Professional Identifier"
* group[=].element[=].target.code = #Encounter.hospitalization.extension:TerminationMethod.extension:receivingStaffId.valueIdentifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #LogEndOfCareCz.endOfCareSpecification.receivingStaffText
* group[=].element[=].display = "A.2.10.1.7 - Receiving CPALP Healthcare Professional (Text)"
* group[=].element[=].target.code = #Encounter.hospitalization.extension:TerminationMethod.extension:receivingStaffText.valueString
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