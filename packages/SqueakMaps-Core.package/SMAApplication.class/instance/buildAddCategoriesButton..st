building
buildAddCategoriesButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Add Categories';
		model: self;
		action: #addCategory;
		help: 'Filter displayed pins by category.';
		frame: (0 @ -0.5 corner: 0.5 @ 0);
		yourself