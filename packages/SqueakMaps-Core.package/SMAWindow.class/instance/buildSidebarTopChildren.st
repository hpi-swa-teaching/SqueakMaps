building
buildSidebarTopChildren

	| builder isInDirectionsView children |
	builder := ToolBuilder default.
	isInDirectionsView := true.

	children := isInDirectionsView
		ifTrue: [self buildSidebarDirectionsChildren: builder]
		ifFalse: [self buildSidebarSearchChildren: builder].

	^ children collect: [:spec | builder build: spec]