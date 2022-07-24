building
buildSearchPinPanelChildren
	
	| builder children |
	
	self selectedPin ifNil: [^ {}].
	
	builder := ToolBuilder default.
	children := OrderedCollection new.
	
	children add: (self buildSearchPinPanelLabel: builder).
	self isSelectedPinSaved
		ifTrue: [children add: (self buildSearchPinPanelRemovePinButton: builder)]
		ifFalse: [children add: (self buildSearchPinPanelSavePinButton: builder)].
	children add: (self buildSearchPinPanelDirectionsButton: builder).

	^ children collect: [:spec | builder build: spec]