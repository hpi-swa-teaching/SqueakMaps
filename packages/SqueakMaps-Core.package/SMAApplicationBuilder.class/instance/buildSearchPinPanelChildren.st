building search bar
buildSearchPinPanelChildren

	| children row |

	self model selectedPin ifNil: [^ {}].

	children := OrderedCollection new.

	children add: (self buildSearchPinPanelLabel: self builder).

	row := self builder pluggablePanelSpec new.
	row layout: #horizontal.
	row children: OrderedCollection new.

	self model isSelectedPinSaved
		ifTrue: [
			row children add: (self buildSearchPinPanelPinOptionsButton: self builder)]
		ifFalse: [
			row children add: (self buildSearchPinPanelSavePinButton: self builder)].

	row children add: (self buildSearchPinPanelDirectionsButton: self builder).

	children add: row.

	^ children collect: [:spec | self builder build: spec]