building
showCategoryMenu

	| menu |
	menu := MenuMorph new.
	menu
		 addTitle: 'Category Options';
		 add: 'Add Category' target: self selector: #addCategory;
		 add: 'Rename Category' target: self selector: #renameCategory;
		 add: 'Remove Category' target: self selector: #removeCategory;
		 popUpInWorld.