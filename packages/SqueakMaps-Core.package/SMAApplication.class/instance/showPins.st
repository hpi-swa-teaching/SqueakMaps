pin management
showPins

	| locations |
	locations := self class savedPins.
	locations isEmpty ifTrue: [ ^ self.].

	locations do: [ :location |
		(self visiblePinCategories includes: location category)
			ifTrue: [ self mapConfigurator displayLocation: location ]
	].
	
	self changed: #buildSearchPinPanelChildren