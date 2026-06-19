building
buildRouteLabel: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #getRouteLabel;
		frame: (0 @ 0.52 corner: 1 @ 0.58);
		yourself
