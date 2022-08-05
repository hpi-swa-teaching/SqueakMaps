building
buildSidebarTopChildren

	| builder children |
	
	builder := ToolBuilder default.

	children := self currentView = #directions
		ifTrue: [self buildSidebarDirectionsChildren: builder]
		ifFalse: [self buildSidebarSearchChildren: builder].

	^ children collect: [:spec | builder build: spec]