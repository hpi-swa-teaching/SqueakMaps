accessing
cursorPoint
	^ cursorPoint ifNil: [position ifNil: [0 @ 0]]
