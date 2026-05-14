building
buildRemoveCategoriesButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Remove Categories';
		model: self;
		action: #removeCategory;
		help: 'Lets you remove a category.';
		frame: (0.5 @ 0.87 corner: 1 @ 1);
		yourself