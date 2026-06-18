as yet unclassified
extractFirstLevelFrom: anXMLTag

	| levelString |
	levelString := self tagValueNamed: 'level' in: anXMLTag ifAbsent: ['0'].
	^ (levelString subStrings: ';') first asNumber