event handling
mouseDown: anEvent

	gameHandler ifNotNil: [
		gameHandler mapClicked: anEvent ]