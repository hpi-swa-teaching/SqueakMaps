event handling
doubleClick: anEvent

	self onDoubleClickAction value: (self getWorldPosFromCursorPoint: anEvent cursorPoint)
