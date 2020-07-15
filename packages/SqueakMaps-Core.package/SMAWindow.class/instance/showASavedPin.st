select api
showASavedPin

	| pin |
	
	pin := self requestSavedPinSelection value.
	(pin notNil)
		ifTrue: [	self tiledMapMorph pins add: pin.
				self tiledMapMorph center: (MapTileLoader latLongToWorldPos: pin value latLong) ]
			
