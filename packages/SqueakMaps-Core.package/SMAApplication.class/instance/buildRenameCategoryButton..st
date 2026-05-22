building
buildRenameCategoryButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Rename Category';
		model: self;
		action: #renameCategory;
		help: 'Lets you rename a category.';
		frame: (0.33 @ 0.87 corner: 0.66 @ 1);
		yourself