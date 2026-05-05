pin management
showPins

	| locations |
	
	locations := self class savedPins.
	locations isEmpty ifTrue: [ ^ self inform: 'No pins saved.' ].

	locations do: [ :location |
		self mapConfigurator displayLocation: location
	].

	self changed: #buildSearchPinPanelChildren