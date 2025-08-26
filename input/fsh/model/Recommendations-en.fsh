Logical: LogEnRecommendations
Id: LogRecommendations
Title: "A.2.9 - Course of Treatment and Recommendations (en)"
Description: """Emergency Medical Service Report – Course of Treatment and Recommendations – A.2.9 EN"""

* courseOfTreatment 0..* Base "A.2.9.1 - Course of Treatment" """Summary of the course of treatment and progression of the patient’s condition."""
  * description 1..1 string "A.2.9.1.1 - Course Description" """Text description of the course of treatment. Entered by the physician as free text."""
  * timestamp 1..1 dateTime "A.2.9.1.2 - Timestamp" """Date and time of the entry. Provided by the system."""

* recommendations 0..1 Base "A.2.9.2 - Recommendations" """Recommendations for the patient after completion of treatment."""
  * description 1..1 string "A.2.9.2.1 - Recommendation Description" """Recommendations for further care – e.g., prescribed medication, dietary and lifestyle measures, follow-up with a physician, instructions in case of deterioration, emergency contact, etc. Entered by the physician as free text."""
