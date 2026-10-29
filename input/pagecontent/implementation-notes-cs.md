Na následující stránce naleznete poznámky k implementaci záznamu o výjezdu ZZS. Týkají se tvorby kompozice a naplnění tohoto profilu příslušnými daty.

### Přehled

```mermaid
classDiagram
  direction LR
  class CZ_BundleEms{
    <<Bundle>>
  }
  CZ_BundleEms *-- "1..1" CZ_CompositionEms
  CZ_BundleEms *-- "1..1" CZ_TaskEms
  CZ_BundleEms *-- "1..*" CZ_EncounterEms
  CZ_BundleEms *-- "1..*" CZ_PatientCore
  CZ_BundleEms *-- "0..*" CZ_Coverage
  CZ_BundleEms *-- "0..*" CZ_Practioner
  CZ_BundleEms *-- "0..*" CZ_DeviceObserver
  CZ_BundleEms *-- "0..*" CZ_OrganizationCore
  CZ_BundleEms *-- "0..*" CZ_CareTeamEms
  CZ_BundleEms *-- "0..*" CZ_CarePlanCore
  CZ_BundleEms *-- "0..*" CZ_CommunicationEms
  CZ_BundleEms *-- "0..*" CZ_ConditionCore
  CZ_BundleEms *-- "0..*" CZ_AllergyIntolerance
  CZ_BundleEms *-- "0..*" CZ_FamilyMemberHistoryHdr
  CZ_BundleEms *-- "0..*" CZ_FlagPatientCore
  CZ_BundleEms *-- "0..*" CZ_ImmunizationEms
  CZ_BundleEms *-- "0..*" CZ_ImmunizationRecommendationEms
  CZ_BundleEms *-- "0..*" CZ_LocationCore
  CZ_BundleEms *-- "0..*" CZ_VehicleLocationEms
  CZ_BundleEms *-- "0..*" CZ_MedicationCoreAdministrationEms
  CZ_BundleEms *-- "0..*" CZ_ProcedureEms
  CZ_BundleEms *-- "0..*" CZ_ObservationBMIEms
  CZ_BundleEms *-- "0..*" CZ_ObservationHeightEms
  CZ_BundleEms *-- "0..*" CZ_ObservationInfectiousContactHdr
  CZ_BundleEms *-- "0..*" CZ_ObservationOtherOFEms
  CZ_BundleEms *-- "0..*" CZ_ObservationOxygenEms
  CZ_BundleEms *-- "0..*" CZ_ObservationSdohHdr
  CZ_BundleEms *-- "0..*" CZ_ObservationTravelHdr
  CZ_BundleEms *-- "0..*" CZ_ObservationVitalSignsEms
  CZ_BundleEms *-- "0..*" CZ_ObservationMissionTimeEms
  CZ_BundleEms *-- "0..*" CZ_ObservationWeightEms
  
  CZ_TaskEms --> CZ_CompositionEms: composition

  CZ_CompositionEms --> CZ_TaskEms: extension[basedOn]  
  CZ_CompositionEms --> CZ_EncounterEms: encounter
  CZ_CompositionEms --> CZ_Practioner: author[author]
  CZ_CompositionEms --> CZ_DeviceObserver: author[authoring-device]
  CZ_CompositionEms --> CZ_Practioner: informationRecipient[legalAuthenticator]
  CZ_CompositionEms --> CZ_OrganizationCore: custodian
  CZ_CompositionEms --> CZ_PatientCore: subject
  CZ_CompositionEms --> CZ_ObservationBMIEms: section[findings]
  CZ_CompositionEms --> CZ_ObservationHeightEms: section[findings]
  CZ_CompositionEms --> CZ_ObservationInfectiousContactHdr: section[findings]
  CZ_CompositionEms --> CZ_ObservationOtherOFEms: section[findings]
  CZ_CompositionEms --> CZ_ObservationOxygenEms: section[findings]
  CZ_CompositionEms --> CZ_ObservationSdohHdr: section[findings]
  CZ_CompositionEms --> CZ_ObservationTravelHdr: section[findings]
  CZ_CompositionEms --> CZ_ObservationVitalSignsEms: section[findings]
  CZ_CompositionEms --> CZ_ObservationWeightEms: section[findings]
  CZ_CompositionEms --> CZ_TaskEms: section[dispatch]
  CZ_CompositionEms --> CZ_LocationCore: section[dispatch]
  CZ_CompositionEms --> CZ_CommunicationEms: section[dispatch]
  CZ_CompositionEms --> CZ_VehicleLocationEms: section[dispatch]
  CZ_CompositionEms --> CZ_CareTeamEms: section[dispatch]
  CZ_CompositionEms --> CZ_Practioner: section[dispatch]
  CZ_CompositionEms --> CZ_PractionerRole: section[dispatch]
  CZ_CompositionEms --> CZ_RelatedPerson: section[dispatch]
  CZ_CompositionEms --> CZ_TaskEms: section[timeline]
  CZ_CompositionEms --> CZ_CommunicationEms: section[timeline]
  CZ_CompositionEms --> CZ_ObservationMissionTimeEms: section[timeline]
  CZ_CompositionEms --> CZ_ConditionCore: section[patientHx]
  CZ_CompositionEms --> CZ_MedicalDevice: section[medicalDevices]
  CZ_CompositionEms --> CZ_ProcedureEms: section[significantProcedures]
  CZ_CompositionEms --> CZ_ObservationTravelHdr: section[TravelHx]
  CZ_CompositionEms --> CZ_ImmunizationCore: section[immunizations]
  CZ_CompositionEms --> CZ_ImmunizationRecommendationHdr: section[immunizations]
  CZ_CompositionEms --> DocumentReference: section[immunizations]
  CZ_CompositionEms --> CZ_ObservationInfectiousContactHdr: section[infectiousContacts]
  CZ_CompositionEms --> CZ_FamilyMemberHistoryHdr: section[familyHistory]
  CZ_CompositionEms --> CZ_ObservationSdohHdr: section[socialHistory]
  CZ_CompositionEms --> Observation: section[alcoholUse]
  CZ_CompositionEms --> Observation: section[tobaccoUse]
  CZ_CompositionEms --> Observation: section[drugUse]
  CZ_CompositionEms --> CZ_AllergyIntolerance: section[allergies]
  CZ_CompositionEms --> CZ_FlagPatientCore: section[allergies]
  CZ_CompositionEms --> CZ_ProcedureEms: section[procedure]
  CZ_CompositionEms --> CZ_ConditionCore: section[diagnosticSummary]
  CZ_CompositionEms --> CZ_ProcedureEms: section[courseOfTreatment]
  CZ_CompositionEms --> CZ_CarePlanCore: section[recommendations]
  CZ_CompositionEms --> CZ_Coverage: section[payers]
  CZ_CompositionEms --> CZ_Logo: section[attachments]

```

Záznam je reprezentován jako FHIR bundle, který obsahuje zdroje CompositionEms a všechny zdroje ve stromové struktuře zdrojů, na které se odkazovalo (viz [$document operation](https://www.hl7.org/fhir/composition-operation-document.html)).

### Popis obsahu CZ_CompositionEms

{% include composition-intro-cs.md %}
