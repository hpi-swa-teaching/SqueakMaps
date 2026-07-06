building
selectSearchSuggestion: anInteger

	| target location |

	anInteger = 0 ifTrue: [^ self].
	target := self searchSuggestionTargets at: anInteger ifAbsent: [^ self].
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
