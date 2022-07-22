building
buildSearchPinPanelSavePinButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Save Pin';
			model: self;
			padding: 10;
			action: #savePin;
			help: 'Save this pin to access it later.';
			yourself
			