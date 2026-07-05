category management
buildCategoryMenu: aMenu for: aCategory
	
	aMenu
		addTitle: self categoryOptionsMenuTitle.
	aMenu
		add: self addCategoryMenuLabel target: self selector: #addCategory.
	aMenu 
		add: self renameCategoryMenuLabel target: self selector: #renameCategory: 
		argumentList: (Array with: aCategory).
	aMenu 
		add: self removeCategoryMenuLabel target: self selector: #removeCategory:
		argumentList: (Array with: aCategory).
	^ aMenu