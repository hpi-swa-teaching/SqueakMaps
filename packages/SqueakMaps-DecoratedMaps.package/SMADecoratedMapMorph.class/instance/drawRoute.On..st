accessing
drawRoute: aRouteLine On: aCanvas

	super drawRoute: aRouteLine On: aCanvas.
	self drawFloorChangeLabelsFor: aRouteLine on: aCanvas