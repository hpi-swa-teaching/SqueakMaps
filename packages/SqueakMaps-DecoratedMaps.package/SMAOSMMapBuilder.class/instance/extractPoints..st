as yet unclassified
extractPoints: anXMLRoot

	| extractedPoints |
	extractedPoints := Dictionary new.
	anXMLRoot tagsNamed: #node do: [:element |
		| point |
		point := SMAPoint new
			id: (element attributeAt: #id) asInteger;
			lat: (element attributeAt: #lat) asNumber;
			lon: (element attributeAt: #lon) asNumber;
			entrance: (self tagValueNamed: 'entrance' in: element ifAbsent: [nil]);
			door: (self tagValueNamed: 'door' in: element ifAbsent: [nil]).
		extractedPoints at: point id put: point].
	^ extractedPoints