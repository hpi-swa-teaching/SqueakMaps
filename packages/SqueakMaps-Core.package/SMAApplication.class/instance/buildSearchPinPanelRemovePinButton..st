building
buildSearchPinPanelRemovePinButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Remove Pin';
		model: self;
		padding: 10;
		frame: (LayoutFrame fractions: (0 @ 1 corner: 1 @ 1)
			offsets: (0 @ -48 corner: 0 @ 0));
		action: #removePin;
		help: 'Remove this pin from the list of saved pins.';
		yourself