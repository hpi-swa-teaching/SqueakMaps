select api
showASavedPin

	| index pin|
	
	index := self requestPinSelectionFrom: SMAWindow savedPins.
	(index > 0)
		ifTrue: [pin := (SMAWindow savedPins at: index).
				self tiledMapMorph pins add: pin.
				self tiledMapMorph center: (MapTileLoader latLongToWorldPos: pin value latLong)]
			
