as yet unclassified
testSearchSuggestionFiltering

	| application allLabels filteredLabels emptyLabels hasMatchingLabel hasNonMatchingLabel |

	application := SMAApplication new.
	allLabels := application destinationRouteSelectionLabels.
	application searchInput: 'haus'.
	filteredLabels := application searchSuggestionLabels.
	hasMatchingLabel := filteredLabels anySatisfy: [:label |
		(label asLowercase findString: 'haus' startingAt: 1) > 0].
	hasNonMatchingLabel := filteredLabels anySatisfy: [:label |
		((label asLowercase findString: 'haus' startingAt: 1) > 0) not].
	application searchInput: ''.
	emptyLabels := application searchSuggestionLabels.

	self assert: true equals: hasMatchingLabel.
	self assert: false equals: hasNonMatchingLabel.
	self assert: allLabels size equals: emptyLabels size