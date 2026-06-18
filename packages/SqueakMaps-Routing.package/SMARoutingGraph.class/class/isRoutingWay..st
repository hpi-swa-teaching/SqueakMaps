as yet unclassified
isRoutingWay: anXMLElement

	^ (self tagValueNamed: 'highway' in: anXMLElement ifAbsent: ['no']) ~= 'no'