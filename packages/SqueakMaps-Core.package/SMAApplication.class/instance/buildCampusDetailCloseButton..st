building
buildCampusDetailCloseButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Schließen';
		model: self;
		padding: 8;
		frame: (LayoutFrame fractions: (0 @ 1 corner: 1 @ 1)
			offsets: (0 @ -60 corner: 0 @ 0));
		action: #closeCampusDetailPanel;
		help: 'Detailansicht schließen.';
		yourself