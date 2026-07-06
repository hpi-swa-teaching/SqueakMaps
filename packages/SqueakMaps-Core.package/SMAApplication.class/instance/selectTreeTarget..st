building
selectTreeTarget: aRouteTarget

	| target location |

	target := self routeTargetFor: aRouteTarget in: self destinationRouteTargets.
	target ifNil: [^ self].
	target := target
		resolveFrom: self defaultStartRouteTarget
		among: self tiledMapMorph pointsOfInterest.
	target ifNil: [^ self].
	location := self locationForRouteTarget: target.
	location ifNil: [^ self].
	self mapConfigurator
		clear;
		displayLocation: location;
		focusLocation: location.
	self selectCampusDetailTarget: target place
