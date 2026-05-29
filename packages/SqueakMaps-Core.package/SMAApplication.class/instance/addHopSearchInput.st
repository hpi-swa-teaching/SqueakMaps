hop management
addHopSearchInput

	| location |
	
	(self hopSearchInput isNil or: self hopSearchInput isEmpty) ifTrue: [
		^ self inform: 'Please enter a hop.'].
	
	[location := self navigator locate: self hopSearchInput.]
		on: SMALocationNameNotFoundError
		do: [:error | ^ self inform: error userMessage].
	
	self hopLocations add: location.
	self hopSearchInput: ''.
	self changed: #hopSearchInput.
	self changed: #hopLocationLabels.