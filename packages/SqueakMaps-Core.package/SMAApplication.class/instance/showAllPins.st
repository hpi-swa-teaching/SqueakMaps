pin management
showAllPins

	| locations |
	
	locations := self class savedPins.
	locations isEmpty ifTrue: [ ^ self.].

	locations do: [ :location |
		 self mapConfigurator displayLocation: location.
	].

	self changed: #buildSearchPinPanelChildren