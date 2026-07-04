instance creation
fromXMLTag: anXMLTag

	| definition name |

	name := SMAOSMTagReader
		valueNamed: 'name'
		in: anXMLTag
		ifAbsent: [nil].
	name ifNil: [^ nil].
	definition := self canteenDefinitions
		detect: [:each |
			(name asLowercase findString: each first asLowercase startingAt: 1) > 0]
		ifNone: [nil].
	definition ifNil: [^ nil].
	^ self new
		openMensaCanteenId: definition second;
		detailTitle: definition third;
		detailType: definition fourth;
		yourself