building
selectTreeTarget: aRouteTarget

	| target location |
	target := aRouteTarget.
	(self isPOITypeRouteTarget: target) ifTrue: [
		target := self
			nearestPOIOfClass: (target at: 2)
			from: self defaultStartRouteTarget].
	target ifNil: [^ self].
	location := self locationForRouteTarget: target.
	location ifNil: [^ self].
	self mapConfigurator
		clear;
		displayLocation: location;
		focusLocation: location.
	self selectCampusDetailTarget: target