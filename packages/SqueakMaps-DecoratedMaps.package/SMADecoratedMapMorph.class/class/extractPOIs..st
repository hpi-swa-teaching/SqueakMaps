as yet unclassified
extractPOIs: anXMLRoot

	| points |
	points := OrderedCollection new.
	anXMLRoot tagsNamed: #node do: [:p | | point |
		point := nil.
		SMAPOI subclassesDo: [:each | point ifNil: [point := each fromXMLTag: p]].
		point ifNotNil: [
			point levels: (self tagValueNamed: 'level' in: p ifAbsent: [nil]).
			
			point
				id: (p attributeAt: #id) asInteger;
				lat: (p attributeAt: #lat) asNumber;
				lon: (p attributeAt: #lon) asNumber.
			points add: point]].
	
	^ points