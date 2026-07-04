private
isRoutingWay: anXMLElement

	^ (SMAOSMTagReader valueNamed: 'highway' in: anXMLElement ifAbsent: ['no']) ~= 'no'
