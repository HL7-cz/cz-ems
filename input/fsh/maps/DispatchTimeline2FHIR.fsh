// #	Položka	Četnost	Povinnost	Mapping
// A2.2	Časová osa výjezdu	1..1	Povinné	
// A2.2.1	Čas oznámení události	0..1	Požadované	Communication.received
// A2.2.2	Čas výzvy	1..1	Povinné	Task.authoredOn
// A2.2.3	Čas výjezdu	1..1	Povinné	Encounter.period.start
// A2.2.4	Čas příjezdu na místo události	1..1	Povinné	Encounter.location[scene].period.start
// A2.2.5	Čas odjezdu z místa události 	1..1	Povinné	Encounter.location[scene].period.end
// A2.2.6	Čas příjezdu do místa předání	0..1	Požadované	Encounter.location[destination].period.start
// A2.2.7	Čas předání pacienta	1..1	Povinné	Encounter.location[destination].period.end
// A2.2.8	Čas ukončení výjezdu	0..1	Volitelné	Encounter.period.end

Instance: DispatchTimeline2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* name = "A.2.2 DispatchTimeline2FHIRcz"
* title = "CZ DispatchTimeline Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ Emergency Medical Service Report DispatchTimeline Model to this guide mapping"""


// A2.2.1	Čas oznámení události	0..1	Požadované	Communication.received
* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/DispatchTimelineCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-communication-ems"
* group[=].element[+].code = #callReceivedTime
* group[=].element[=].display = "A.2.2.1 - Event Notification Time"
* group[=].element[=].target.code = #Communication.received 
* group[=].element[=].target.display = "received"
* group[=].element[=].target.equivalence = #relatedto

// A2.2.2	Čas výzvy	1..1	Povinné	Task.authoredOn
* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/DispatchTimelineCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-task-ems"
* group[=].element[+].code = #dispatchNotifiedTime
* group[=].element[=].display = "A.2.2.2 - Dispatch Notification Time"
* group[=].element[=].target.code = #Task.authoredOn
* group[=].element[=].target.display = "authoredOn"
* group[=].element[=].target.equivalence = #relatedto

// A2.2.3	Čas výjezdu	1..1	Povinné	Encounter.period.start
// A2.2.4	Čas příjezdu na místo události	1..1	Povinné	Encounter.location[scene].period.start
// A2.2.5	Čas odjezdu z místa události 	1..1	Povinné	Encounter.location[scene].period.end
// A2.2.6	Čas příjezdu do místa předání	0..1	Požadované	Encounter.location[destination].period.start
// A2.2.7	Čas předání pacienta	1..1	Povinné	Encounter.location[destination].period.end
// A2.2.8	Čas ukončení výjezdu	0..1	Volitelné	Encounter.period.end
* group[+].source = "https://hl7.cz/fhir/cz-ems/StructureDefinition/DispatchTimelineCz"
* group[=].target = "https://hl7.cz/fhir/cz-ems/StructureDefinition/cz-encounter-ems"
* group[=].element[+].code = #unitEnRouteTime
* group[=].element[=].display = "A.2.2.3 - En-Route Time"
* group[=].element[=].target.code = #Encounter.period.start
* group[=].element[=].target.display = "period.start"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #unitArrivedAtSceneTime
* group[=].element[=].display = "A.2.2.4 - Arrival at Scene Time"
* group[=].element[=].target.code = #Encounter.location[scene].period.start
* group[=].element[=].target.display = "location (slice: scene).period.start"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #unitLeftSceneTime
* group[=].element[=].display = "A.2.2.5 - Left Scene Time"
* group[=].element[=].target.code = #Encounter.location[scene].period.end
* group[=].element[=].target.display = "location (slice: scene).period.end"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #arrivedAtDestinationTime
* group[=].element[=].display = "A.2.2.6 - Arrival at Destination Time"
* group[=].element[=].target.code = #Encounter.location[destination].period.start
* group[=].element[=].target.display = "location (slice: destination).period.start"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #patientTransferOfCareTime
* group[=].element[=].display = "A.2.2.7 - Patient Transfer of Care Time"
* group[=].element[=].target.code = #Encounter.location[destination].period.end
* group[=].element[=].target.display = "location (slice: destination).period.end"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #unitBackInServiceTime
* group[=].element[=].display = "A.2.2.8 - Back in Service Time"
* group[=].element[=].target.code = #Encounter.period.end
* group[=].element[=].target.display = "period.end"
* group[=].element[=].target.equivalence = #relatedto

