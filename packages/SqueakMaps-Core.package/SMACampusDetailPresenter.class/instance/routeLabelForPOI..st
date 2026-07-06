building
routeLabelForPOI: aPOI

	| location suffix |

	location := self locationTextForPOI: aPOI.
	suffix := aPOI displayName = aPOI typeName
		ifTrue: ['']
		ifFalse: [' - ', aPOI displayName].
	location ifNotNil: [suffix := suffix, ' - ', location].
	^ 'POI: ', aPOI typeName, suffix
