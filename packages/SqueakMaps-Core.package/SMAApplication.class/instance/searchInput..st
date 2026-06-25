accessing
searchInput: aText

	searchInput := aText asString.
	self changed: #searchInput.
	self changed: #searchSuggestionLabels