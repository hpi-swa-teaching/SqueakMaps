as yet unclassified
getBoundingBoxFrom: aJson

	| coordinates lowerLeftCorner upperRightCorner |
	
	coordinates := aJson at: 'boundingbox'.
	lowerLeftCorner := coordinates third asNumber @ coordinates first asNumber.
	upperRightCorner := coordinates fourth asNumber @ coordinates second asNumber.

	^  lowerLeftCorner corner: upperRightCorner