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

* extension contains DocumentPresentedForm named presentedForm 1..*
* extension[presentedForm] ^short = "Presented form"
* extension[presentedForm].valueAttachment
  * contentType
    * ^example[0].label = "pdf"
    * ^example[0].valueCode  = $mime#application/pdf
  * data ^short = "B64 in-line data"
  * url ^short = "URL of the document"

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
    courseOfTreatment 0..1 and
    recommendations 0..1 and
    handover 1..1 and
    patientHx 1..1 and
    medicalDevices 1..1 and
    significantProcedures 0..1 and
    travelHx 0..1 and
    immunizations 0..1 and
    infectiousContacts 0..1 and
    familyHistory 0..1 and
    socialHistory 0..1 and
    allergies 0..1 and
    findings 0..* and
    procedure 1..1 and
    diagnosticSummary 0..1 and
    dispatch 0..1 and
    timeline 0..1 and
    payers 0..1 and
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
* section[patientHx]
  * insert SectionComRules (
    Patient History Section,
    This Section describes all aspects of the medical history of the patient even if not pertinent to the current procedure\, and may include chief complaint\, past medical history\, social history\, family history\, surgical or procedure history\, medication history\, and other history information. The history may be limited to information pertinent to the current procedure or may be more comprehensive. The history may be reported as a collection of random clinical statements or it may be reported categorically. Categorical report formats may be divided into multiple subsections including Past Medical History\, Social History.,
    $loinc#11329-0 )
  * entry 1..
  * entry only Reference(CZ_ConditionEms)

* section[medicalDevices]
  * insert SectionComRules (
      Medical devices and implants,
      Implants and used medical devices that affected or may affect the provision of health services (diagnosis and treatment\). Also medical devices explanted\, or its use was stopped during hospitalisation. If the section is blank\, the reason must be explicitly stated using the IPS Absent and Unknown Data coding system.,
      $loinc#57080-4 )
  * entry 0..*
  * entry only Reference(CZ_MedicalDevice)

* section[significantProcedures]
  * insert SectionComRules (
    Significant procedures,
    Significant surgical and non-surgical procedures performed during hospitalisation which are significant for continuity of care\, e.g. surgeries and other \"instrumental\"interventions (endoscopic\, intravascular\)\, chemotherapy\, radiotherapy\, purification methods (dialysis\, hemoperfusion\)\, circulation support methods (counterpulsation\, etc.\)\, administration of blood derivatives or others.\r\nThis section does not include purely diagnostic procedures (MRI\, CT\, etc.\). If no significant performance has been performed\, this fact must be explicitly stated using the IPS Absent and Unknown Data. ,
    $loinc#10185-7)
  * entry 1..
  * entry only Reference(CZ_ProcedureEms)

* section[travelHx]
  * insert SectionComRules (
      Travel History Section,
      This Section describes the travel history relevant for the Patient Summary\, e.g.recent travel in a region of high prevalence of a specific infectious disease like Malaria,
      $loinc#10182-4 )
  * entry 0..*
  * entry only Reference(CZ_ObservationTravelEms)

* section[immunizations]
  * insert SectionComRules (
      Immunizations Section,
      The Immunizations Section defines a patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nThe section includes current immunization status\, and may contain the entire immunization history that is relevant to the period of time being summarized.,
      $loinc#11369-6 )
  * entry 0..*
  * entry only Reference(CZ_ImmunizationEMS or CZ_ImmunizationRecommendationEMS or DocumentReference)

* section[infectiousContacts]
  * insert SectionComRules (
      Infectious contacts,
    Infectious contacts of the patient,
     TemporaryHDRSystem#infection-contact ) // $sct#444071008"Exposure to organism (event\)"
  * entry 0..*
  * entry only Reference(CZ_ObservationInfectiousContactEMS)

* section[familyHistory]
  * insert SectionComRules (
    Family History Section,
    This section contains data defining the patient’s genetic relatives in terms of possible or relevant health risk factors that have a potential impact on the patient’s healthcare risk profile.,
    http://loinc.org#10157-6  )
  * entry 0..*
  * entry only Reference(Observation or CZ_FamilyMemberHistoryEms)

* section[socialHistory]
  * insert SectionComRules (
    Social History Section,
    The social history section contains a description of the person Health related lifestyle factors or lifestyle observations.   E.g. smoke habits; alcohol consumption; diets\, risky habits.,
    $loinc#29762-2)
  * entry 0..*
  * entry only Reference(CZ_ObservationSDOHEMS)



/////////////////////////////////  Allergies and Intolerances SECTION ///////////////////////////////////////
* section[allergies]
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

///////////////////////////////// DiagnosticSummary SECTION ///////////////////////////////////////
* section[diagnosticSummary]
  * ^short = "Diagnostic summary"
  * ^definition = ""
  * code = $loinc#11450-4
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * entry 0..*
  * entry only Reference(CZ_ConditionEms)

///////////////////////////////// ClinicalCourseAndRecommendations SECTION ///////////////////////////////////////
* section[courseOfTreatment]
  * ^short = "The narrative of the patient care report" //Summary of treatment progress and condition development
  * ^definition = "18682-5"
  * code = $loinc#18682-5 "Ambulance records"
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * entry only Reference( CZ_ProcedureEms) 

* section[recommendations]
  * insert SectionComRules (
    Plan of Care Section,
    The plan of care section contains a narrative description of the expectations for care including proposals\, goals\, and order requests for monitoring\, tracking\, or improving the condition of the patient.,
    $loinc#18776-5 )
  * entry only Reference( CZ_CarePlanEms) 

* section[handover] ^short = "Handover"
* section[handover].title 1.. 
* section[handover].title ^short = "'Ukončení' or 'Remise' or 'Předání' or 'Handover'"
* section[handover].code 1.. 
* section[handover].code = $loinc#67660-1 // "EMS dispatch Narrative"
* section[handover].entry ^slicing.discriminator.type = #profile
* section[handover].entry ^slicing.discriminator.path = "resolve()"
* section[handover].entry ^slicing.rules = #open
* section[handover].entry contains
    patientCondition 1..1 and
    handoverFrom 0..1 and
    handoverTo 0..1 
* section[handover].entry[patientCondition] only Reference(CZ_ConditionEms)
* section[handover].entry[patientCondition].reference 1..
* section[handover].entry[handoverFrom] only Reference(CZ_PractitionerCore)
* section[handover].entry[handoverFrom].reference 1..
* section[handover].entry[handoverTo] only Reference(CZ_OrganizationCore or CZ_PractitionerCore)
* section[handover].entry[handoverTo].reference 1..
* section[handover].section 0..0
  
///////////////////////////////// PROCEDURE SECTION ///////////////////////////////////////
* section[procedure]
  * ^short = "Procedure"
  * ^definition = "Procedure records the descriptions of the procedure with an extensive narrative and may include procedure site preparation, pertinent details related to measurements and markings, procedure times, instrumentation, and vital signs and other monitoring data."
  * code = $loinc#29554-3
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * entry 0..*
  * entry only Reference(CZ_ProcedureEms)

* section[payers]
  * insert SectionComRules (
      Health insurance and payment information section.,
      Health insurance information is67796-3 not always required\, however\, in some jurisdictions\, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care.,
      $loinc#48768-6  ) // "Payment sources Document"
  * ^short = "Health insurance and payment information."
  * ^definition = "This section includes heath insurance and payment information."
  * entry only Reference(CZ_Coverage)

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