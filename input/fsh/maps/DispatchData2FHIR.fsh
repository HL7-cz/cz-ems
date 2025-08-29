Instance: DispatchDataEMS2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* name = "A.2.1 DispatchDataEMS2FHIRcz"
* title = "CZ DispatchData Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ Emergency Medical Service Report DispatchData Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/DispatchDataCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-task-ems"
// A.2.1.1 - Dispatch Identification
* group[=].element[+].code = #dispatchIdentification
* group[=].element[=].display = "A.2.1.1 - Dispatch Identification"
* group[=].element[=].target.code = #Task
* group[=].element[=].target.display = "Dispatch Identification"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #dispatchNumber
* group[=].element[=].display = "A.2.1.1.1 - Dispatch Identifier"
* group[=].element[=].target.code = #Task.identifier[dispatchNumber].value
* group[=].element[=].target.display = "identifier (slice: dispatchNumber).value"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].code = #additionalDispatchIdentifier
* group[=].element[=].display = "A.2.1.1.2 - Additional Dispatch Identifier"
* group[=].element[=].target.code = #Task.identifier[otherId].value
* group[=].element[=].target.display = "identifier (slice: otherId).value"
* group[=].element[=].target.equivalence = #relatedto
// A.2.1.7 - Dispatch Classification
* group[=].element[+].code = #dispatchClassification
* group[=].element[=].display = "A.2.1.7 - Dispatch Classification"
* group[=].element[=].target.code = #Task
* group[=].element[=].target.display = "Dispatch Classification"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #dispatchUrgency
* group[=].element[=].display = "A.2.1.7.1 - Dispatch Urgency"
* group[=].element[=].target.code = #Task.extension[urgencyLevel].valueCodeableConcept
* group[=].element[=].target.display = "extension (slice: urgencyLevel).valueCodeableConcept"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #callClassification
* group[=].element[=].display = "A.2.1.7.2 - Call Classification"
* group[=].element[=].target.code = #Task.reasonCode
* group[=].element[=].target.display = "reasonCode"
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/DispatchDataCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-vehicle-location-ems"
// A.2.1.2 - Vehicle Identification
* group[=].element[+].code = #vehicleIdentification
* group[=].element[=].display = "A.2.1.2 - Vehicle Identification"
* group[=].element[=].target.code = #Location.identifier
* group[=].element[=].target.display = "Vehicle Identification"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #licensePlate
* group[=].element[=].display = "A.2.1.2.1 - License Plate"
* group[=].element[=].target.code = #Location.identifier
* group[=].element[=].target.display = "License Plate"
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/DispatchDataCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-location-ems"
// A.2.1.5 - Dispatch Start Location
* group[=].element[+].code = #dispatchStartLocation
* group[=].element[=].display = "A.2.1.5 - Dispatch Start Location"
* group[=].element[=].target.code = #Location
* group[=].element[=].target.display = "Dispatch Start Location"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #address
* group[=].element[=].display = "A.2.1.5.1 - Address"
* group[=].element[=].target.code = #Location.address
* group[=].element[=].target.display = "Address"
* group[=].element[=].target.equivalence = #relatedto
// A.2.1.6 - Incident Location
* group[=].element[+].code = #incidentLocation
* group[=].element[=].display = "A.2.1.6 - Incident Location"
* group[=].element[=].target.code = #Location
* group[=].element[=].target.display = "Incident Location"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #gpsAddress
* group[=].element[=].display = "A.2.1.6.1 - GPS Address"
* group[=].element[=].target.code = #Location.position
* group[=].element[=].target.display = "GPS Address"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #address
* group[=].element[=].display = "A.2.1.6.2 - Address"
* group[=].element[=].target.code = #Location.address
* group[=].element[=].target.display = "Address"
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/DispatchDataCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-careteam-ems"
// A.2.1.3 - Crew Member Identification
* group[=].element[+].code = #crewMemberIdentification
* group[=].element[=].display = "A.2.1.3 - Crew Member Identification"
* group[=].element[=].target.code = #CareTeam
* group[=].element[=].target.display = "Crew Member Identification"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #crewMemberIdentifier
* group[=].element[=].display = "A.2.1.3.1 - Crew Member Identifier"
* group[=].element[=].target.code = #CareTeam.participant.member.identifier
* group[=].element[=].target.display = "Crew Member Identifier"
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/DispatchDataCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"
// A.2.1.3.1 - Crew Member Identifier
* group[=].element[+].code = #crewMemberIdentifier
* group[=].element[=].display = "A.2.1.3.1 - Crew Member Identifier"
* group[=].element[=].target.code = #Practitioner.identifier
* group[=].element[=].target.display = "Crew Member Identifier"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #firstName
* group[=].element[=].display = "A.2.1.3.2 - First Name"
* group[=].element[=].target.code = #Practitioner.name.given
* group[=].element[=].target.display = "First Name"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #lastName
* group[=].element[=].display = "A.2.1.3.3 - Last Name"
* group[=].element[=].target.code = #Practitioner.name.family
* group[=].element[=].target.display = "Last Name"
* group[=].element[=].target.equivalence = #relatedto

// A.2.1.3.4 - Role
* group[=].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/DispatchDataCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core"
* group[=].element[+].code = #role
* group[=].element[=].display = "A.2.1.3.4 - Role"
* group[=].element[=].target.code = #PractitionerRole.code
* group[=].element[=].target.display = "Role"
* group[=].element[=].target.equivalence = #relatedto

// A.2.1.4 - Dispatch Center Operator Identification
* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/DispatchDataCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-communication-ems"
* group[=].element[+].code = #dispatchCenterOperator
* group[=].element[=].display = "A.2.1.4 - Dispatch Center Operator Identification"
* group[=].element[=].target.code = #Communication.recipient
* group[=].element[=].target.display = "Dispatch Center Operator Identification"
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/DispatchDataCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"
// A.2.1.4.1 - Operator Identifier
* group[=].element[+].code = #operatorIdentifier
* group[=].element[=].display = "A.2.1.4.1 - Operator Identifier"
* group[=].element[=].target.code = #Practitioner.identifier
* group[=].element[=].target.display = "Operator Identifier"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #firstName
* group[=].element[=].display = "A.2.1.4.2 - First Name"
* group[=].element[=].target.code = #Practitioner.name.given
* group[=].element[=].target.display = "First Name"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #lastName
* group[=].element[=].display = "A.2.1.4.3 - Last Name"
* group[=].element[=].target.code = #Practitioner.name.family
* group[=].element[=].target.display = "Last Name"
* group[=].element[=].target.equivalence = #relatedto

// A.2.1.4.4 - Role
* group[=].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/DispatchDataCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core"
* group[=].element[+].code = #role
* group[=].element[=].display = "A.2.1.4.4  - Role"
* group[=].element[=].target.code = #PractitionerRole.code
* group[=].element[=].target.display = "Role"
* group[=].element[=].target.equivalence = #relatedto



