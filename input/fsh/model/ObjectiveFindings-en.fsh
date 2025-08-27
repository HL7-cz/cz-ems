Logical: LogEnObjectiveFindingsEmsCz
Id: ObjectiveFindingsEmsCz
Title: "A.2.6 - Objective findings"
Description: """Emergency medical service report - Objective Findings"""

* antropometricData 0..* Base "A.2.6.1 Anthropometric Data" """Results of patient's anthropometric measurements: height, weight, BMI (automatic calculation from the given values). Optional: head, chest, abdomen circumference."""
  * textResult 0..1 string "A.2.6.1.1 Examination result text" """Textual description of the examination result."""
  * parametricRecord 0..1 Base "A.2.6.1.2 Parametric record of the examination" """Parametric entry of the examination result."""
    * description 1..1 CodeableConcept "A.2.6.1.2.1 Examination description" """Description of the examination, including the examination code, area examined, or sample, date and time of sample collection."""
    * result 1..1 Quantity "A.2.6.1.2.2 Formalized examination result" """The examination result as text and/or in the form of numerical and coded measurement results. The content of the examination result will differ according to the type of examination.."""

* vitalSigns 0..* Base "A.2.6.2 Basic Vital Signs" """Results of basic vital signs measurements for the patient including the measurement timestamp. (Vital signs measurements may be repeated at different times during an emergency call)."""
  * type 1..1 CodeableConcept "A.2.6.2.1" """Classification of the examination type. Here fixed value ''vital-signs''"""
  * textResult 0..1 Base "A.2.6.2.2 Examination result text" """Textual description of the result or a comment to the structured examination result."""
    * description 1..1 CodeableConcept "A.2.6.2.2.1 Examination description" """Description of the examination including the examination code, date and time of examination."""  
    * date 1..1 dateTime "A.2.6.2.2.2 Date and time of measurement" """Date and time related to a specific measurement."""
  * parametricRecord 0..* Base "A.2.6.2.3 Parametric record of the examination result" """Parametric entry of the examination result."""
    * description 1..1 CodeableConcept "A.2.6.2.3.1 Examination description" """Description of the examination including the examination code, date and time of examination."""
    * oxigenAdministration 0..1 string "A.2.6.2.3.2 Oxygen administration" """Information about oxygen administration during SpO2 value measurement."""
    * oxgenFlow 0..1 string "A.2.6.2.3.3 Oxygen flow rate" """Information about oxygen flow rate during SpO2 value measurement."""
    * result 1..1 Quantity "A.2.6.2.3.4 Formalized examination result" """Examination result as text and/or in the form of numerical and coded measurement results. Furthermore, details on how the tests were performed to obtain the final values, information on reference ranges and interpretation of the result. The content of the examination result will differ according to the type of examination."""
    * date 1..1 dateTime "A.2.6.2.3.5 Date and time of measurement" """Date and time related to a specific measurement."""

* otherParameters 0..1 Base "A.2.6.3 Other measured parameters" """- Glycemia (mmol/l)
- Consciousness - Glasgow Coma Scale (GCS, 3-15)
- Consciousness - AVPU (A/V/P/U) - EtCO2"""
  * textResult 0..1 string "A.2.6.3.1 Examination result text" """Textual description of the examination result."""
  * parametricRecord 0..1 Base "A.2.6.3.2 Parametric record of the examination result" """Parametric entry of the examination result."""
    * description 1..1 CodeableConcept "A.2.6.2.2.1 Examination description" """Description of the examination, including the examination code, date and time of examination."""
    * result 1..1 Quantity "A.2.6.2.2.2 Formalized examination result" """Examination result as text and/or in the form of numerical and coded measurement results. Furthermore, details on how the tests were performed to obtain the final values, information on reference ranges and interpretation of the result. The content of the examination result will differ according to the type of examination."""
    * date 1..1 dateTime "A.2.6.2.2.3 Date and time of measurement" """Date and time related to a specific measurement."""

* somaticExamination 1..* Base "A.2.6.4 Somatic examination" """An examination using the senses of the examiner (by sight, listening, palpation, and percussion) and assessing whether the findings thus ascertained deviate from the norm. If so, we denote these deviations as objective signs."""
  * description 1..1 string "A.2.6.4.1 Examination description" """Description of the examination including the examination code, date and time of examination."""  
  * date 1..1 dateTime "A.2.6.4.2 Date and time of examination" """Date and time when the examination was performed."""

* otherExamination 0..* Base "A.2.6.5 Other examinations" """Other examinations (For example, ECG, ultrasound, etc.)."""
  * procedureName 0..* CodeableConcept "A.2.6.5.1 Name of procedure" """According to the ZZS (Emergency Medical Service) codebook."""
  * date 1..1 dateTime "A.2.6.5.2 Date and time of performance" """Date and time of procedure performance."""
  * description 1..1 string "A.2.6.5.3 Description of the examination" """Textual description of the examination."""
