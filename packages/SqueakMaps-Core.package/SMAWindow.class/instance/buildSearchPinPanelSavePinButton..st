building
buildSearchPinPanelSavePinButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Save Pin';
			model: self;
			padding: 10;
			action: #savePin;
			help: 'Save this pin to access it later.';
			frame: (0@0.2 corner: 1@0.4);
			yourself.
			