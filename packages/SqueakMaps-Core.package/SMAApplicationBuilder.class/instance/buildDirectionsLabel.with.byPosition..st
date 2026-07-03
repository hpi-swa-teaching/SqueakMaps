building
buildDirectionsLabel: aBuilder with: aLabel byPosition: aFrame

	^ aBuilder pluggablePanelSpec new
		model: self model;
		children: aLabel;
		frame: aFrame;
		yourself