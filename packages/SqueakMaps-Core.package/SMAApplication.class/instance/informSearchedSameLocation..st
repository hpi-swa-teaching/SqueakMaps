search
informSearchedSameLocation: aSMALocation

	self mapConfigurator displayLocation: aSMALocation.
	self mapConfigurator focusLocation: aSMALocation.
	^ self inform: 'Start and Destination Location are the same.'