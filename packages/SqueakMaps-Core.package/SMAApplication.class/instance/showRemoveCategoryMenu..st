building
showRemoveCategoryMenu: aRemovedCategory

	| menu |
	menu := MenuMorph new.
	menu
		 addTitle: 'Remove Category';
		 add: 'Uncategorize all pins' target: self selector: #uncategorizePins: argument: aRemovedCategory;
		 add: 'Delete all pins' target: self selector: #removeAllPins: argument: aRemovedCategory;
		 popUpInWorld.