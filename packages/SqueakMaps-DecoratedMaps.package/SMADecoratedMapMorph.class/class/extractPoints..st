as yet unclassified
extractPoints: anXMLRoot

	| points |
	points := Dictionary new.
	anXMLRoot tagsNamed: #node do: [:p | | point |
		point := SMAPoint new
			id: (p attributeAt: #id) asInteger;
			lat: (p attributeAt: #lat) asNumber;
			lon: (p attributeAt: #lon) asNumber;
			entrance: (self tagValueNamed: 'entrance' in: p ifAbsent: [nil]);
			door: (self tagValueNamed: 'door' in: p ifAbsent: [nil]).
		points at: point id put: point].

	^ points