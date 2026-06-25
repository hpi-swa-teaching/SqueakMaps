as yet unclassified
testSelectingSearchSuggestionOpensDetail

	| application target markerCount |

	application := SMAApplication new.
	application searchInput: 'Haus 6'.
	target := application searchSuggestionTargets first value.
	application selectSearchSuggestion: 1.
	markerCount := application tiledMapMorph markers size.

	self assert: target equals: application selectedCampusDetailTarget.
	self assert: 1 equals: markerCount