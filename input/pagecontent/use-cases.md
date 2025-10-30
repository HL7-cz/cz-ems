<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<blockquote class="stu-note">
<b>Informative for this version of the guide</b>
<p>The use cases have been added to this version of the guide only as informative material. The output must be consulted with the professional community - it is possible that a revision will take place in the near future, which will cause changes to the content!</p>
</blockquote>
</div>

### Overview of Roles 

Roles in the use case represent different types of users or systems involved in the process, including their responsibilities and permissions. The role of the recipient must comply with legal requirements (e.g., GDPR, the CZ Health Services Act, etc.). 

#### Emergency Medical Dispatch Centre (ZOS) 

**Description** 

The ZOS (Emergency Medical Dispatch Centre) acts as the operational control unit of the EMS provider. It receives and evaluates emergency calls and, based on these, issues instructions to emergency response teams. 

**Rights** 

The ZOS transfers dispatch information to the response team, which becomes part of the Emergency Response Record (e.g., call/dispatch number, event location, urgency and classification of the call, etc.). The ZOS does not directly edit the Emergency Response Record; however, the dispatch software retrieves selected data entered by the team leader after the mission (e.g., method of care termination, CPALP designation, and the specific hospital department to which the patient is handed over). 

**Interactions** 

Transfers relevant dispatch information from the ZOS to the software used by the EMS response team to create and edit the Emergency Response Record. Receives information from the finalized Emergency Response Record back into the ZOS operational management system. 

#### EMS Team Leader – Author of the Emergency Response Record 

**Description** 

A healthcare professional responsible for creating, approving, and, where necessary, editing the Emergency Response Record. 

**Rights** 

Access to patient records, ability to edit and approve the Emergency Response Record. 

**Interactions** 

Fills in the record form, confirms the final version, and submits the finalized Emergency Response Record. 

#### Patient 

**Description** 

The recipient of care and consumer of the output report. The patient uses the Emergency Response Record as a reference for adhering to the prescribed treatment regimen, medication intake, and following other medical recommendations. 

**Rights** 

Access to the content of the Emergency Response Record via the patient portal, mobile application, or printed version. The patient has no rights to modify the content. They may confirm receipt or acknowledgment of the report if the system allows it. 

**Interactions** 

- **Viewing the report**: The patient reads the Emergency Response Record to understand their health status and prescribed recommendations. 
- **Following instructions**: Adhering to the prescribed regimen (e.g., diet, physical activity restrictions). Taking prescribed medication according to dosage. Attending recommended examinations, follow-ups, or treatments. 
- **Inquiries**: In case of uncertainty regarding the content of the Emergency Response Record, the patient may contact their physician or healthcare provider. 
- **Specifics**: The patient should be informed how to access and interpret the Emergency Response Record (e.g., meaning of medical terms and recommendations). It is advisable that the patient has access to educational materials to support compliance (e.g., guides, videos in the application). 

#### Healthcare Professional – Recipient of the Record 

**Description** 

A physician or other healthcare professional from the target provider of acute inpatient care who receives and uses the Emergency Response Record to ensure continuity of care. 

**Rights** 

Access to and viewing of the Emergency Response Record. 

**Interactions** 

Loads the Record into their hospital information system (e.g., from an Affinity domain, or another EHR exchange platform). Analyses the information, incorporates it into local documentation, and determines further steps in patient care. 

#### Health Insurance Fund (Supervisory Role) 

**Description** 

An organization that may receive (or request) the Emergency Response Record as part of an audit process or for the purpose of reimbursement of provided care. 

**Rights** 

Access only to the minimum necessary data within the Record, in accordance with GDPR and the data minimization principle. 

**Interactions** 

Verifies the correctness of the Record and the justification of the provided healthcare service. 

#### IT system as recipient (e.g., HIS, eHealth platform)  

**Description** 

Automatic system role that ensures the receipt, processing, and integration of the Record into electronic systems. Rights: Full access to the message data structure for processing purposes (e.g., format conversion, validation).  

**Interaction**  

Automatically loads the message (e.g., HL7, FHIR, DASTA standards). Ensures integrity checking and integration into the recipient's environment.

### Types of Use Cases for the Emergency Response Record 

From the perspective of transmission, retrieval, and subsequent utilization of the Emergency Response Record, the following use case types can be identified: 

- Emergency Response Record for Continuity of Care – a report intended for another healthcare provider, primarily an acute inpatient care provider, but also a general practitioner, outpatient specialist, or provider of home or nursing care. 

- Emergency Response Record as an Information Source for the Treated Patient or Caregiver. 

- Retrieval and Access to the Emergency Response Record by an Authorized Person (Patient or Authorized Physician). 

- Emergency Response Record for Secondary Data Use – collection of data for statistical and healthcare research purposes. 

- Emergency Response Record as a Basis for Healthcare Reimbursement. 

This guideline focuses on the first two scenarios and their respective groups of recipients – healthcare providers and patients. It also seeks to maximize compliance with requirements for secondary data use of information contained in the Emergency Response Record (points 4 and 5 above). The issue of retrieval and access to the Emergency Response Record (use case 3) is not covered by this guideline. 

 