building
buildPinsButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Pins';
			model: self;
			action: #showPin;
			help: 'Select a previously saved pin.';
			frame: (0 @ 0 corner: 1 @ 0.5)
			yourself