accessing
startSearchInput: aText

	startSearchInput := aText asString.
	self changed: #startSearchInput.
	self changed: #startRouteSuggestionLabels.
	self changed: #startRouteSuggestionIndex