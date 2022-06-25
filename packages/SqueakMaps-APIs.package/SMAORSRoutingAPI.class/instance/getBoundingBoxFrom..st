as yet unclassified
getBoundingBoxFrom: aJson

	| coordinates |
	
	coordinates := aJson at: 'bbox'.
	^ coordinates first @ coordinates second corner: coordinates third @ coordinates fourth