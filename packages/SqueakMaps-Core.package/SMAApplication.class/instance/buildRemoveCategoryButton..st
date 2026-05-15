building
buildRemoveCategoryButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Remove Category';
		model: self;
		action: #removeCategory;
		help: 'Lets you remove a category.';
		frame: (0.5 @ -0.5 corner: 1 @ 0);
		yourself