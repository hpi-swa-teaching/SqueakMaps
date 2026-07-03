building
buildSidebarBottomChildren

	| children |
	
	children := {
		self buildAPIManagementButton: self builder.
		self buildHelpButton: self builder}.
	
	^ children collect: [:spec | self builder build: spec]