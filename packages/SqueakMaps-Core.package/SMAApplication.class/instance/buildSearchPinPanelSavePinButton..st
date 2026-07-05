building
buildSearchPinPanelSavePinButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Save Pin';
		model: self;
		padding: 10;
		frame: (LayoutFrame fractions: (0 @ 1 corner: 1 @ 1)
			offsets: (0 @ -48 corner: 0 @ 0));
		action: #savePin;
		help: 'Save this pin to access it later.';
		yourself
			