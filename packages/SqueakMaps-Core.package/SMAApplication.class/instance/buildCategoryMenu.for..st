category management
buildCategoryMenu: aMenu for: aCategory
	
	aMenu
		addTitle: 'Category Options'.
	aMenu
		add: 'Add new category'
		target: self
		selector: #addCategory.
	aMenu 
		add: 'Rename Category'
		target: self
		selector: #renameCategory:
		argumentList: (Array with: aCategory).
	aMenu 
		add: 'Remove Category'
		target: self
		selector: #removeCategory:
		argumentList: (Array with: aCategory).
		
	^ aMenu