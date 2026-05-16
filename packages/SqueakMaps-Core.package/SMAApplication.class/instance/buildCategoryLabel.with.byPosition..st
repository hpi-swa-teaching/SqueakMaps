building
buildCategoryLabel: aBuilder with: aLabel byPosition: aFrame

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: aLabel;
		frame: aFrame;
		yourself
