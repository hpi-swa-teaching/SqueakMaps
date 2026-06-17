building
campusDetailLinesFor: aCampusDetailTarget

	| lines poiLine |

	lines := OrderedCollection new.
	(aCampusDetailTarget respondsTo: #buildingType)
		ifTrue: [lines add: 'Gebäudetyp' -> aCampusDetailTarget buildingType].
	(aCampusDetailTarget respondsTo: #level)
		ifTrue: [lines add: 'Etage' -> aCampusDetailTarget level].

	poiLine := self campusDetailPOILineFor: aCampusDetailTarget.
	poiLine ifNotNil: [lines add: poiLine].

	^ lines reject: [:line |
		line value isNil or: [line value asString isEmpty]]