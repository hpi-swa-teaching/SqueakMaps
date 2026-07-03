category management
savedCategories

	SavedCategories ifNil: [SavedCategories := OrderedCollection new].
	(SavedCategories anySatisfy: [:each | each isDefault]) ifFalse: [
		SavedCategories add: SMAPinCategory defaultCategory
		].
	^ SavedCategories
	