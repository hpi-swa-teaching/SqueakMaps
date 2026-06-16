as yet unclassified
isHighway: anXMLElement

	^ (self tagValueNamed: 'highway' in: anXMLElement ifAbsent: ['no']) ~= 'no'