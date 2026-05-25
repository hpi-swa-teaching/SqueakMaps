building
buildHelpButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: '?';
		color: (Color r: 1.0 g: 0.6 b: 0.4);
		model: self;
		action: #openHelpArea;
		help: 'Click to navigate to help section.';
		frame: (0.0 @ 0.5 corner: 0.1 @ 1.0);
		yourself