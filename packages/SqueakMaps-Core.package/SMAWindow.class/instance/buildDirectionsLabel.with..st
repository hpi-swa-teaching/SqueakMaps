building
buildDirectionsLabel: aBuilder with: aLabel

	^ aBuilder pluggablePanelSpec new
		model: self;
       children: aLabel;
       frame: (0@0 corner: 1@0.5);
       yourself.
