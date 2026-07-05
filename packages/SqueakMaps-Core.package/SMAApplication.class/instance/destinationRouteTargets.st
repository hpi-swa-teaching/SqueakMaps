building
destinationRouteTargets

	| targets |
	targets := OrderedCollection new.
	self tiledMapMorph buildings do: [:building |
		building detailTitle isEmpty ifFalse: [
			targets add: (self routeLabelForBuilding: building) -> building]].
	self tiledMapMorph rooms do: [:room |
		targets add: (self routeLabelForRoom: room) -> room].
	self tiledMapMorph pointsOfInterest do: [:poi |
		targets add: (self routeLabelForPOI: poi) -> poi].
	self selectedDestinationPinRouteTarget ifNotNil: [
		targets add: self selectedDestinationPinRouteTarget label -> self selectedDestinationPinRouteTarget].
	(self selectedPin notNil
		and: [self selectedPin ~~ self selectedDestinationPinRouteTarget]) ifTrue: [
		targets add: self selectedPin label -> self selectedPin].
	targets add: 'POI: Drucker (nächstgelegener)' -> {#poiType. SMAPOIPrinter}.
	targets add: 'POI: Trinkwasserspender (nächstgelegener)' -> {#poiType. SMAPOIDrinkingWater}.
	^ targets