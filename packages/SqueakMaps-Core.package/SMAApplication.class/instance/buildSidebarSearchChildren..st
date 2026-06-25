building
buildSidebarSearchChildren: aBuilder

	| children |
	
	children := OrderedCollection new.
	children add: (self buildSearchTopRow: aBuilder).
	children add: (aBuilder pluggableListSpec new
		model: self;
		list: #searchSuggestionLabels;
		getIndex: #searchSuggestionIndex;
		setIndex: #searchSuggestionIndex:;
		frame: (0 @ 0.08 corner: 1 @ 0.9);
		yourself).
	children add: (self buildCampusDetailPanel: aBuilder).
	self selectedCampusDetailTarget ifNil: [
		children add: (self buildSearchPinPanel: aBuilder)].
	^ children