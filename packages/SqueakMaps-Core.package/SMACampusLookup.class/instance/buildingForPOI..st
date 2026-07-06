lookup
buildingForPOI: aPOI

	^ self source buildings
		detect: [:building | building poiIds includes: aPOI id]
		ifNone: [nil]
