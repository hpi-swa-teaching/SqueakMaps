building
buildSearchPinPanelChildren
	
	| builder children |
	self selectedPin ifNil: [^ {}].
	
	builder := ToolBuilder default.
	children := OrderedCollection new.
	children add: (self buildPinInformationLabel: builder with: #getPinInformationLabel).
	children add: builder pluggableSpacerSpec new.
	children add: (self buildSearchGoToDirectionsButton: builder).

	^ children collect: [:spec | builder build: spec]