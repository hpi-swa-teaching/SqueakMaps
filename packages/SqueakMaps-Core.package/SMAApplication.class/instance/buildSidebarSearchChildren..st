building
buildSidebarSearchChildren: aBuilder

	| children |
	
	children := OrderedCollection new.
	children add: (self buildSearchTopRow: aBuilder).
	children add: (self buildRouteLabel: aBuilder).
	children add: (self buildSavedRoutesList: aBuilder).
	children add: (self buildSearchPinPanel: aBuilder).
	children add: (self buildSidebarSearchChildrenCategoryOptionsButton: aBuilder).
	^ children