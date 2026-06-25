as yet unclassified
isRoutingWay: anXMLElement

	| indoor highway area |
	area := self tagValueNamed: 'area' in: anXMLElement ifAbsent: [nil].
	area = 'yes' ifTrue: [^ false].
	highway := self tagValueNamed: 'highway' in: anXMLElement ifAbsent: [nil].
	highway ifNotNil: [^ true].
	indoor := self tagValueNamed: 'indoor' in: anXMLElement ifAbsent: [nil].
	^ #('corridor' 'hallway' 'path' 'footway') includes: indoor