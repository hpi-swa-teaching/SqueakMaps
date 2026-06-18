building
routeLabelForPOI: aPOI

	| location type suffix |
	location := self locationTextForPOI: aPOI.
	type := aPOI typeName.
	suffix := aPOI displayName = type
		ifTrue: ['']
		ifFalse: [' – ', aPOI displayName].
	^ 'POI: ', type, suffix, ' – ', location