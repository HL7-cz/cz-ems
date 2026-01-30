Instance: Alerts2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* name = "Alerts2FHIRcz"
* title = "CZ Alerts Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ EMS Report Alerts Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogAlertsCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-allergyIntolerance-ems"

* group[=].element[+].code = #Alerts.alergie
* group[=].element[=].display = "A.2.4.1 - Alergie a intolerance"
* group[=].element[=].target.code = #AllergyIntolerance
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.popis
* group[=].element[=].display = "A.2.4.1.1 - Popis alergie"
* group[=].element[=].target.code = #AllergyIntolerance.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.puvodce
* group[=].element[=].display = "A.2.4.1.2 - Původce"
* group[=].element[=].target.code = #AllergyIntolerance.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.typReakce
* group[=].element[=].display = "A.2.4.1.3 - Typ reakce"
* group[=].element[=].target.code = #AllergyIntolerance.type
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.reakce
* group[=].element[=].display = "A.2.4.1.4 - Reakce"
* group[=].element[=].target.code = #AllergyIntolerance.reaction.manifestation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #Alerts.allergy.riziko
* group[=].element[=].display = "A.2.4.1.5 - Riziko"
* group[=].element[=].target.code = #AllergyIntolerance.criticality
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.pocatekProjevu
* group[=].element[=].display = "A.2.4.1.6 - Počátek období projevu"
* group[=].element[=].target.code = #AllergyIntolerance.onset[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.konecProjevu
* group[=].element[=].display = "A.2.4.1.7 - Konec období projevu"
* group[=].element[=].target.code = #AllergyIntolerance.extension:abatement-datetime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.stav
* group[=].element[=].display = "A.2.4.1.8 - Stav"
* group[=].element[=].target.code = #AllergyIntolerance.clinicalStatus
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.miraJistoty
* group[=].element[=].display = "A.2.4.1.9 - Míra jistoty"
* group[=].element[=].target.code = #AllergyIntolerance.verificationStatus
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Alerts.allergy.posledniProjev
* group[=].element[=].display = "A.2.4.1.10 - Poslední projev"
* group[=].element[=].target.code = #AllergyIntolerance.lastOccurrence
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent


* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogAlertsCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-composition-ems"
* group[=].element[+].code = #Alerts.alergie
* group[=].element[=].display = "A.2.4.1 - Alergie a intolerance"
* group[=].element[=].target.code = #Composition.section:sectionAllergies
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #Alerts.varovani
* group[=].element[=].display = "A.2.4.2 - Varování"
* group[=].element[=].target.code = #Composition.section:sectionAlerts
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #Alerts.varovani.oznaceniVarovani
* group[=].element[=].display = "A.2.4.2.1 - Označení varování"
* group[=].element[=].target.code = #Composition.section:sectionAlerts.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto


* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogAlertsCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-flag-ems"
* group[=].element[+].code = #Alerts.varovani.oznaceniVarovani
* group[=].element[=].display = "A.2.4.2.1 - Označení varování"
* group[=].element[=].target.code = #Flag.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"

* group[=].element[+].code = #Alerts.varovani.oznaceniVarovani
* group[=].element[=].display = "A.2.4.2.1 - Označení varování"
* group[=].element[=].target.code = #Flag.code.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"

* group[=].element[+].code = #Alerts.medicalAlerts.kod
* group[=].element[=].display = "A.2.4.2.3 - Onemocnění či stav"
* group[=].element[=].target.code = #Flag.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked (cardinality)"

* group[=].element[+].code = #Alerts.medicalAlerts.specializovanyLekar
* group[=].element[=].display = "A.2.4.2.4 - Specializovaný lékař"
* group[=].element[=].target.code = #Flag.author
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"

* group[=].element[+].code = #Alerts.medicalAlerts.komentar
* group[=].element[=].display = "A.2.4.2.5 - Komentář"
* group[=].element[=].target.code = #Flag.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"

* group[=].element[+].code = #Alerts.medicalAlerts.uroven
* group[=].element[=].display = "A.2.4.2.6 - Úroveň"
* group[=].element[=].target.code = #Flag.extension:flagPriorityExt
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"

* group[=].element[+].code = #Alerts.medicalAlerts.platnost
* group[=].element[=].display = "A.2.4.2.7 - Období platnosti varování"
* group[=].element[=].target.code = #Flag.period
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"