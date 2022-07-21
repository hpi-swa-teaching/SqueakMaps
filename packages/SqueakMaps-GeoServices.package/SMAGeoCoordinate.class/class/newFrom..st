initialize-release
newFrom: aPoint

	^ self new
		lat: aPoint y;
		long: aPoint x;
		yourself