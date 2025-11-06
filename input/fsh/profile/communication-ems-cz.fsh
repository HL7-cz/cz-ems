Profile: CZ_CommunicationEms
Parent: Communication
Id: cz-communication-ems
Title: "Communication: EMS Report (CZ)"
Description: "CZ Emergency Medical Service Communication Resource"

* status 1..1 MS
* status = #completed                    // A.2.1 (dokončený hovor)
* basedOn 0..* MS                        // A.2.1 (vztah k Task=dispatch)
* basedOn only Reference(Task)

// A.2.1.4 Identifikace operátorů ZOS
* recipient 1..* MS                      // A.2.1.4 (operátor/ři)
* recipient ^short = "Dispatch center operator(s) identification"
* recipient ^definition = "Specifies the identification of the dispatch center operator or operators who received and/or managed the emergency call."
* recipient only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_RelatedPersonCore)
* recipient.identifier 1..1 MS           // A.2.1.4.1 Identifikátor operátora (může být přímo v Reference)
* recipient ^short = "Dispatch operator identifier"
* recipient ^definition = "Unique identifier of the dispatch center operator. May represent an internal identifier assigned by the healthcare provider’s information system or, preferably, a national healthcare professional ID such as a license or registration number."

// A.2.1.4.4 role operátora – přes PractitionerRole.code (na referencovaném zdroji)
// Jména operátora (A.2.1.4.2/4.3) dodá referencovaný Practitioner (MS)

// A.2.1.8 Kontakt volajícího
* sender only Reference(CZ_RelatedPersonCore)
* sender ^short = "Caller contact"
* sender ^definition = "Telephone number or other contact information of the person who initiated the emergency call."


