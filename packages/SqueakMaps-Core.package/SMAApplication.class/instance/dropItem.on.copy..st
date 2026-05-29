hop management
dropItem: aPassenger on: aDestinationIndex copy: aCopyBool
	"Dragged element on index of list"
	
	"Dragged element should not be copied"
	aCopyBool ifFalse: [
			self hopLocations remove: aPassenger
		].
	self hopLocations add: aPassenger beforeIndex: aDestinationIndex.
	self changed: #hopLocations.
	self changed: #hopLocationLabels.
	