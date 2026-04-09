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

* group[=].element[+].code = #LogAlertsCz.alergie
* group[=].element[=].display = "A.2.4.1 - Alergie a intolerance"
* group[=].element[=].target.code = #AllergyIntolerance
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #LogAlertsCz.alergie.popis
* group[=].element[=].display = "A.2.4.1.1 - Popis alergie"
* group[=].element[=].target.code = #AllergyIntolerance.note
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #LogAlertsCz.alergie.puvodce
* group[=].element[=].display = "A.2.4.1.2 - Původce"
* group[=].element[=].target.code = #AllergyIntolerance.code
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #LogAlertsCz.alergie.typReakce
* group[=].element[=].display = "A.2.4.1.3 - Typ reakce"
* group[=].element[=].target.code = #AllergyIntolerance.type
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #LogAlertsCz.alergie.reakce
* group[=].element[=].display = "A.2.4.1.4 - Reakce"
* group[=].element[=].target.code = #AllergyIntolerance.reaction.manifestation
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #LogAlertsCz.alergie.riziko
* group[=].element[=].display = "A.2.4.1.5 - Riziko"
* group[=].element[=].target.code = #AllergyIntolerance.criticality
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #LogAlertsCz.alergie.pocatekProjevu
* group[=].element[=].display = "A.2.4.1.6 - Počátek období projevu"
* group[=].element[=].target.code = #AllergyIntolerance.onset[x]
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #LogAlertsCz.alergie.konecProjevu
* group[=].element[=].display = "A.2.4.1.7 - Konec období projevu"
* group[=].element[=].target.code = #AllergyIntolerance.extension:abatement.value[x]
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #LogAlertsCz.alergie.stav
* group[=].element[=].display = "A.2.4.1.8 - Stav"
* group[=].element[=].target.code = #AllergyIntolerance.clinicalStatus
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #LogAlertsCz.alergie.miraJistoty
* group[=].element[=].display = "A.2.4.1.9 - Míra jistoty"
* group[=].element[=].target.code = #AllergyIntolerance.verificationStatus
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #LogAlertsCz.alergie.posledniProjev
* group[=].element[=].display = "A.2.4.1.10 - Poslední projev"
* group[=].element[=].target.code = #AllergyIntolerance.lastOccurrence
* group[=].element[=].target.equivalence = #equivalent


* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogAlertsCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-composition-ems"
* group[=].element[+].code = #LogAlertsCz.alergie
* group[=].element[=].display = "A.2.4.1 - Alergie a intolerance"
* group[=].element[=].target.code = #Composition.section:allergies
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #LogAlertsCz.varovani
* group[=].element[=].display = "A.2.4.2 - Varování"
* group[=].element[=].target.code = #Composition.section:alert
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #LogAlertsCz.varovani.oznaceniVarovani
* group[=].element[=].display = "A.2.4.2.1 - Označení varování"
* group[=].element[=].target.code = #Composition.section:alert.text
* group[=].element[=].target.equivalence = #relatedto


* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/LogAlertsCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-flag-ems"
* group[=].element[+].code = #LogAlertsCz.varovani.oznaceniVarovani
* group[=].element[=].display = "A.2.4.2.1 - Označení varování"
* group[=].element[=].target.code = #Flag.text
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"

* group[=].element[+].code = #LogAlertsCz.varovani.kod
* group[=].element[=].display = "A.2.4.2.3 - Onemocnění či stav"
* group[=].element[=].target.code = #Flag.code
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked (cardinality)"

* group[=].element[+].code = #LogAlertsCz.varovani.specializovanyLekar
* group[=].element[=].display = "A.2.4.2.4 - Specializovaný lékař"
* group[=].element[=].target.code = #Flag.author
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"

* group[=].element[+].code = #LogAlertsCz.varovani.komentar
* group[=].element[=].display = "A.2.4.2.5 - Komentář"
* group[=].element[=].target.code = #Flag.text
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"

* group[=].element[+].code = #LogAlertsCz.varovani.uroven
* group[=].element[=].display = "A.2.4.2.6 - Úroveň"
* group[=].element[=].target.code = #Flag.extension:flagPriorityExt
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"

* group[=].element[+].code = #LogAlertsCz.varovani.platnost
* group[=].element[=].display = "A.2.4.2.7 - Období platnosti varování"
* group[=].element[=].target.code = #Flag.period
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"