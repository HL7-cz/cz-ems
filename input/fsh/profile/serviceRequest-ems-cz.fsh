Profile: CZ_ServiceRequestEms
Parent: ServiceRequest
Id: cz-servicerequest-ems
Title: "ServiceRequest: EMS Report (CZ)"
Description: "This profile defines how to represent ServiceRequest resource in HL7 FHIR for the scope of this guide."

* authoredOn 1..1 MS // A.2.2.2 Čas výzvy
* authoredOn ^short = "Time dispatch order issued to response unit"
* authoredOn ^definition = "The time the dispatch center issued the order for the response unit to depart. Marks the moment when the response team was officially assigned to the incident."