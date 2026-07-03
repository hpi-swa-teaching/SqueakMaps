as yet unclassified
extractPOIs: anXMLRoot

	| extractedPoints |
	extractedPoints := OrderedCollection new.
	anXMLRoot tagsNamed: #node do: [:element |
		| point |
		point := nil.
		SMAPOI subclassesDo: [:each | point ifNil: [point := each fromXMLTag: element]].
		point ifNotNil: [
			point levels: (self tagValueNamed: 'level' in: element ifAbsent: [nil]).
			self addTimeInfosFrom: element to: point.
			point
				id: (element attributeAt: #id) asInteger;
				lat: (element attributeAt: #lat) asNumber;
				lon: (element attributeAt: #lon) asNumber.
			extractedPoints add: point]].
	^ extractedPoints