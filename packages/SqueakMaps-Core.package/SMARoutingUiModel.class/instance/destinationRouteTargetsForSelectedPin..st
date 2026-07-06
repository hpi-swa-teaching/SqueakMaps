building
destinationRouteTargetsForSelectedPin: aLocation

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
	self selectedDestinationPinRouteTarget ifNotNil: [
		targets add: self selectedDestinationPinRouteTarget].
	(aLocation notNil and: [self selectedDestinationPinRouteTarget isNil
		or: [aLocation ~= self selectedDestinationPinRouteTarget place]]) ifTrue: [
			targets add: (SMAConcreteRouteTarget
				on: aLocation
				label: aLocation label)].
	targets add: (SMANearestPOIRouteTarget for: SMAPOIPrinter).
	targets add: (SMANearestPOIRouteTarget for: SMAPOIDrinkingWater).
	^ targets
