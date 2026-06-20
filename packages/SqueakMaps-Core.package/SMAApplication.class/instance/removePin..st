pin management
removePin: aSMALocation

	self class savedPins removeAllSuchThat: [:p | p coordinates = aSMALocation coordinates].
	self clear.
	self changed: #buildSearchPinPanelChildren.
	self changed: #items.