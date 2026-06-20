building
buildSidebarBottomChildren

	| builder children |
	builder := ToolBuilder default.
	
	children := {
		self buildSelectAPIButton: builder.
		self buildManageAPIKeysButton: builder.
		self buildHelpButton: builder}.
	
	^ children collect: [:spec | builder build: spec]