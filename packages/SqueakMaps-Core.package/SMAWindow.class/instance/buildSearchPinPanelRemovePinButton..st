building
buildSearchPinPanelRemovePinButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Remove Pin';
			model: self;
			padding: 10;
			action: #removePin;
			help: 'Remove this pin from the list of saved pins.';
			yourself.
			