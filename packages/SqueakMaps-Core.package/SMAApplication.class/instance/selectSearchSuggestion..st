building
selectSearchSuggestion: anInteger

	| target location |
	anInteger = 0 ifTrue: [^ self].
	target := (self searchSuggestionTargets at: anInteger ifAbsent: [^ self]) value.
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