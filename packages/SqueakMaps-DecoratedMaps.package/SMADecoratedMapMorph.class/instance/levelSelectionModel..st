accessing
levelSelectionModel: aLevelSelectionModel

	levelSelectionModel ifNotNil: [levelSelectionModel removeDependent: self].
	levelSelectionModel := aLevelSelectionModel.
	levelSelectionModel ifNotNil: [
		levelSelectionModel addDependent: self.
		self synchronizeAvailableLevels]