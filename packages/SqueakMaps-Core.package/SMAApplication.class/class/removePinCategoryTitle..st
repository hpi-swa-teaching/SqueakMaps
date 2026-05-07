accessing
removePinCategoryTitle: aCategoryTitle
	
	SavedCategories := SavedCategories reject: [:each | each title = aCategoryTitle].