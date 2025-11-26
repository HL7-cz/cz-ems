<div xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <blockquote class="stu-note">
        <b>Informative for this version of the guide</b>
        <p>The obligations have been added to this version of the guide only as informative material to gather feedback on their use.</p>
    </blockquote>
</div>

### Overview

Obligations are a mean offered by HL7 FHIR to specify functional capabilities that defined actors MAY, SHOULD or SHALL to the data elements specified by the profiles.

<strong>For the purposes of this EMS Report standard, we define only a single target conformance level – L3.</strong> The levels listed below describe the general methodology used for categorizing clinical documents; however, within this specification, only Level L3 is required:

L1 – Unstructured document
Only the essential document metadata and a human-readable PDF document are provided.

L2 – Structured document with textual sections
The document is divided into clearly identifiable sections (e.g., initial assessment, anamnesis, risk factors, medication, recommendations, etc.), but all content is still provided solely as unformalized free text.

L3 – Structured and partially formalized document <strong>(The level required by this standard)</strong>
The document is divided into identifiable sections as in Level L2; however, selected information is represented in a formalized and coded manner, and additional data MAY be formalized. This is the mandatory conformance level for the EMS Report.

This page describes also the actors that have been defined for specifying the obligations.

### Actors

Actors were specified in these roles:

| Role                                                                                                    | Description                                                                                                                        |
| ------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| the [Level 1 Creator](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L1.html)   | This is a L1 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 1 Consumer](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L1.html) | This L1 actor represents the system that uses the received or retrieved report.                                                    |
| the [Level 2 Creator](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L2.html)   | This is a L2 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 2 Consumer](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L2.html) | This L2 actor represents the system that uses the received or retrieved report.                                                    |
| the [Level 3 Creator](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L3.html)   | This is a L3 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 3 Consumer](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L3.html) | This L3 actor represents the system that uses the received or retrieved report.                                                    |
