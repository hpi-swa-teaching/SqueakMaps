select api
showASavedPin

	| pin |
	
	pin := self requestSavedPinSelection.
	(pin notNil)
		ifTrue: [	self tiledMapMorph pins add: pin.
				self tiledMapMorph center: (MapTileLoader latLongToWorldPos: pin latLong) ]
			
