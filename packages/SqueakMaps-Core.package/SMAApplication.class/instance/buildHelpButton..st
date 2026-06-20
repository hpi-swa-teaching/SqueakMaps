building
buildHelpButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: '?';
		color: Color orange;
		model: self;
		action: #openHelpArea;
		help: 'Click to navigate to help section.';
		frame: (0.0 @ 0 corner: 0.1 @ 1);
		yourself