category management
buildCategoryMenu: aMenu for: aCategory

	aMenu 
		add: 'Rename'
		target: self
		selector: #renameCategory:
		argumentList: (Array with: aCategory).
	aMenu 
		add: 'Remove'
		target: self
		selector: #removeCategory:
		argumentList: (Array with: aCategory).
		
	^ aMenu