json parsing
getBoundingBoxFrom: aJson

	| coordinates lowerLeftCorner upperRightCorner |
	
	coordinates := aJson at: 'bbox'.

	lowerLeftCorner := coordinates first @ coordinates second.
	upperRightCorner := coordinates third @ coordinates fourth.

	^ lowerLeftCorner corner: upperRightCorner