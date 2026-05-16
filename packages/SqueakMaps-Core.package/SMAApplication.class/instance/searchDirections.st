search
searchDirections

	| lastQuery |
	
	lastQuery := self startSearchInput.
	self hopSearchInputs do: [:i| 
		self searchDirectionsFrom: lastQuery to: i.
		lastQuery := i.
	].
	self searchDirectionsFrom: lastQuery to: self destinationSearchInput.
