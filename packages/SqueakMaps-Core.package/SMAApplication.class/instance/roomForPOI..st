building
roomForPOI: aPOI

	^ self tiledMapMorph rooms
		detect: [:room | room poiIds includes: aPOI id]
		ifNone: [nil]