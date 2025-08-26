Logical: LogEnEndOfCare
Id: LogEndOfCare
Title: "A.2.10 - End of Care (en)"
Description: """Emergency Medical Service Report – End of Care – A.2.10 EN"""

* endOfCareSpecification 1..1 Base "A.2.10.1 - End of Care Specification" """Specification of patient end of care/discharge."""
  * endOfCareMethod 1..1 CodeableConcept "A.2.10.1.1 - Method of End of Care" """Description of the way in which patient care was concluded. Value from the “Method of End of Care” code list."""
  * dateTimeOfDeath 0..1 dateTime "A.2.10.1.2 - Date and Time of Death" """Date and time of death (estimated)."""
  * cpalpIdentifier 0..1 Identifier "A.2.10.1.3 - CPALP Identifier" """Identifier of the target provider of inpatient acute care. Value from the National Register of Healthcare Providers (PZS)."""
  * departmentIdentifier 0..1 Identifier "A.2.10.1.4 - Department Identifier" """Identifier of the target CPALP department. Value from the National Register of Healthcare Providers (PZS)."""
  * handingOverStaffZzs 0..1 Identifier "A.2.10.1.5 - EMS Handing-Over Staff Identifier" """Identifier of the Emergency Medical Service staff member handing the patient over. Value from the National Register of Healthcare Professionals (ZP)."""
  * receivingStaffCpalp 0..1 Identifier "A.2.10.1.6 - Receiving CPALP Healthcare Professional Identifier" """Identifier of the receiving healthcare professional. Value from the National Register of Healthcare Professionals (ZP)."""
  * receivingStaffText 0..1 string "A.2.10.1.7 - Receiving CPALP Healthcare Professional (Text)" """Free-text information about the receiving healthcare professional, if no code from the register is available."""
