Profile: CZ_ProcedureEms
Parent: Procedure
Id: cz-procedure-ems
Title: "Procedure: EMS Report (CZ)"
Description: "This profile on Procedure represents the ems procedure for the scope of the Czech national interoperability project."
* insert SetFmmandStatusRule( 1, draft )

* code 1..1

* subject only Reference(CZ_PatientCore or CZ_PatientAnimal or Group)
* recorder only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore)
* asserter only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore)

* performer 0..*
  * insert SliceElementWithDescription( #value, function, [[Different performers can be added to the procedure.]] )
  * function 1..1
  * actor only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_DeviceObserver or CZ_MedicalDevice)
  * onBehalfOf only Reference(CZ_OrganizationCore)
* performer contains performer 0..* and imaging-device 0..*
* performer[performer]
  * function
    * coding
      * insert SliceElement( #value, "$this" )
    * coding contains healthcare-professional 0..1
    * coding[healthcare-professional] = $sct#223366009 "Healthcare professional"
  * actor only Reference(CZ_PractitionerRoleCore)
  * onBehalfOf only Reference(CZ_OrganizationCore)

* usedReference only Reference(CZ_DeviceObserver or CZ_MedicalDevice or CZ_Medication or Substance)