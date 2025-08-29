Profile: CZ_CommunicationEms
Parent: Communication
Id: cz-communication-ems
Title: "Communication: (EMS CZ)"
Description: "CZ Emergency Medical Service Communication Resource"

* status 1..1 MS
* status = #completed                    // A.2.1 (dokončený hovor)
* basedOn 0..* MS                        // A.2.1 (vztah k Task=dispatch)
* basedOn only Reference(Task)

// A.2.1.4 Identifikace operátorů ZOS
* recipient 1..* MS                      // A.2.1.4 (operátor/ři)
* recipient only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore)
* recipient.identifier 1..1 MS           // A.2.1.4.1 Identifikátor operátora (může být přímo v Reference)

// A.2.1.4.4 role operátora – přes PractitionerRole.code (na referencovaném zdroji)
// Jména operátora (A.2.1.4.2/4.3) dodá referencovaný Practitioner (MS)

// A.2.1.8 Kontakt volajícího
* extension contains CzEmsCallerContact named callerContact 1..1 MS // A.2.1.8.1

// A.2.1.8 Kontakt volajícího
Extension: CzEmsCallerContact
Id: ext-cz-ems-caller-contact
Title: "Caller contact"
* value[x] only ContactPoint             // A.2.1.8.1 Telefon
* ^context[0].type = #element
* ^context[0].expression = "Communication"
* . ^short = "Telefon/E.164 volajícího"  // A.2.1.8.1
* . ^definition = "Telefon nebo jiný kontakt na volajícího." // A.2.1.8.1

