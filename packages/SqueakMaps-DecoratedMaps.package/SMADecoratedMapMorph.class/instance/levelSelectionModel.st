accessing
levelSelectionModel

	^ levelSelectionModel ifNil: [
		self levelSelectionModel: SMALevelSelectionModel new.
		levelSelectionModel]