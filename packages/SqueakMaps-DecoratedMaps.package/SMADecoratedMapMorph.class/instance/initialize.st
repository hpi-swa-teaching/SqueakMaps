accessing
initialize

	super initialize.
	points := Dictionary new.
	rooms := OrderedCollection new.
	buildings := OrderedCollection new.
	pointsOfInterest := OrderedCollection new.
	roomOverlays := OrderedCollection new.
	buildingOverlays := OrderedCollection new.
	levelSelectionModel ifNil: [self levelSelectionModel: SMALevelSelectionModel new].
	self synchronizeAvailableLevels.
	indoorOverlayMinZoom := 19.
	hoveredBuildingOverlay := nil.
	hoveredRoomOverlay := nil.
	roomOverlayZoomWasActive := false