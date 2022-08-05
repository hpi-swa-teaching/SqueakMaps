building
buildMap: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #getMapMorph;
		frame: (0.25 @ 0 corner: 1 @ 1);
		yourself