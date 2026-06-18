building
buildSidebarTopChildren

	| builder children |
	builder := ToolBuilder default.
	children := OrderedCollection new.

	self selectedCampusDetailTarget ifNotNil: [
		children add: (self buildCampusDetailPanel: builder).
		^ children collect: [:spec | builder build: spec]].

	children addAll: (self buildSidebarRoutingChildren: builder).
	^ children collect: [:spec | builder build: spec]