building
campusDetailLinesFor: aCampusDetailTarget

	| lines |

	lines := OrderedCollection new.
	(aCampusDetailTarget respondsTo: #buildingType)
		ifTrue: [lines add: 'Gebäudetyp' -> aCampusDetailTarget buildingType].
	(aCampusDetailTarget respondsTo: #level)
		ifTrue: [lines add: 'Etage' -> aCampusDetailTarget level].
	lines addAll: (self campusDetailMensaLinesFor: aCampusDetailTarget).

	^ lines reject: [:line |
		line value isNil or: [line value asString isEmpty]]