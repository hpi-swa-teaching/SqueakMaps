select api
pinManagementMenu

	^ Dictionary newFrom:
		{Association key: 'save a pin' value: [(self tiledMapMorph pins) ifNotEmpty: [self savePin]].
		Association key: 'remove all pins' value: [self tiledMapMorph clearPins].
		Association key: 'remove a pin' value: [self deletePin].
		Association key: 'delete a saved pin' value: [].
		Association key: 'show a saved pin' value: []}
