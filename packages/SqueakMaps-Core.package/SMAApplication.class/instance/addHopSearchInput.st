building
addHopSearchInput

	self hopSearchInput ifNil: [
		^ self inform: 'Please enter a hop.'].
	
	self hopSearchInputs add: self hopSearchInput.
	self hopSearchInput: ''.
	self changed: #hopSearchInput.
	self changed: #hopSearchInputs.