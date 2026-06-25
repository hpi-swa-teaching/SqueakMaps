building
buildCampusDirectionsTopRow: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'X';
		model: self;
		padding: 8;
		frame: (LayoutFrame fractions: (1 @ 0 corner: 1 @ 0)
			offsets: (-44 @ 0 corner: 0 @ 36));
		action: #switchToEmptySearchView;
		help: 'Routenansicht schließen.';
		yourself
