building
buildSidebarSearchChildren: aBuilder

	| children |
	
	children := OrderedCollection new.
	children add: (self buildSearchTopRow: aBuilder).
	children add: (self buildCategoryLabel: aBuilder).
	children add: (self buildCategoryMultiSelectList: aBuilder).
	children add: (self buildSearchPinPanel: aBuilder).
	children add: (self buildAddCategoriesButton: aBuilder).
	children add: (self buildRemoveCategoriesButton: aBuilder).
	^ children