accessing
initialize

	super initialize.

	points := Dictionary new.
	rooms := OrderedCollection new.
	buildings := OrderedCollection new.
	pointsOfInterest := OrderedCollection new.
	roomOverlays := OrderedCollection new.
	buildingOverlays := OrderedCollection new.

	visibleLevel := 0.
	indoorOverlayMinZoom := 19