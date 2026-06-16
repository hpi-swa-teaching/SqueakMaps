as yet unclassified
extractWays: anXMLRoot

	| ways way |
	ways := OrderedCollection new.
	
	anXMLRoot tagsNamed: #way do: [:w |
		(self isHighway: w) ifTrue: [
			way := SMARoutingWay new.
			way level: (self tagValueNamed: 'level' in: w ifAbsent: [nil]).
			w tagsNamed: #nd do: [:nd | | pointId |
				pointId := (nd attributeAt: #ref) asInteger.
				way points add: pointId].
			ways add: way]].
	
	^ ways