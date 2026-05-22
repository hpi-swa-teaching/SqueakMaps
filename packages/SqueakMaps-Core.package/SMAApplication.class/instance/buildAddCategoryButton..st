building
buildAddCategoryButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Add Category';
		model: self;
		action: #addCategory;
		help: 'Click to create a new category.';
		frame: (0 @ 0.87 corner: 0.33 @ 1.0);
		yourself