building
buildSidebarTopChildren

	| builder children |
	builder := ToolBuilder default.
	children := OrderedCollection new.

	self selectedCampusDetailTarget ifNotNil: [
		children add: (self buildCampusDetailPanel: builder).
		^ children collect: [:spec | builder build: spec]].

	self currentView = #directions
		ifTrue: [children addAll: (self buildSidebarCampusDirectionsChildren: builder)]
		ifFalse: [children addAll: (self buildSidebarSearchChildren: builder)].
	^ children collect: [:spec | builder build: spec]