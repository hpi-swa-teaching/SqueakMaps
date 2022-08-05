building
buildSidebarSearchChildren: aBuilder

	| children |
	
	children := OrderedCollection new.
	children add: (self buildSearchTopRow: aBuilder).
	children add: (self buildSearchPinPanel: aBuilder).
	^ children