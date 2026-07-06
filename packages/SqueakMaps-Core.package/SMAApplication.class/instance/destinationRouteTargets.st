building
destinationRouteTargets

	| targets nearestPrinter nearestWater |

	targets := OrderedCollection new.
	self tiledMapMorph buildings do: [:building |
		building detailTitle isEmpty ifFalse: [
			targets add: (SMAConcreteRouteTarget
				on: building
				label: (self routeLabelForBuilding: building))]].
	self tiledMapMorph rooms do: [:room |
		targets add: (SMAConcreteRouteTarget
			on: room
			label: (self routeLabelForRoom: room))].
	self tiledMapMorph pointsOfInterest do: [:poi |
		targets add: (SMAConcreteRouteTarget
			on: poi
			label: (self routeLabelForPOI: poi))].
	self selectedDestinationPinRouteTarget ifNotNil: [
		targets add: self selectedDestinationPinRouteTarget].
	(self selectedPin notNil
		and: [self selectedDestinationPinRouteTarget isNil
		or: [self selectedPin ~= self selectedDestinationPinRouteTarget place]]) ifTrue: [
			targets add: (SMAConcreteRouteTarget
				on: self selectedPin
				label: self selectedPin label)].
	nearestPrinter := SMANearestPOIRouteTarget for: SMAPOIPrinter.
	targets add: nearestPrinter.
	nearestWater := SMANearestPOIRouteTarget for: SMAPOIDrinkingWater.
	targets add: nearestWater.
	^ targets
