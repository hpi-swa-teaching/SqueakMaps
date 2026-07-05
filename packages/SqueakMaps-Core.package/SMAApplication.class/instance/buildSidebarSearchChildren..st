building
buildSidebarSearchChildren: aBuilder

	| children |
	
	children := OrderedCollection new.
	children add: (self buildSearchTopRow: aBuilder).
	self selectedPin
		ifNil: [children add: (self buildSearchResultTree: aBuilder)]
		ifNotNil: [children add: (self buildCampusDetailPanel: aBuilder)].
	^ children