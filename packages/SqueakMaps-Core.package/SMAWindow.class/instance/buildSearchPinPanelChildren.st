building
buildSearchPinPanelChildren
	
	| builder children |
	self selectedPin ifNil: [^ {}].
	
	builder := ToolBuilder default.
	children := OrderedCollection new.
	children add: (self buildSearchPinPanelLabel: builder).
	children add: builder pluggableSpacerSpec new.
	children add: (self buildSearchPinPanelDirectionsButton: builder).

	^ children collect: [:spec | builder build: spec]