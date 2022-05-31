as yet unclassified
getBoundingBoxFrom: aJSON

	| coordinates |
	
	coordinates := aJSON at: 'bbox'.
	^ { (coordinates first) @ (coordinates second) . (coordinates third) @ (coordinates fourth)}