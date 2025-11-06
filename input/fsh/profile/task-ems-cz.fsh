Profile: CZ_TaskEms
Parent: Task
Id: cz-task-ems
Title: "Task: EMS Report (CZ)"
Description: "CZ Emergency Medical Service Task Resource"

// A.2.1.1 Identifikace výjezdu
* identifier 1..* MS    // A.2.1.1
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "use"
* identifier ^slicing.rules = #open
* identifier contains dispatchNumber 1..1 MS and otherId 0..* MS
* identifier ^short = "Dispatch number"   
* identifier ^definition = "Unique number identifying the emergency response. May include the main dispatch number and any additional identifiers assigned by the EMS system." 


// A.2.1.1.1 Číslo výjezdu
* identifier[dispatchNumber].use = #official // A.2.1.1.1
* identifier[dispatchNumber].value 1..1      // A.2.1.1.1

// A.2.1.1.2 Další identifikátor výjezdu
* identifier[otherId].use = #secondary       // A.2.1.1.2
* identifier[otherId].value 1..1             // A.2.1.1.2

// A.2.1.7 Klasifikace výjezdu
* reasonCode 1..1 MS                          // A.2.1.7.2 Klasifikace výzvy (ZOS)
* reasonCode from TaskReasonCodeEmsVS (required)
* reasonCode ^short = "Call classification (dispatch center classification)"
* reasonCode ^definition = "Preliminary information about the patient’s condition – “working diagnosis” – reason for dispatch"

* authoredOn 1..1 MS // A.2.2.2 Čas výzvy
* authoredOn ^short = "Time dispatch order issued to response unit"
* authoredOn ^definition = "The time the dispatch center issued the order for the response unit to depart. Marks the moment when the response team was officially assigned to the incident."

// A.2.1.7.1 Urgentnost výjezdu
// Použití extension
* extension contains CZ_UrgencyLevelTaskExtension named urgencyLevel 1..1 
* extension[urgencyLevel] ^short = "Urgency level of the dispatch"
* extension[urgencyLevel] ^definition = "Indicates the urgency level assigned by the dispatch center."


