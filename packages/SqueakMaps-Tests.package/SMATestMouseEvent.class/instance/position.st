accessing
position
	^ position ifNil: [self cursorPoint]
