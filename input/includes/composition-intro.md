### Sections and content

The composition contains basic components and sections. Within the sections, it is divided into a set of mandatory and optional sections. If no data is available for a mandatory section, the reason can be stated in `composition.section.emptyReason`.

### Composition structure

The EMS dispatch record contains basic elements and the following sections in the order in which they are described:

#### Basic elements

General information about the record. Most of the information elements in this part of the composition are filled in similarly to other types of messages. It contains information about the patient, the source organization, and the author.

**Clinical event (Encounter)**

This profile allows the message to be linked to one specific mission to which the message relates.

#### Composition section

**Dispatch**
This section is mandatory and contains all data about the dispatch, such as the identification of the dispatch, vehicle, ZOS operator, crew members, place of departure, and event.

**Timeline**
This section is mandatory and contains the timeline of the dispatch—the time of the event notification, call, dispatch, arrival at the scene, departure from the scene, and time of arrival at the handover location, including the handover itself. Finally, it also contains the time of the end of the dispatch.

**Patient Hx**
This section is mandatory and contains the history of health problems that are part of the patient's personal medical history.

**Medical Devices**
This section is mandatory and contains the history of implants and medical devices. If the section is empty, the reason must be explicitly stated using the IPS Absent and Unknown Data code system.

**Significant Procedures**
This section contains significant procedures whose results affect the options and methods of healthcare provision or may affect diagnostic methods (their feasibility and evaluation).

**Immunizations**
This section contains the vaccination history.

**Travel Hx**
This section contains the travel history.

**Infectious Contacts**
This section contains infectious contacts, i.e., information about infections to which the patient has been exposed.

**Fmily History**
This section contains family history. This is information about serious diseases in close blood relatives with known or presumed genetic potential or with a possible impact on patient care. 

**Social History**
This section contains the patient's social history (social status, employment, hobbies, social network, education, and housing).

**Alcohol Use**
This section contains information about regular alcohol consumption.

**Tobacco Use**
This section contains information about regular tobacco use.

**Drug Use**
This section contains information about regular drug use.

**Allergies**
This section contains information about allergies and intolerances. Recording allergies and intolerances is mandatory. For patients without allergies or intolerances, this fact must be explicitly stated using the appropriate code. 

**Alert**
This section contains all other warnings.

**Findings**
This section contains all findings obtained during the mission. It contains information from anthropometric measurements, results of basic vital signs measurements, and other measured parameters (such as blood glucose). It may also contain somatic examinations and all other examinations.

**Procedure**
This section contains information about all medical procedures and medical devices and medications used during the mission.

**Diagnostic Summary**
This section contains a diagnostic summary. It describes the diagnoses made during the mission in both coded and text form.

**Course Of Treatment**
This section contains a record of the course of treatment and the development of the patient's condition during the mission.

**Recommendations**
This section contains all recommendations for the patient after the end of treatment.

**Payers**
This section contains information about the patient's insurance.

**Attachments**
This section contains all attachments related to the call-out. It may contain records from devices or photographs taken at the scene of the incident.