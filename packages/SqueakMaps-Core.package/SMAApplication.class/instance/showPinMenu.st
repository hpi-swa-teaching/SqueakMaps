building
showPinMenu

	| menu |
	menu := MenuMorph new.
	menu
		 addTitle: 'Pin Options';
		 add: 'Change Pin category' target: self selector: #changePinCategory;
		 add: 'Rename Pin' target: self selector: #renamePin;
		 add: 'Remove Pin' target: self selector: #removePin;
		 popUpInWorld.