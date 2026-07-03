building
buildSearchGoButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Search';
		model: self model;
		action: #searchLocation;
		padding: 10;
		horizontalResizing: #shrinkWrap;
		help: 'Click to start a search.';
		yourself