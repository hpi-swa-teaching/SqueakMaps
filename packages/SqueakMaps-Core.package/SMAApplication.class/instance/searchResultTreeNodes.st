building
searchResultTreeNodes

	^ self searchSuggestionTargets collect: [:target |
		SMAListNode new
			label: target label;
			target: target;
			yourself]
