Logical: LogDispatchDataCz
Id: LogDispatchDataCz
Title: "A.2.1 - Dispatch Data (en)"
Description: """EMS report – Dispatch Data – A.2.1 EN"""

* dispatchIdentification 1..1 Base "A.2.1.1 - Dispatch Identification" """Identification of the dispatch"""
  * dispatchNumber 1..1 Identifier "A.2.1.1.1 - Dispatch Identifier" """Dispatch Identifier"""
  * additionalDispatchIdentifier 0..* Identifier "A.2.1.1.2 - Additional Dispatch Identifier" """Additional identifier(s) of the dispatch"""

* vehicleIdentification 1..1 Base "A.2.1.2 - Vehicle Identification" """Identification of the vehicle"""
  * licensePlate 1..1 Identifier "A.2.1.2.1 - License Plate" """License plate or call sign of the vehicle (incl. helicopter registration if applicable)"""

* crewMemberIdentification 1..* Base "A.2.1.3 - Crew Member Identification" """Identification of members of the responding crew"""
  * crewMemberIdentifier 1..1 Identifier "A.2.1.3.1 - Crew Member Identifier" """Identifier of the crew member"""
  * firstName 1..1 string "A.2.1.3.2 - First Name" """First name of the crew member"""
  * lastName 1..1 string "A.2.1.3.3 - Last Name" """Last name of the crew member"""
  * role 1..1 CodeableConcept "A.2.1.3.4 - Role" """Role of the crew member"""

* dispatchCenterOperator 1..1 Base "A.2.1.4 - Dispatch Center Operator Identification" """Identification of the dispatch center operator (ZOS operator)"""
  * operatorIdentifier 1..1 Identifier "A.2.1.4.1 - Operator Identifier" """Identifier of the dispatch center operator"""
  * firstName 1..1 string "A.2.1.4.2 - First Name" """First name of the operator"""
  * lastName 1..1 string "A.2.1.4.3 - Last Name" """Last name of the operator"""
  * role 1..1 CodeableConcept "A.2.1.4.4 - Role" """Role of the dispatch center operator"""

* dispatchStartLocation 1..1 Base "A.2.1.5 - Dispatch Start Location" """Location from where the dispatch is initiated"""
  * address 1..1 Address "A.2.1.5.1 - Address" """Address or GPS coordinates of the dispatch start location"""

* incidentLocation 1..1 Base "A.2.1.6 - Incident Location" """Location of the incident"""
  * gpsAddress 1..1 Address "A.2.1.6.1 - GPS Address" """GPS coordinates of the incident location"""
  * address 0..1 Address "A.2.1.6.2 - Address" """Address of the incident location"""

* dispatchClassification 1..1 Base "A.2.1.7 - Dispatch Classification" """Classification of the dispatch"""
  * dispatchUrgency 1..1 CodeableConcept "A.2.1.7.1 - Dispatch Urgency" """Urgency level of the dispatch (1 to 4)"""
  * callClassification 1..1 CodeableConcept "A.2.1.7.2 - Call Classification" """Classification of the call – preliminary information about the patient’s problem / reason for dispatch"""

* callerContact 0..1 Base "A.2.1.8 - Caller Contact" """Contact details of the caller"""
  * phone 1..1 ContactPoint "A.2.1.8.1 - Phone" """Phone number of the caller"""
