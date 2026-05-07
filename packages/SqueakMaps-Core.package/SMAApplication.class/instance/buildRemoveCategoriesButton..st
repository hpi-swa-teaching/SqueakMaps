building
buildRemoveCategoriesButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Remove Categories';
		model: self;
		action: #removeCategory;
		help: 'Remove category.';
		frame: (0.5 @ -0.5 corner: 1 @ 0);
		yourself