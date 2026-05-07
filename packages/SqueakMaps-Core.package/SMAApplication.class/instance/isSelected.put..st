building
isSelected: index put: aBoolean
	
	selectionList at: index put: aBoolean.
	"Show pins"
	self visiblePinCategories: self collectSelectedCategories.
	self clear.