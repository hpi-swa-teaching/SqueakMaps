building
buildDirectionsMoveDownButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'D';
		model: self;
		action: #moveHopDown;
		help: 'Move the selected hop down.';
		frame: (0.9 @ 0.76 corner: 1 @ 0.86);
		yourself