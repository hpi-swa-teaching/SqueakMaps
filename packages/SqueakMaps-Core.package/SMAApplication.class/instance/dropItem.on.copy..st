hop management
dropItem: aPassenger on: aDestinationIndex copy: aCopyBool
	"Dragged element on index of list"
	| oldElementIndex |
	
	oldElementIndex := self hopLocations indexOf: aPassenger ifAbsent: [ ^ self].
	
	"Dragged element should not be copied"
	aCopyBool ifFalse: [
			self hopLocations remove: aPassenger
		].
	self hopLocations add: aPassenger beforeIndex: aDestinationIndex.
	self changed: #hopLocations.
	self changed: #hopLocationLabels.
	