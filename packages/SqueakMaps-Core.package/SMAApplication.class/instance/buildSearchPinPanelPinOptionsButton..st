building
buildSearchPinPanelPinOptionsButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Pin Options';
		model: self;
		padding: 10;
		action: #showPinMenu;
		help: 'Remove this pin from the list of saved pins.';
		yourself
