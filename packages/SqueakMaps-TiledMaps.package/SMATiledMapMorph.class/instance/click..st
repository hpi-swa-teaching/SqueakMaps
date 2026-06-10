event handling
click: anEvent

	onClickAction ifNotNil: [
		onClickAction value: (self getWorldPosFromCursorPoint: anEvent cursorPoint)]
