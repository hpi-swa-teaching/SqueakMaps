as yet unclassified
testDecoratedMapConstructionOfPOIs

	| decoratedMap pois poi1 officePOI |
	decoratedMap := SMAOSMMapBuilder fromOSMFile: self poiOSMFile.
	pois := decoratedMap pointsOfInterest.
	self assert: 8 equals: (pois size).
	poi1 := pois at: 1.
	self assert: (poi1 isKindOf: SMAPOIDrinkingWater).
	self assert: #(0) = poi1 levels.
	
	officePOI := pois detect: [:each | each isKindOf: SMAPOIOffice].
	self assert: 'Bernhard Renard' equals: officePOI displayName.
	
	"
	self assert: decoratedMap rooms size equals: 1.
	room := decoratedMap rooms at: 1.
	self assert: room ref equals: 'K-E.18'.
	self assert: room level equals: 0.
	points := room points.
	self assert: points size equals: 6.
	ids := points collect: [:p | p id.
		].
	expectedIds := OrderedCollection new addAll: {-26651. -26656. -26648. -26649. -26652. -26651}; yourself.
	self assert: ids equals: expectedIds.
	self assert: (points at: 3) equals: (SMAPoint new id: -26648; lat: 52.39335693222; lon: 13.13017396043)."