building
poiGroupName: aPOI

	(aPOI isKindOf: SMAPOICanteen) ifTrue: [^ 'Speisen'].
	^ aPOI typeName