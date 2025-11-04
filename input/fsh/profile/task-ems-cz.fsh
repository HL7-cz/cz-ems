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

// A.2.1.1.1 Číslo výjezdu
* identifier[dispatchNumber].use = #official // A.2.1.1.1
* identifier[dispatchNumber].value 1..1      // A.2.1.1.1

// A.2.1.1.2 Další identifikátor výjezdu
* identifier[otherId].use = #secondary       // A.2.1.1.2
* identifier[otherId].value 1..1             // A.2.1.1.2

// A.2.1.7 Klasifikace výjezdu
* reasonCode 1..1 MS                          // A.2.1.7.2 Klasifikace výzvy (ZOS)
* reasonCode from http://example.org/fhir/ValueSet/cz-ems-zos-classification (extensible)

* authoredOn 1..1 MS // A.2.2.2 Čas výzvy

// Použití extension
* extension contains CZ_UrgencyLevelTaskExtension named urgencyLevel 1..1 


