building
buildPlayingTitle: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #getPlayingLabel;
		frame: (0 @ 0 corner: 1 @ 0.35);
		yourself
