building
buildMenuCategoryButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Category Options';
		model: self;
		action: #showCategoryMenu;
		help: 'Click to show category options.';
		frame: (0 @ 0.87 corner: 1.0 @ 1.0);
		yourself