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
		((poi isKindOf: SMAPOIPrinter) or: [poi isKindOf: SMAPOIDrinkingWater])
			ifFalse: [targets add: (self routeLabelForPOI: poi) -> poi]].
	targets add: 'POI: Drucker (nächstgelegener)' -> {#poiType. SMAPOIPrinter}.
	targets add: 'POI: Trinkwasserspender (nächstgelegener)' -> {#poiType. SMAPOIDrinkingWater}.
	^ targets