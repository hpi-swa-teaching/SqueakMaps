building
routeTargets

	| targets |

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
	targets add: self defaultStartRouteTarget.
	self selectedStartPinRouteTarget ifNotNil: [
		targets add: self selectedStartPinRouteTarget].
	(self selectedPin notNil
		and: [self selectedStartPinRouteTarget isNil
		or: [self selectedPin ~= self selectedStartPinRouteTarget place]]) ifTrue: [
			targets add: (SMAConcreteRouteTarget
				on: self selectedPin
				label: self selectedPin label)].
	^ targets
