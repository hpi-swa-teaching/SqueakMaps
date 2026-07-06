building
routeTargetsForSelectedPin: aLocation

	| targets |
	targets := OrderedCollection new.
	self targetSource buildings do: [:building |
		building detailTitle isEmpty ifFalse: [
			targets add: (SMAConcreteRouteTarget
				on: building
				label: (self campusLookup routeLabelForBuilding: building))]].
	self targetSource rooms do: [:room |
		targets add: (SMAConcreteRouteTarget
			on: room
			label: (self campusLookup routeLabelForRoom: room))].
	self targetSource pointsOfInterest do: [:poi |
		targets add: (SMAConcreteRouteTarget
			on: poi
			label: (self campusLookup routeLabelForPOI: poi))].
	targets add: self defaultStartRouteTarget.
	self selectedStartPinRouteTarget ifNotNil: [
		targets add: self selectedStartPinRouteTarget].
	(aLocation notNil and: [self selectedStartPinRouteTarget isNil
		or: [aLocation ~= self selectedStartPinRouteTarget place]]) ifTrue: [
			targets add: (SMAConcreteRouteTarget
				on: aLocation
				label: aLocation label)].
	^ targets
