Logical: LogEnTherapyEmsCz
Id: TherapyEmsCz
Title: "A.2.7 - Therapy"
Description: """Emergency medical service report - Therapy"""

* procedures 0..* Base "A.2.7.1 Procedures" """Medical procedures according to the EMS (Emergency Medical Service) codebook."""
  * name 1..1 CodeableConcept "A.2.7.1.1 Procedure name" """The name of the procedure according to the EMS codebook."""
  * date 0..1 dateTime "A.2.7.1.2 Date and time of performance" """The date and time the procedure was performed."""

* medicalDevices 0..* Base "A.2.7.2 Medical devices" """Record of used medical devices (PZT)."""
  * description 1..1 CodeableConcept "A.2.7.2.1 Description of the medical device" """Description of the medical device used during the intervention via free text and/or code."""
  * id 0..1 Identifier "A.2.7.2.2 Device identifier" """Normalized identifier, e.g., UDI, according to EU regulation 2017/745."""

* medication 0..* Base "A.2.7.3 Medication" """Medication treatment during the care."""
  * codeSUKL 1..1 CodeableConcept "A.2.7.3.1 SUKL Code" """The code of the medicinal product according to the SÚKL database."""
  * medicinalProductName 1..1 string "A.2.7.3.2 Name of the medicinal product" """The registered name of the medicinal product according to the medicinal products database."""
  * groupATC 0..1 CodeableConcept "A.2.7.3.3 ATC group" """The ATC group of the administered medicinal product."""
  * activeSubstances 0..* CodeableConcept "A.2.7.3.4 Active substances" """List of active substances in the medicinal product derived from the record of the HVLP or IVLP product in the SUKL database (DLP). Active substances are listed by name and, if applicable, also by DLP code."""
  * strength 0..* Quantity "A.2.7.3.5 Strength" """The strength of the active medicinal substance contained in the medicinal product. The strength is expressed in relation to the unit of administration. E.g., 500mg in a tablet."""
  * medicinalForm 0..1 CodeableConcept "A.2.7.3.6 Form of the medicinal product" """The dosage form contained in the package expressed by a code. E.g., Syrup, tablet, etc."""
  * administeredQuantity 0..1 Quantity "A.2.7.3.7 Dosage" """The number of units of administration by free text or formally."""
  * routeOfAdministration 0..1 CodeableConcept "A.2.7.3.8 Route of administration" """Route of administration."""
  * dateOfAdministration 0..1 dateTime "A.2.7.3.9 Date and time of administration" """Date and time of administration."""