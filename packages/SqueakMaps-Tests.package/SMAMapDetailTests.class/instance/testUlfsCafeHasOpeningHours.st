as yet unclassified
testUlfsCafeHasOpeningHours

	| decoratedMap poi |
	decoratedMap := SMAOSMMapBuilder fromOSMFile:
		self fullOSMFile.

	poi := decoratedMap pointsOfInterest
		detect: [:each |
			(each isKindOf: SMAPOICanteen) and: [
				each detailTitle = 'Ulf''s Café im HPI']].

	self assert: poi hasTimeInfos.
	self assert: (poi timeInfos anySatisfy: [:info |
		info label = 'Öffnungszeiten'
			and: [info value = 'Mo-Fr 08:00-16:00']])