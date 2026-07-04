accessing
destinationSearchInput: aText
	
	destinationSearchInput := aText asString.
	self changed: #destinationSearchInput.
	self changed: #destinationRouteSuggestionLabels.
	self changed: #destinationRouteSuggestionIndex