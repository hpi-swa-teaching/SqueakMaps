event handling
mouseDown: anEvent

	self gameHandler ifNotNil: [
		self gameHandler mapClicked: anEvent ]