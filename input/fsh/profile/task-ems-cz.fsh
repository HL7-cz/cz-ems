Profile: CZ_TaskEms
Parent: Task
Id: cz-task-ems
Title: "CZ Emergency Medical Service Task"
Description: "CZ Emergency Medical Service Task Resource"

// A.2.1.1 Identifikace výjezdu
* identifier 1..* MS    // A.2.1.1
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "type"
* identifier ^slicing.rules = #open
* identifier contains dispatchNumber 1..1 MS and otherId 0..* MS

// A.2.1.1.1 Číslo výjezdu
* identifier[dispatchNumber].use = #official // A.2.1.1.1
* identifier[dispatchNumber].type 1..1       // A.2.1.1.1
* identifier[dispatchNumber].system 1..1     // A.2.1.1.1
* identifier[dispatchNumber].value 1..1      // A.2.1.1.1

// A.2.1.1.2 Další identifikátor výjezdu
* identifier[otherId].use = #secondary       // A.2.1.1.2
* identifier[otherId].type 1..1              // A.2.1.1.2
* identifier[otherId].system 1..1            // A.2.1.1.2
* identifier[otherId].value 1..1             // A.2.1.1.2

// A.2.1.7 Klasifikace výjezdu
* reasonCode 1..1 MS                          // A.2.1.7.2 Klasifikace výzvy (ZOS)
* reasonCode from http://example.org/fhir/ValueSet/cz-ems-zos-classification (extensible)

// Použití extension
* extension contains CzEmsUrgencyLevel named urgencyLevel 1..1 MS // A.2.1.7.1
// A.2.1.7.1 Naléhavost výjezdu (1–4) – vlastní extension
Extension: CzEmsUrgencyLevel
Id: ext-cz-ems-urgency-level
Title: "Urgency level (1–4)"
* value[x] only CodeableConcept                // A.2.1.7.1
* valueCodeableConcept from http://example.org/fhir/ValueSet/cz-ems-urgency-1to4 (required) // A.2.1.7.1
* ^context[0].type = #element
* ^context[0].expression = "Task"
* . ^short = "Naléhavost zásahu 1..4"         // A.2.1.7.1
* . ^definition = "Stupnice 1–4 dle ZZS."      // A.2.1.7.1

