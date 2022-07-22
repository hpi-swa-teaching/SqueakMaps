building
buildSidebarSearchChildren: aBuilder

	| children |
	
	children := OrderedCollection new.
	children add: (self buildSearchInputField: aBuilder).
	children add: (self buildSearchPinPanel: aBuilder).
	^ children