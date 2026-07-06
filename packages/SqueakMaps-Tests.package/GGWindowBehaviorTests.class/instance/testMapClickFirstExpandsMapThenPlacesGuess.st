testing
testMapClickFirstExpandsMapThenPlacesGuess

	| event |
	window initializeWindowOnClick.
	window handleStartButton.
	event := SMATestMouseEvent new position: window tiledMapMorph bounds center; yourself.
	window mapClicked: event.
	self assert: window viewSwapper isMapLarge.
	window mapClicked: event.
	self assert: window currentGuess isPresent
