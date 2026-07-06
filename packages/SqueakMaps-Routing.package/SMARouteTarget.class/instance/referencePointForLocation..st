routing
referencePointForLocation: aLocation

	^ SMAPoint new
		id: nil;
		lon: aLocation coordinates long;
		lat: aLocation coordinates lat;
		yourself
