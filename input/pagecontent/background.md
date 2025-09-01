In the field of pre-hospital emergency care and documentation of emergency medical service (EMS) interventions, the exchange and archiving of data are governed by a combination of international standards (HL7 FHIR, IHE profiles) and national legal regulations (`Act No. 374/2011 Coll.`, `Act No. 372/2011 Coll.`, and `Decree No. 444/2024 Coll.`).

The EMS Record of Intervention (ZOV ZZS) is currently created and shared through various information systems operated by regional EMS providers. Historically, it was most commonly implemented in the DASTA 4 format, which defined the basic blocks for clinical events. More recently, it has been specified in the HL7 FHIR R4 structure, ensuring compatibility with modern eHealth solutions, Accredited Affinity Domains (AAfD), and European initiatives for health data interoperability (e.g., EHDS).

The clinical terminology used in the EMS Record of Intervention is derived from international coding systems (SNOMED CT, ICD-10, ATC, and the SÚKL registers of medicinal products). These code systems are applied consistently across different types of medical documentation, ensuring consistency and enabling the secondary use of data.
The paper-based precursor of the electronic EMS Record of Intervention is the written record maintained in accordance with `§17 of Act No. 374/2011 Coll.`, which is further specified in `Decree No. 444/2024 Coll., Annex No. 5`. The mandatory content includes in particular:
  a) identification of the patient and the healthcare provider,
  b) date, time, and location of the event,
  c) details of the intervention and response,
  d) description of the patient’s condition and the care provided,
  e) working (preliminary) diagnosis,
  f) record of the outcome and method of intervention completion,
  g) information on the handover of the patient to the receiving healthcare provider. 

<div>
<img src="EMS-1.png" class="figure-img img-responsive img-rounded center-block" width="40%">
<p><strong>Fig. 1: Printed report of the EMS Record of Intervention generated in the Koběrsky system</strong></p>
<p> </p>
</div>

<div>
<img src="EMS-2.png" class="figure-img img-responsive img-rounded center-block" width="40%">
<p><strong>Fig. 2: Printed report of the EMS Record of Intervention generated in the EZD system (First page)</strong></p>
<p> </p>
</div>

<div>
<img src="EMS-3.png" class="figure-img img-responsive img-rounded center-block" width="40%">
<p><strong>Fig. 3: Printed report of the EMS Record of Intervention generated in the EZD system (Second page)</strong></p>
<p> </p>
</div>

This legislative framework has served as the foundation for the design of the electronic version of the EMS Record of Intervention (ZOV ZZS), which is further extended with structured and coded elements enabling interoperable electronic exchange.
