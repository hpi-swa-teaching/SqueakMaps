building
buildAddCategoriesButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Add Categories';
		model: self;
		action: #addCategory;
		help: 'Click to create a new category.';
		frame: (0 @ 0.87 corner: 0.5 @ 1);
		yourself