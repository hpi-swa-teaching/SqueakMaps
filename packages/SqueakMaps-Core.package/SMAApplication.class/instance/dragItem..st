hop management
dragItem: anIndex
	
	^ self hopLocations at: anIndex ifAbsent: [nil]