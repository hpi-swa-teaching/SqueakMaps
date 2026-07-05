building
buildDetailActionButton: aBuilder label: aLabel action: aSelector frame: aFrame help: aHelpText

	^ aBuilder pluggableButtonSpec new
		label: aLabel;
		model: self;
		padding: 8;
		frame: aFrame;
		action: aSelector;
		help: aHelpText;
		yourself