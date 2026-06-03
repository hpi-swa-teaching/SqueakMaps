building
buildStartTitle: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #getStartLabel;
		frame: (0 @ 0 corner: 1 @ 0.25);
		yourself
