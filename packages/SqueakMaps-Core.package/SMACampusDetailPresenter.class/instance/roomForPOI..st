building
roomForPOI: aPOI

	^ self poiSource rooms
		detect: [:room | room poiIds includes: aPOI id]
		ifNone: [nil]
