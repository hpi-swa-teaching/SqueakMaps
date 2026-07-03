building
buildCategoryMultiSelectLabel: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self model;
		children: #getCategoryMultiSelectLabel;
		frame: (0 @ 0.3 corner: 1 @ 0.36);
		yourself
