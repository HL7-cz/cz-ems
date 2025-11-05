Logical: LogEnEmsReportCz
Id: EmsReportCz
Title: "A - EMS Report"
Description: """EMS Report"""

* header 1..1 HeaderEmsCz "A.1 - EMS Report header data element" """EMS Report header data element"""
* body 1..1 Base "A.2 - EMS Report body data element" """EMS Report body data element"""
  * dispatchData 1..1 DispatchDataCz "A.2.1 - Dispatch Data" """Dispatch data"""
  * dispatchTimeline 1..1 DispatchTimelineCz "A.2.2 - Dispatch Timeline" """Dispatch timeline"""
  * patientHistory 0..1 PatientHistoryCz "A.2.3 - Patient History" """Patient history (might include information about provenance of the information)"""
  * alerts 1..1 AlertsCz "A.2.4 - Alerts" """Alerts"""
  * presentIllness 0..1 PresentIllnessEmsCz "A.2.5 - Present Illness" """Present illness"""
  * objectiveFindings 0..1 ObjectiveFindingsEmsCz "A.2.6 - Objective Findings" """Objective findings"""
  * therapy 0..1 TherapyEmsCz "A.2.7 - Therapy" """Therapy"""
  * diagnosticSummary 0..1 LogDiagnosticSummary "A.2.8 - Diagnostic Summary" """Diagnostic summary"""
  * clinicalCourseAndRecommendations 0..1 LogRecommendations "A.2.9 - Clinical Course, Recommendations" """Clinical course and recommendations"""
  * endOfCare 1..1 LogEndOfCare "A.2.10 - End of Care" """End of care""" 
* presentedForm 1..* PresentedFormCz "A.3 - Presented Form" """Entire order as issued. Various formats could be provided,  pdf format is recommended."""
* media 0..* AttachmentsCz "A.4 - Media Attachment" """Aditional media attachment"""
  
 

