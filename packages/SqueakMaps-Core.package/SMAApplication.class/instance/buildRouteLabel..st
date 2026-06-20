building
buildRouteLabel: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #getRouteLabel;
		frame: (0 @ 0.70 corner: 1 @ 0.76);
		yourself
