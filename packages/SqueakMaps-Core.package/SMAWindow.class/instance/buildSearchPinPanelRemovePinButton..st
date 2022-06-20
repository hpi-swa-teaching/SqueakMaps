building
buildSearchPinPanelRemovePinButton: aBuilder

	^ aBuilder pluggableButtonSpec new
			label: 'Remove Pin';
			model: self;
			padding: 10;
			action: #removePin;
			help: 'Remove this pin from the list of saved pins.';
			frame: (0@0.2 corner: 1@0.4);
			yourself.
			