category management
getMenu: aMenu
	
	| index selectedName selectedItem|
	((self selectionList select:[:i | i ]) size = 1) ifTrue:[
		index := self selectionList indexOf: true.
		(self isSelectedTypePinAt: index) ifTrue:[
			selectedName := ((self items at: index) copyFrom: (self hierarchicalPinListPrefix size + 1) to:
			 ((self items at: index) size)).
			selectedItem := self class savedPins detect: [:p | p alias = selectedName].
			self buildPinMenu: aMenu for: selectedItem
			]
			ifFalse: [
				"Category selected"
				selectedItem := self class savedCategories detect: [:c | c title = (self items at: index)].
				self buildCategoryMenu: aMenu for: selectedItem
				]
		]
	ifFalse: [
		self buildPinRouteMenu: aMenu
		].	
	^ aMenu