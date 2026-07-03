category management
categorizePinsFor: anOldCategory to: aNewCategory

	self savedPins do:[:pin |
		pin category = anOldCategory ifTrue:[
			pin category: aNewCategory.
		]
	]