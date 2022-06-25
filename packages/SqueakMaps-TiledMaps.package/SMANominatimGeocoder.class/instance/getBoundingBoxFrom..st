as yet unclassified
getBoundingBoxFrom: aJson

	| coordinates |
	
	coordinates := aJson at: 'boundingbox'.
	^ coordinates third asNumber @ coordinates first asNumber corner: coordinates fourth asNumber @ coordinates second asNumber