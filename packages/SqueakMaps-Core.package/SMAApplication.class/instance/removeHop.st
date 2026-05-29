hop management
removeHop

	self hopLocations removeAt: self selectedHopIndex.
	self changed: #hopLocations.
	self changed: #hopLocationLabels.