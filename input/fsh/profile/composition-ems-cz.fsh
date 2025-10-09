//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: CZ_CompositionEms
Parent: Composition
Id: cz-composition-ems
Title: "Composition (EMS CZ)"
Description: "This profile defines how to represent Composition resource in HL7 FHIR for the scope of this guide."
//-------------------------------------------------------------------------------------------

* . ^short = "Emergency medical service report composition"
* . ^definition = "Emergency medical service report composition. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

* extension contains $event-basedOn named basedOn 0..*
* extension[basedOn].valueReference only Reference ( Resource or ServiceRequest ) /// add profile

//* extension contains DocumentPresentedForm named presentedForm 1..*
//* extension[presentedForm] ^short = "Presented form"
//* extension[presentedForm].valueAttachment
//  * contentType
//    * ^example[0].label = "pdf"
//    * ^example[0].valueCode  = $mime#application/pdf
//  * data ^short = "B64 in-line data"
//  * url ^short = "URL of the document"

* identifier ^short = "EMS business identifier"
* status ^short = "EMS status"
* type only $CodeableConcept-uv-ips
* type ^short = "Kind of composition (\"Emergency Medical Services\")"
* type ^definition = "Specifies that this composition refer to a Level 3 emergency medical services patient care report - recommended CDA R1 and R2 sections"
* type = $loinc#67796-3 "EMS patient care report - version 3 Document NEMSIS"
* subject only Reference(CZ_PatientCore)
* subject 1..1
* subject ^definition = "Who or what the composition is about. \r\nIn general a composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).\r\nFor the ems the subject is always the patient."

* encounter 1..1 
* encounter only Reference(CZ_Encounter)
  * ^short = "Context that defines the EMS Report"

* date ^short = "EMS date"
* author ^short = "Who and/or what authored the Emergency Medical Services"
* author ^definition = "Identifies who is responsible for the information in the Hospital Discharge Report, not necessarily who typed it in."
* author only Reference( CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_MedicalDevice or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)


* title ^short = "Emergency Medical Services"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Emergency Medical Services\" or any equivalent translation"
* attester.mode ^short = "The type of attestation"
* attester.time ^short = "When the composition was attested."
* attester.party ^short = "Who attested the composition."
* attester.party only Reference( CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)



* section 1..
  // add invariant or text or section

* insert SectionSliceComRules (Sections composing the Emergency Medical Services,
        The root of the sections that make up the Emergency Medical Services composition.)

* section.author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)

* obeys text-or-section

* section contains
    presentIllness 0..1 and
    findings 0..* and
    clinicalCourseAndRecommendations 0..* and
    procedure 1..1 and
    diagnosticSummary 0..1 and
    dispatch 0..1 and
    timeline 0..1 and
    attachments 0..*

///////////////////////////////// Objective findings SECTION ///////////////////////////////////////
* section[findings]
  * ^short = "Physical findings Narrative"
  * ^definition = "Physical findings Narrative"
  * code = $loinc#29545-1
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  //* text 1..
  * entry 0..*
  * entry only Reference(CZ_ObservationBMIEms or CZ_ObservationHeightEms or CZ_ObservationInfectiousContactEMS or CZ_ObservationOtherOFEms or CZ_ObservationOxygenEms or CZ_ObservationVitalSignsEms or CZ_ObservationWeightEms or Observation)

///////////////////////////////// DISPATCH SECTION ///////////////////////////////////////
* section[dispatch]
  * ^short = "EMS dispatch Narrative NEMSIS"
  * ^definition = "Information related to dispatch instructions"
  * code = $loinc#67660-1
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  //* text 1..
  * entry 0..*
  * entry only Reference(CZ_Encounter or CZ_TaskEms or CZ_LocationEms or CZ_CommunicationEms or CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_VehicleLocationEms)

///////////////////////////////// TIMELINE SECTION ///////////////////////////////////////
* section[timeline]
  * ^short = "EMS times Narrative NEMSIS"
  * ^definition = "Times recorded to assess delays"
  * code = $loinc#67667-6
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  //* text 1..
  * entry 0..*
  * entry only Reference(CZ_Encounter or CZ_TaskEms or CZ_CommunicationEms)

