private
drawRoute: aRouteLine On: aCanvas

	aRouteLine ifNil: [^ self].
	aRouteLine points isEmpty ifTrue: [^ self].
	
	aRouteLine segments isEmpty ifTrue: [
		^ self
			drawRoutePoints: aRouteLine points
			color: aRouteLine visibleColor
			on: aCanvas].
	
	aRouteLine segments do: [:segment | | segmentColor |
		segmentColor := self colorOfSegment: segment forRoute: aRouteLine.
		self drawRoutePoints: {segment first. segment second} color: segmentColor on: aCanvas]