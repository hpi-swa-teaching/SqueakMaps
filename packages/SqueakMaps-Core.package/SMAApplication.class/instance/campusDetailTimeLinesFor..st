building
campusDetailTimeLinesFor: aCampusDetailTarget

	| lines |
	lines := OrderedCollection new.
	(aCampusDetailTarget respondsTo: #timeInfos) ifFalse: [^ lines].
	aCampusDetailTarget timeInfos do: [:info |
		lines add: info label -> info value].
	^ lines