as yet unclassified
extractPoints: anXMLRoot

	| points |
	points := Dictionary new.
	anXMLRoot tagsNamed: #node do: [:p | | point |
		point := SMAPoint new
			id: (p attributeAt: #id) asInteger;
			lat: (p attributeAt: #lat) asNumber;
			lon: (p attributeAt: #lon) asNumber.
		points at: point id put: point].
	
	^ points