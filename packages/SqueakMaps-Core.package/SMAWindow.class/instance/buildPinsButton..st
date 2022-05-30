building
buildPinsButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Pins';
			model: self;
			action: #managePins;
			help: 'This button will bring up a list of your pins in the future.';
			frame: (0@0 corner: 1@0.5)
			yourself.