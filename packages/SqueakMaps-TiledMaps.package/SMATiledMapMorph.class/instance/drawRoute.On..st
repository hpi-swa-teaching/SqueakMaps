private
drawRoute: aRouteLine On: aCanvas

	| segmentColor |
	aRouteLine ifNil: [^ self].
	aRouteLine points isEmpty ifTrue: [^ self].

	aRouteLine segments isEmpty ifTrue: [
		^ self drawRoutePoints: aRouteLine points color: aRouteLine visibleColor on: aCanvas].

	aRouteLine segments do: [:segment |
		segmentColor := self routeSegmentIsVisible: segment third
			ifTrue: [aRouteLine visibleColor]
			ifFalse: [aRouteLine hiddenColor].
		self
			drawRoutePoints: {segment first. segment second}
			color: segmentColor
			on: aCanvas]