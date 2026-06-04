pin management
pinManagementOptions

	^ Dictionary newFrom:
		{Association key: 'remove a pin' value: [self removeAPin].
		Association key: 'remove all pins' value: [self tiledMapMorph clearPins].
		Association key: 'show a saved pin' value: [self showASavedPin].
		Association key: 'delete a saved pin' value: [self deleteASavedPin].
		Association key: 'save a pin' value: [(self tiledMapMorph pins) ifNotEmpty: [self savePin]]}
