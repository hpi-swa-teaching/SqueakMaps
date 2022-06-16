event handling
doubleClick: anEvent

	self onDoubleClickAction value: (self getLatLongFromCursorPoint: anEvent cursorPoint)
