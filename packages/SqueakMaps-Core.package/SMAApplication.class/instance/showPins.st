pin management
showPins

	| locations |
	locations := self class savedPins.
	locations isEmpty ifTrue: [ ^ self].

	self visiblePins do: [:pin |
		self mapConfigurator displayLocation: pin.].
	self changed: #buildSearchPinPanelChildren