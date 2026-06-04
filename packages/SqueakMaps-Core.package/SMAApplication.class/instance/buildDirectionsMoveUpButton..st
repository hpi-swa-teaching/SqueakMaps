building
buildDirectionsMoveUpButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'U';
		model: self;
		action: #moveHopUp;
		help: 'Move the selected hop up.';
		frame: (0.9 @ 0.36 corner: 1 @ 0.46);
		yourself