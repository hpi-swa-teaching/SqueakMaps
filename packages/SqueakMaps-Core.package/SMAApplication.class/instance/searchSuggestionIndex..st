accessing
searchSuggestionIndex: anInteger

	searchSuggestionIndex := anInteger.
	self changed: #searchSuggestionIndex.
	self selectSearchSuggestion: anInteger