lookup
roomForPOI: aPOI

	^ self source rooms
		detect: [:room | room poiIds includes: aPOI id]
		ifNone: [nil]
