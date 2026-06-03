building
buildOverlay: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #buildOverlayChildren;
		frame: (0.2 @ 0.2 corner: 0.8 @ 0.8);
		yourself
