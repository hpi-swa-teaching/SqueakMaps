hop management
dropItem: aPassenger on: aDestinationIndex copy: aCopyBool
	
	aCopyBool ifFalse: [
			self hopLocations remove: aPassenger
		].
	self hopLocations add: aPassenger beforeIndex: aDestinationIndex.
	self changed: #hopLocations.
	self changed: #hopLocationLabels.
	