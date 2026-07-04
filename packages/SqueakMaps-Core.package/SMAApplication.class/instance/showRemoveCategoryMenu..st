building
showRemoveCategoryMenu: aRemovedCategory

	| menu |
	menu := MenuMorph new.
	menu
		 addTitle: 'Remove Category';
		 add: self uncategorizeAllPinsMenuLabel target: self selector: #uncategorizePins: argument: aRemovedCategory;
		 add: self deleteAllPinsMenuLabel target: self selector: #removeAllPins: argument: aRemovedCategory;
		 popUpInWorld.