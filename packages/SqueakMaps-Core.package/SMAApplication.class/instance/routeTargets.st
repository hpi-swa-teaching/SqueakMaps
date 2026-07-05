building
routeTargets

	| targets |
	targets := OrderedCollection new.
	self tiledMapMorph buildings do: [:building |
		building detailTitle isEmpty ifFalse: [
			targets add: (self routeLabelForBuilding: building) -> building]].
	self tiledMapMorph rooms do: [:room |
		targets add: (self routeLabelForRoom: room) -> room].
	self tiledMapMorph pointsOfInterest do: [:poi |
		targets add: (self routeLabelForPOI: poi) -> poi].
	targets add: 'Bahnhof Griebnitzsee' -> self defaultStartPoint.
	self selectedStartPinRouteTarget ifNotNil: [
		targets add: self selectedStartPinRouteTarget label -> self selectedStartPinRouteTarget].
	(self selectedPin notNil
		and: [self selectedPin ~~ self selectedStartPinRouteTarget]) ifTrue: [
		targets add: self selectedPin label -> self selectedPin].
	^ targets