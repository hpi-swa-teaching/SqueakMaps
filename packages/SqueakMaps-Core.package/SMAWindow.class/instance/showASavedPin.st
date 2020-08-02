select api
showASavedPin

	| index pin|
	
	index := self requestPinSelectionFrom: self class savedPins.
	(index > 0)
		ifTrue: [pin := (self class savedPins at: index).
				self tiledMapMorph pins add: pin.
				self tiledMapMorph center: (MapTileLoader latLongToWorldPos: pin value latLong)]
			
