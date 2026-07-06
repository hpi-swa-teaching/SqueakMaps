building
labelFor: aSymbol

	aSymbol = #buildingType ifTrue: [^ 'Gebäudetyp'].
	aSymbol = #level ifTrue: [^ 'Etage'].
	^ aSymbol asString
