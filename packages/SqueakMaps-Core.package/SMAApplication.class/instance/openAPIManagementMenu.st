select api
openAPIManagementMenu

	| menu |
	menu := MenuMorph new.
	menu
		 addTitle: 'API management';
		 add: 'Select API' target: self selector: #requestApiSelection;
		 add: 'API Keys' target: self selector: #apiKeyManagement;
		 popUpInWorld.