as yet unclassified
isRoutingWay: anXMLElement

	| indoor highway area |
	area := SMAOSMTagReader valueNamed: 'area' in: anXMLElement ifAbsent: [nil].
	area = 'yes' ifTrue: [^ false].
	highway := SMAOSMTagReader valueNamed: 'highway' in: anXMLElement ifAbsent: [nil].
	highway ifNotNil: [^ true].
	indoor := SMAOSMTagReader valueNamed: 'indoor' in: anXMLElement ifAbsent: [nil].
	^ #('corridor' 'hallway' 'path' 'footway') includes: indoor