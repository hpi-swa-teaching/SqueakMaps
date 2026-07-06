building
buildingForPOI: aPOI

	^ self poiSource buildings
		detect: [:building | building poiIds includes: aPOI id]
		ifNone: [nil]
