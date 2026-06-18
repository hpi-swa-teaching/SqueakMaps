building
buildSidebarTopChildren

	| builder children |
	builder := ToolBuilder default.
	children := OrderedCollection new.
	children addAll: (self buildSidebarRoutingChildren: builder).
	children add: (self buildCampusDetailPanel: builder).
	^ children collect: [:spec | builder build: spec]