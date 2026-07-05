accessing
setName: aName
	displayName := aName.
	internalName := (aName copyReplaceAll: ' ' with: '_') asLowercase.
