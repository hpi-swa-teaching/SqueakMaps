building
campusDetailPrefixForMensaMeal: aMensaMeal

	aMensaMeal category ifNil: [^ 'Gericht'].
	aMensaMeal category isEmpty ifTrue: [^ 'Gericht'].
	aMensaMeal category size > 18 ifTrue: [^ 'Gericht'].
	^ aMensaMeal category