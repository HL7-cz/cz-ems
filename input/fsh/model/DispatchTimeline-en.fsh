Logical: LogDispatchTimelineCz
Id: DispatchTimelineCz
Title: "A.2.2 - Dispatch Timeline (en)"
Description: """EMS record – Dispatch Timeline – A.2.2 EN"""

* callReceivedTime 0..1 dateTime "A.2.2.1 - Event Notification Time" """Time when the emergency call was received by the dispatch center"""
* dispatchNotifiedTime 1..1 dateTime "A.2.2.2 - Dispatch Notification Time" """Time when the dispatch order was communicated to the responding crew"""
* unitEnRouteTime 1..1 dateTime "A.2.2.3 - En-Route Time" """Time when the responding crew started the dispatch (left the base)"""
* unitArrivedAtSceneTime 1..1 dateTime "A.2.2.4 - Arrival at Scene Time" """Time when the responding crew arrived at the incident scene"""
* unitLeftSceneTime 1..1 dateTime "A.2.2.5 - Left Scene Time" """Time when the responding crew departed from the incident scene"""
* arrivedAtDestinationTime 0..1 dateTime "A.2.2.6 - Arrival at Destination Time" """Time when the responding crew arrived at the destination / transfer point"""
* patientTransferOfCareTime 1..1 dateTime "A.2.2.7 - Patient Transfer of Care Time" """Time when the patient was handed over to the receiving facility (CPALP) or when patient care was terminated"""
* unitBackInServiceTime 0..1 dateTime "A.2.2.8 - Back in Service Time" """Time when the responding crew became available again / formally completed the dispatch"""
