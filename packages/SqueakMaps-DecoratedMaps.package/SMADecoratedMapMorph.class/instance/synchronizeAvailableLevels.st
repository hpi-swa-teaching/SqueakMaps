updating
synchronizeAvailableLevels

	levelSelectionModel ifNil: [^ self].
	levelSelectionModel availableLevels:
		(self roomOverlays collect: [:overlay | overlay model level])
