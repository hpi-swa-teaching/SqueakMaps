private
extractWays: anXMLRoot andFillNeededPoints: aDictionary

	| extractedWays |
	extractedWays := OrderedCollection new.
	anXMLRoot tagsNamed: #way do: [:element |
		(self isRoutingWay: element) ifTrue: [
			| way |
			way := SMARoutingWay new.
			way levels: (SMAOSMTagReader valueNamed: 'level' in: element ifAbsent: [nil]).
			element tagsNamed: #nd do: [:nodeReference |
				| pointId |
				pointId := (nodeReference attributeAt: #ref) asInteger.
				way points add: pointId.
				aDictionary at: pointId put: nil].
			extractedWays add: way]].
	^ extractedWays
