as yet unclassified
getBoundingBoxFrom: aJSON

	| coordinates |
	
	coordinates := aJSON at: 'bbox'.
	^ { (coordinates second) . (coordinates fourth) . (coordinates first) . (coordinates third)}