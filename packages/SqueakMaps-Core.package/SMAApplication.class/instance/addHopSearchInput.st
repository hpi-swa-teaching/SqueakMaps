building
addHopSearchInput

	(self hopSearchInput isEmpty) ifTrue: [
		^ self inform: 'Please enter a hop.'].
	
	self hopSearchInputs add: self hopSearchInput.
	self hopSearchInput: ''.
	self changed: #hopSearchInput.
	self changed: #hopSearchInputs.
	self searchDirections.
	Transcript show: self hopSearchInputs; cr.