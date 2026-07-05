accessing
route: aRouteLine

	| newRoute |
	newRoute := aRouteLine ifNil: [SMARouteLine new].
	super route: newRoute