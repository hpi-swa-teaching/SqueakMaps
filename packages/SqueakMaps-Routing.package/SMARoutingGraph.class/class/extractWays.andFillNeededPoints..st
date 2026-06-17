as yet unclassified
extractWays: anXMLRoot andFillNeededPoints: aDictionary

	| ways way |
	ways := OrderedCollection new.
	
	anXMLRoot tagsNamed: #way do: [:w |
		(self isHighway: w) ifTrue: [
			way := SMARoutingWay new.
			way levels: (self tagValueNamed: 'level' in: w ifAbsent: [nil]).
			w tagsNamed: #nd do: [:nd | | pointId |
				pointId := (nd attributeAt: #ref) asInteger.
				way points add: pointId.
				aDictionary at: pointId put: 0].
			ways add: way]].
	
	^ ways