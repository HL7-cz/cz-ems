// A.2.6 Objektivní nález

Profile: CZ_ObservationVitalSignsObligationsEms
Parent: CZ_ObservationVitalSignsEms
Id: cz-observation-vs-obl-ems
Title:    "Observation Vital Signs: Obligations"
Description: "This profile defines obligations for a vital signs observation in FHIR for the purpose of this guide."
// A.2.6.2 Základní životní funkce
// Creator Obligations L3 ============>
* code insert OblCreator(#SHALL:populate,L3)                 // A.2.6.2.1 Typ vyšetření 1..1
* value[x] insert OblCreator(#SHALL:populate,L3)             // A.2.6.2.3.4 Výsledek 1..1
* effective[x] insert OblCreator(#SHALL:populate,L3)         // A.2.6.2.3.5 Datum a čas měření 1..1

// Consumer Obligations L3 ===========>
* code insert OblConsumer(#SHALL:display,L3)
* value[x] insert OblConsumer(#SHALL:display,L3)
* effective[x] insert OblConsumer(#SHALL:display,L3)


Profile: CZ_ObservationGCSObligationsEms
Parent: CZ_ObservationGCSEms
Id: cz-observation-gcs-obl-ems
Title:    "Observation GCS: Obligations"
Description: "This profile defines obligations for a coma score observation in FHIR for the purpose of this guide."
// A.2.6.2 Základní životní funkce (GCS jako typ vyšetření), dílčí skóre nejsou v logickém modelu
// Creator Obligations L3 ============>
* code insert OblCreator(#SHALL:populate,L3)
* value[x] insert OblCreator(#SHALL:populate,L3)
* effective[x] insert OblCreator(#SHALL:populate,L3)
* component insert OblCreator(#SHOULD:populate-if-known,L3)

// Consumer Obligations L3 ===========>
* code insert OblConsumer(#SHALL:display,L3)
* value[x] insert OblConsumer(#SHALL:display,L3)
* effective[x] insert OblConsumer(#SHALL:display,L3)
* component insert OblConsumer(#SHOULD:display,L3)


Profile: CZ_ObservationOxygenObligationsEms
Parent: CZ_ObservationOxygenEms
Id: cz-observation-oxygen-obl-ems
Title:    "Observation Oxygen: Obligations"
Description: "This profile defines obligations for an oxygen therapy observation in FHIR for the purpose of this guide."
// Creator Obligations L3 ============>
* valueBoolean insert OblCreator(#SHALL:populate-if-known,L3)               // A.2.6.2.3.2 Podání kyslíku 0..1
* component[OxygenFlowRate] insert OblCreator(#SHALL:populate-if-known,L3)  // A.2.6.2.3.3 Průtok kyslíku 0..1
* effective[x] insert OblCreator(#SHALL:populate,L3)                        // A.2.6.2.3.5 Datum a čas měření 1..1

// Consumer Obligations L3 ===========>
* valueBoolean insert OblConsumer(#SHALL:display,L3)
* component[OxygenFlowRate] insert OblConsumer(#SHALL:display,L3)
* effective[x] insert OblConsumer(#SHALL:display,L3)


Profile: CZ_ObservationOtherOFObligationsEms
Parent: CZ_ObservationOtherOFEms
Id: cz-observation-other-of-obl-ems
Title:    "Observation Other measured parameters: Obligations"
Description: "This profile defines obligations for other measured parameters in FHIR for the purpose of this guide."
// A.2.6.3 Další měřené parametry
// Creator Obligations L3 ============>
* code insert OblCreator(#SHALL:populate,L3)                 // A.2.6.3.2.1 Popis vyšetření 1..1
* value[x] insert OblCreator(#SHALL:populate,L3)             // A.2.6.3.2.2 Výsledek 1..1
* effective[x] insert OblCreator(#SHALL:populate,L3)         // A.2.6.3.2.3 Datum a čas měření 1..1

// Consumer Obligations L3 ===========>
* code insert OblConsumer(#SHALL:display,L3)
* value[x] insert OblConsumer(#SHALL:display,L3)
* effective[x] insert OblConsumer(#SHALL:display,L3)


Profile: CZ_ObservationHeightObligationsEms
Parent: CZ_ObservationHeightEms
Id: cz-observation-height-obl-ems
Title:    "Observation Height: Obligations"
Description: "This profile defines obligations for a body height observation in FHIR for the purpose of this guide."
// A.2.6.1 Antropometrické údaje (kód je v profilu pevně daný)
// Creator Obligations L3 ============>
* value[x] insert OblCreator(#SHALL:populate,L3)             // A.2.6.1.2.2 Výsledek 1..1
* effective[x] insert OblCreator(#SHOULD:populate-if-known,L3)

// Consumer Obligations L3 ===========>
* value[x] insert OblConsumer(#SHALL:display,L3)
* effective[x] insert OblConsumer(#SHOULD:display,L3)


Profile: CZ_ObservationWeightObligationsEms
Parent: CZ_ObservationWeightEms
Id: cz-observation-weight-obl-ems
Title:    "Observation Weight: Obligations"
Description: "This profile defines obligations for a body weight observation in FHIR for the purpose of this guide."
// A.2.6.1 Antropometrické údaje (kód je v profilu pevně daný)
// Creator Obligations L3 ============>
* value[x] insert OblCreator(#SHALL:populate,L3)             // A.2.6.1.2.2 Výsledek 1..1
* effective[x] insert OblCreator(#SHOULD:populate-if-known,L3)

// Consumer Obligations L3 ===========>
* value[x] insert OblConsumer(#SHALL:display,L3)
* effective[x] insert OblConsumer(#SHOULD:display,L3)


Profile: CZ_ObservationBMIObligationsEms
Parent: CZ_ObservationBMIEms
Id: cz-observation-bmi-obl-ems
Title:    "Observation BMI: Obligations"
Description: "This profile defines obligations for a body mass index observation in FHIR for the purpose of this guide."
// A.2.6.1 Antropometrické údaje (kód je v profilu pevně daný)
// Creator Obligations L3 ============>
* value[x] insert OblCreator(#SHALL:populate,L3)             // A.2.6.1.2.2 Výsledek 1..1
* effective[x] insert OblCreator(#SHOULD:populate-if-known,L3)

// Consumer Obligations L3 ===========>
* value[x] insert OblConsumer(#SHALL:display,L3)
* effective[x] insert OblConsumer(#SHOULD:display,L3)
