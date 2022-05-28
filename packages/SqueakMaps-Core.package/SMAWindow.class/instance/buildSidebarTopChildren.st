building
buildSidebarTopChildren

	| builder |
	builder := ToolBuilder default.
	^ (self buildSidebarTopChildrenWith: builder)
		collect: [:spec | builder build: spec]