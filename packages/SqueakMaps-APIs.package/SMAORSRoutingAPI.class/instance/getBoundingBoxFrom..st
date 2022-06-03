as yet unclassified
getBoundingBoxFrom: aJson

	| coordinates |
	
	coordinates := aJson at: 'bbox'.
	^ { (coordinates first) @ (coordinates second) . (coordinates third) @ (coordinates fourth)}