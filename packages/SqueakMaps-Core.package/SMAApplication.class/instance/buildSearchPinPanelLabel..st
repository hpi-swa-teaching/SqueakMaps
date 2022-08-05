building
buildSearchPinPanelLabel: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
       children: #getPinLabel;
   		frame: (0@0 corner: 1@0.2);
		yourself
