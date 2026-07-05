as yet unclassified
testSearchSuggestionFiltering

	| application allLabels filteredLabels emptyLabels
	  hasMatchingLabel hasNonMatchingLabel |

	application := SMAApplication new.
	application initializeMap.

	allLabels := application destinationRouteSelectionLabels.

	application searchInput: 'haus'.
	filteredLabels := application searchSuggestionLabels.

	hasMatchingLabel := filteredLabels anySatisfy: [:each |
		(each asLowercase findString: 'haus' startingAt: 1) > 0].

	hasNonMatchingLabel := filteredLabels anySatisfy: [:each |
		(each asLowercase findString: 'haus' startingAt: 1) = 0].

	application searchInput: ''.
	emptyLabels := application searchSuggestionLabels.

	self assert: hasMatchingLabel.
	self deny: hasNonMatchingLabel.
	self assert: allLabels size equals: emptyLabels size