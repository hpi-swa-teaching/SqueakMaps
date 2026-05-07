accessing
savedCategories

	^ SavedCategories ifNil: [SavedCategories := OrderedCollection new]