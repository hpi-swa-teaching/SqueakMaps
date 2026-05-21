building
buildSearchPinPanelRenamePinButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Rename Pin';
		model: self;
		padding: 10;
		action: #renamePin;
		help: 'Change the display name of this saved pin.';
		yourself
