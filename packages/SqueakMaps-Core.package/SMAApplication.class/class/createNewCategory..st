category management
createNewCategory: aCategoryTitle

	^ SMAPinCategory new
		title: aCategoryTitle;
		isDefault: false;
		yourself
