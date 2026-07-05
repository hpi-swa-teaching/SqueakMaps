building
searchResultTreeNodes

	^ self searchSuggestionTargets collect: [:association |
		SMAListNode new
			label: association key;
			target: association value;
			yourself]