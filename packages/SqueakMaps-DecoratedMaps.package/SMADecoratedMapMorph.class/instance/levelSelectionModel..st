accessing
levelSelectionModel: aLevelSelectionModel

	levelSelectionModel ifNotNil: [levelSelectionModel removeDependent: self].
	levelSelectionModel := aLevelSelectionModel.
	levelSelectionModel ifNotNil: [
		levelSelectionModel addDependent: self.
		self synchronizeAvailableLevels].
	self route ifNotNil: [self route levelSelectionModel: levelSelectionModel]