///////////////////////////////// PATIENT HISTORY SECTION ///////////////////////////////////////
* section contains sectionPatientHx ..1
* section[sectionPatientHx]
  * insert SectionComRules (
    Patient History Section,
    This Section describes all aspects of the medical history of the patient even if not pertinent to the current procedure\, and may include chief complaint\, past medical history\, social history\, family history\, surgical or procedure history\, medication history\, and other history information. The history may be limited to information pertinent to the current procedure or may be more comprehensive. The history may be reported as a collection of random clinical statements or it may be reported categorically. Categorical report formats may be divided into multiple subsections including Past Medical History\, Social History.,
    $loinc#11329-0 )

/////////////////////////////////  Allergies and Intolerances SECTION ///////////////////////////////////////
* section contains sectionAllergies 0..1
* section[sectionAllergies]
  * insert SectionComRules (
      Allergies and Intolerances Section,
      This section documents the relevant allergies or intolerances (conditions\) for that patient\, describing the kind of reaction (e.g. rash\, anaphylaxis\,..\); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum\, it should list currently active and any relevant historical allergies and adverse reactions.\r\nIf no information about allergies is available\, or if no allergies are known this should be clearly documented in the section.,
      $loinc#48765-2 )   // CODE
  * entry 1..
  * entry only Reference(CZ_AllergyIntoleranceEms or DocumentReference or AllergyIntolerance)
  * insert SectionEntrySliceComRules(Relevant allergies or intolerances (conditions\) for that patient.,
    It lists the relevant allergies or intolerances (conditions\) for that patient\, describing the kind of reaction (e.g. rash\, anaphylaxis\,..\); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum\, it should list currently active and any relevant historical allergies and adverse reactions.\r\n This entry shall be used to document that no information about allergies is available\, or that no allergies are known .)
  // entry slices
  * insert SectionEntrySliceDefRules (allergyIntolerance, 0.. , Allergy entry, Allergy entry, CZ_AllergyIntoleranceEms)

/////////////////////////////////  Alert SECTION ///////////////////////////////////////

* insert AlertSectionRules

///////////////////////////////// PRESENTING ILLNESS SECTION ///////////////////////////////////////
* section[presentIllness]
  * ^short = "Expos inj EMS person Provider NEMSIS"
  * ^definition = "EMS exposures or injuries of EMS personnel Provider Narrative NEMSIS."
  * code = $loinc#67658-5
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * text 1..

///////////////////////////////// DiagnosticSummary SECTION ///////////////////////////////////////
* section[diagnosticSummary]
  * ^short = "Diagnostic summary"
  * ^definition = ""
  * code = $loinc#11450-4
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * entry 0..*
  * entry only Reference(CZ_ConditionEms)
///////////////////////////////// ClinicalCourseAndRecommendations SECTION ///////////////////////////////////////
* section[clinicalCourseAndRecommendations]
  * ^short = "Clinical Course And Recommendations"
  * ^definition = "EMS patient care report - version 3 Document NEMSIS"
  * code = $loinc#67796-3
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * entry 0..*
  * entry only Reference(CZ_ProcedureEms)

///////////////////////////////// PROCEDURE SECTION ///////////////////////////////////////
* section[procedure]
  * ^short = "Procedure"
  * ^definition = "Procedure records the descriptions of the procedure with an extensive narrative and may include procedure site preparation, pertinent details related to measurements and markings, procedure times, instrumentation, and vital signs and other monitoring data."
  * code = $loinc#29554-3
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * entry 0..*
  * entry only Reference(CZ_ProcedureEms)

* section[attachments]  // sekce obsahující referenci na DocumentReference
  * ^short = "Attachments"
  * code = $loinc#34109-9 //"Note - asi jen dočasný kód TODO: Najít vhodný kód"
  * author only Reference(CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * entry 1..*
  * entry only Reference(CZ_Logo or DocumentReference)

Invariant: text-or-section
Description: "A Composition SHALL have either text, at least one section, or both."
Expression: "text.exists() or section.exists()"
Severity: #error