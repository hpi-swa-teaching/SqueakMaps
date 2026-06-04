building
buildPinsButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Pins';
		model: self;
		action: #showPin;
		help: 'Select a previously saved pin.';
		frame: (0 @ 0.35 corner: 1 @ 0.7);
		yourself