accessing
route: aRouteLine

	| newRoute |
	self route ifNotNil: [self route levelSelectionModel: nil].
	newRoute := aRouteLine ifNil: [SMARouteLine new].
	newRoute levelSelectionModel: self levelSelectionModel.
	super route: newRoute