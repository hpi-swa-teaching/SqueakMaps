building search bar
buildSearchPinPanelLabel: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self model;
		children: #getPinLabel;
		frame: (0 @ 0 corner: 1 @ 0.2);
		yourself
