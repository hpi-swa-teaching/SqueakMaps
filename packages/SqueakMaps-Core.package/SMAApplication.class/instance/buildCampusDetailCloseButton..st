building
buildCampusDetailCloseButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Schließen';
		model: self;
		padding: 10;
		action: #closeCampusDetailPanel;
		help: 'Detailansicht schließen.';
		yourself