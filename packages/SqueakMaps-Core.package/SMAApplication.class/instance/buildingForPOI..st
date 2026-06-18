building
buildingForPOI: aPOI

	^ self tiledMapMorph buildings
		detect: [:building | building poiIds includes: aPOI id]
		ifNone: [nil]