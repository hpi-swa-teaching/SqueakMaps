building
buildSidebarBottomChildren

	| builder children |
	builder := ToolBuilder default.
	
	children := {
		self buildAPIManagementButton: builder.
		self buildHelpButton: builder}.
	
	^ children collect: [:spec | builder build: spec]