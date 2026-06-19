building
buildSearchPinPanelChildren

	| builder children row |

	self selectedPin ifNil: [^ {}].

	builder := ToolBuilder default.
	children := OrderedCollection new.

	children add: (self buildSearchPinPanelLabel: builder).

	row := builder pluggablePanelSpec new.
	row layout: #horizontal.
	row children: OrderedCollection new.

	self isSelectedPinSaved
		ifTrue: [
			row children add: (self buildSearchPinPanelPinOptionsButton: builder)]
		ifFalse: [
			row children add: (self buildSearchPinPanelSavePinButton: builder)].

	row children add: (self buildSearchPinPanelDirectionsButton: builder).

	children add: row.

	^ children collect: [:spec | builder build: spec]