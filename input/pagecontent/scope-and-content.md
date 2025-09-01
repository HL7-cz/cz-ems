### Scope 

#### Included areas 

This document deals with the functional specification of the Emergency Medical Service (EMS) Record of Intervention (ZOV ZZS), its structure, and the coding systems to be used in its creation. 

The term “EMS Record of Intervention” refers to a standardized medical document that captures the course of pre-hospital emergency care, from the receipt of the emergency call to the handover of the patient for further care or the conclusion of the intervention. The record must reflect administrative, temporal, clinical, and therapeutic data, as defined by the relevant legal regulations and specified data sets. 

Unlike other types of medical documentation, the EMS Record of Intervention is created in a dynamic and time-constrained environment, often directly in the field, and may include multiple records if more than one patient is treated during a single intervention. However, each patient must have their own individual record, linked to a common intervention identifier. 

#### Excluded areas 

The functional specification does not address the overall ecosystem of medical documentation nor the technical details of the transmission and archiving of the EMS Record of Intervention (ZOV ZZS). It also does not cover the workflows of EMS crews or clinical decision-making algorithms, which are subject to the internal methodological guidelines of EMS providers.

### Content

#### Information Models

Basic Sections of the Emergency Medical Service (EMS) Record of Intervention (ZOV ZZS).

##### Conceptual view

Emergency Medical Service (EMS) Record could be divided into several parts: document header and body and optionally it could also have various attachments, such as attachments or presented form.

###### Imaging Order Parts

<figure>
  {% include ems-mindmap.svg %}
</figure>

###### Imaging Order Header

<figure>
  {% include header-mindmap.svg %}
</figure>

###### Imaging Order Body

<figure>
  {% include body-mindmap.svg %}
</figure>

#### Subjects 

**Patient** 

The patient is defined as the individual who received pre-hospital emergency care during the EMS intervention. This profile specifies the basic identification and demographic data of the patient, including national identifiers (RID/DRID) and additional supporting attributes (e.g., nationality, communication language), localized for the Czech context. 

**Healthcare Professional** 

A healthcare professional is a member of the EMS response team who provides medical care and is responsible for completing and maintaining the EMS Record of Intervention. This profile enables the identification of the individual through data recorded in the National Register of Healthcare Professionals (NR-ZP), or alternatively using international terminologies (e.g., SNOMED CT). Each healthcare professional may be assigned a role (physician, paramedic, emergency dispatcher, non-physician healthcare professional), which reflects their function during the intervention. 

**Healthcare Provider (PZS)** 

A healthcare provider refers to the organization responsible for operating the EMS service or the receiving provider of acute inpatient care (CPALP) to whom the patient is handed over. This profile specifies the representation of the organization according to the National Register of Healthcare Providers (NRPZS) and other identifiers (e.g., company ID – IČO). In this document, it is abbreviated as healthcare facility (ZZ). 

#### Objects 

**Medical Device** 

This profile specifies the constraints applied to Device within the Czech national interoperability project in relation to the EMS Record of Intervention. It describes equipment and devices used by EMS crews during an intervention, either in the role of an “observer” (monitoring, measuring vital signs) or a “performer” (active use in the provision of care, e.g., a defibrillator). The profile defines the mandatory identification and descriptive attributes of the device and establishes how these should be recorded within the EMS Record of Intervention. 

**Medical Supply** 

This profile defines how medical supplies used by EMS crews during an intervention are represented. The type of medical supply should preferably be coded using SNOMED CT or the European Medical Device Nomenclature (EMDN). If information about a supply is missing or the supply is absent, this fact must be explicitly recorded using codes from the Absent and Unknown Data – IPS system. 

**Components**

Within the context of this standard, a component is understood as a reusable part of the data structure that is common to multiple clinical documents. A typical example includes biometric data (e.g., height, weight, BMI, vital signs), which should be defined and used consistently not only in the EMS Record of Intervention, but also across other types of medical documentation (e.g., discharge summary, outpatient report, patient summary). 

### Structure of the EMS Record  

#### EMS Record Header 

**Patient Identification** 

This section contains the patient’s basic information, including identifiers (RID/DRID), first name, last name, date of birth, nationality, and other supporting data enabling unambiguous identification in the Czech national context. 

**Patient Contact Information** 

This section includes the patient’s contact persons (legal guardians, close relatives, or other individuals) who may provide additional information about the patient. The type of contact is distinguished by role (e.g., emergency contact, legal guardian, other relationship to the patient). 

**Health Insurance** 

Contains information about the patient’s health insurance provider, insurance number, and any supplementary details about the insurance relationship. 

**Document Recipient** 

Specifies the intended recipient of the record, typically the receiving provider of acute inpatient care (CPALP) or another healthcare facility to which the patient is handed over. 

**Document Author** 

Identification details of the EMS team member who created and is responsible for the record. 

**Document Metadata** 

Contains additional administrative information about the document, e.g., category, version, date and time of creation, document status, language, and confidentiality level. 

**Electronic Signatures** 

Section intended for electronic signature or timestamp in accordance with Act No. 327/2011 Coll., §54a. 

#### Record Body 

**Intervention Details** 

This section contains the intervention identification number, details of the EMS crew (team members, team type, vehicle), information from the dispatch center (ZOS), location of the intervention, classification of the emergency call, and urgency level. 

**Timeline of Intervention** 

Contains key time points from receipt of the emergency call, dispatch of the crew, arrival at the scene, course of the intervention, up to its conclusion or patient handover. 

**Medical History (Anamnesis)** 

Summarizes the patient’s personal, family, social, and toxicological history, including significant procedures, vaccinations, and epidemiological data, if relevant to the intervention. 

**Urgent Information** 

A mandatory part of the record containing allergies, intolerances, and any warnings essential for safe care delivery. 

**Present Illness** 

Description of the current medical condition or event that led to the intervention. 

**Objective Findings** 

Includes anthropometric data, vital signs, other measured parameters (e.g., glycemia, GCS), physical examination findings, and results of additional tests (e.g., ECG). 

**Therapy** 

Description of procedures performed according to the EMS coding system, medical devices used, and medications administered (including dose, route of administration, and time). 

**Diagnostic Summary** 

Contains diagnoses in structured form (ICD-10) as well as supplementary free-text notes. 

**Course of Treatment and Recommendations** 

Summarizes the course of care provided and recommendations for subsequent treatment. 

**Conclusion** 

Specifies the method of intervention completion (e.g., patient handover to CPALP, left at the scene), including identification of the EMS staff handing over and the healthcare professional receiving the patient. 

**Attachments** 

Option to add supplementary documentation (photographs, device records, ECG, PDF files, etc.). 