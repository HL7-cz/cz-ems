Instance: ObjectiveFindingsEMS2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* name = "A.2.6 ObjectiveFindingsEMS2FHIR2FHIRcz"
* title = "CZ Objective Findings Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ Emergency Medical Service Report ObjectiveFindings Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/ObjectiveFindingsEmsCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-observation-height-ems"
* group[=].element[+].code = #ObjectiveFindingsEmsCz.antropometricData
* group[=].element[=].display = "A.2.6.1 - Anthropometric Data"
* group[=].element[=].target.comment = "Composition.section:objectiveFindings.entry.ofType(CZ_ObservationBMIEms or CZ_ObservationHeightEms or CZ_ObservationWeightEms)"
* group[=].element[=].target.code = #Composition.section:objectiveFindings
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #antropometricData.textResult
* group[=].element[=].display = "A.2.6.1.1 - Examination result text"
* group[=].element[=].target.code = #CZ_Observation.valueString
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #antropometricData.parametricRecord.description
* group[=].element[=].display = "A.2.6.1.2.1 - Examination description"
* group[=].element[=].target.code = #CZ_Observation.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #antropometricData.parametricRecord.result
* group[=].element[=].display = "A.2.6.1.2.2 - Formalized examination result"
* group[=].element[=].target.comment = ""
* group[=].element[=].target.code = #CZ_Observation.valueCodeableConcept
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/ObjectiveFindingsEmsCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-observation-vitalSigns-ems"
* group[=].element[+].code = #ObjectiveFindingsEmsCz.vitalSigns
* group[=].element[=].display = "A.2.6.2 - Basic Vital Signs"
* group[=].element[=].target.comment = "Composition.section:objectiveFindings.entry.ofType(CZ_ObservationVitalSignsEms)"
* group[=].element[=].target.code = #Composition.section:objectiveFindings
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #vitalSigns.type
* group[=].element[=].display = "A.2.6.2.1 - Examination type"
* group[=].element[=].target.code = #CZ_Observation.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #vitalSigns.textResult.description
* group[=].element[=].display = "A.2.6.2.2.1 - Examination description"
* group[=].element[=].target.code = #CZ_Observation.valueString
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #vitalSigns.textResult.date
* group[=].element[=].display = "A.2.6.2.2.2 - Date and time of measurement"
* group[=].element[=].target.comment = ""
* group[=].element[=].target.code = #CZ_Observation.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #vitalSigns.parametricRecord.description
* group[=].element[=].display = "A.2.6.2.3.1 - Examination description"
* group[=].element[=].target.code = #CZ_Observation.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #vitalSigns.parametricRecord.result
* group[=].element[=].display = "A.2.6.2.3.4 - Formalized examination result"
* group[=].element[=].target.comment = ""
* group[=].element[=].target.code = #CZ_Observation.valueCodeableConcept
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #vitalSigns.parametricRecord.date
* group[=].element[=].display = "A.2.6.2.3.5 - Date and time of measurement"
* group[=].element[=].target.comment = ""
* group[=].element[=].target.code = #CZ_Observation.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/ObjectiveFindingsEmsCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-observation-oxygen-ems"
* group[=].element[+].code = #ObjectiveFindingsEmsCz.vitalSigns.parametricRecord.oxigenAdministration(CZ_ObservationOxygenEms)
* group[=].element[=].display = "A.2.6.2 - Basic Vital Signs - Oxygen therapy"
* group[=].element[=].target.comment = "Composition.section:objectiveFindings.entry.ofType(CZ_ObservationOxygenEms)"
* group[=].element[=].target.code = #Composition.section:objectiveFindings
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #oxigenAdministration
* group[=].element[=].display = "A.2.6.2.3.2 - Oxygen administration"
* group[=].element[=].target.code = #CZ_ObservationOxygenEms.valueBoolean
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #oxgenFlow
* group[=].element[=].display = "A.2.6.2.3.3 - Oxygen flow rate"
* group[=].element[=].target.code = #CZ_ObservationOxygenEms.component[OxygenFlowRate].code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/ObjectiveFindingsEmsCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-observation-OtherOF-ems"
* group[=].element[+].code = #ObjectiveFindingsEmsCz.otherParameters
* group[=].element[=].display = "A.2.6.3 - Other measured parameters"
* group[=].element[=].target.comment = "Composition.section:objectiveFindings.entry.ofType(CZ_ObservationOtherOFEms)"
* group[=].element[=].target.code = #Composition.section:objectiveFindings
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #otherParameters.textResult.description
* group[=].element[=].display = "A.2.6.3.1 - Examination result text"
* group[=].element[=].target.code = #CZ_Observation.valueString
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #otherParameters.parametricRecord.description
* group[=].element[=].display = "A.2.6.3.2.1 - Examination description"
* group[=].element[=].target.code = #CZ_Observation.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #otherParameters.parametricRecord.result
* group[=].element[=].display = "A.2.6.3.2.2 - Formalized examination result"
* group[=].element[=].target.comment = ""
* group[=].element[=].target.code = #CZ_Observation.valueCodeableConcept
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #otherParameters.parametricRecord.textResult.date
* group[=].element[=].display = "A.2.6.3.2.3 - Date and time of measurement"
* group[=].element[=].target.comment = ""
* group[=].element[=].target.code = #CZ_Observation.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/ObjectiveFindingsEmsCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-observation-OtherOF-ems"
* group[=].element[+].code = #ObjectiveFindingsEmsCz.somaticExamination
* group[=].element[=].display = "A.2.6.4 - Somatic examination"
* group[=].element[=].target.comment = "Composition.section:objectiveFindings.entry.ofType(CZ_ObservationOtherOFEms)"
* group[=].element[=].target.code = #Composition.section:objectiveFindings
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #somaticExamination.textResult.description
* group[=].element[=].display = "A.2.6.4.1 - Examination description"
* group[=].element[=].target.code = #CZ_Observation.valueString
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #somaticExamination.textResult.date
* group[=].element[=].display = "A.2.6.4.2 - Date and time of examination"
* group[=].element[=].target.comment = ""
* group[=].element[=].target.code = #CZ_Observation.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/ObjectiveFindingsEmsCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-observation-OtherOF-ems"
* group[=].element[+].code = #ObjectiveFindingsEmsCz.otherExamination
* group[=].element[=].display = "A.2.6.5 - Other examinations"
* group[=].element[=].target.comment = "Composition.section:objectiveFindings.entry.ofType(CZ_ObservationOtherOFEms)"
* group[=].element[=].target.code = #Composition.section:objectiveFindings
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #otherExamination.procedureName
* group[=].element[=].display = "A.2.6.5.1 - Name of procedure"
* group[=].element[=].target.code = #CZ_Observation.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #otherExamination.description
* group[=].element[=].display = "A.2.6.5.2 - Date and time of performance"
* group[=].element[=].target.code = #CZ_Observation.valueString
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #otherExamination.date
* group[=].element[=].display = "A.2.6.5.3 - Description of the examination"
* group[=].element[=].target.comment = ""
* group[=].element[=].target.code = #CZ_Observation.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent