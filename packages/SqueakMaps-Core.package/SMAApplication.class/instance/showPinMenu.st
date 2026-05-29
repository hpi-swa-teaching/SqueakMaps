building
showPinMenu

	| menu |
	menu := MenuMorph new.
	menu
		 addTitle: 'Pin Options';
		 add: 'Remove Pin' target: self selector: #removePin;
		 add: 'Rename Pin' target: self selector: #renamePin;
		 add: 'Change Pin category' target: self selector: #changePinCategory;
		 popUpInWorld.