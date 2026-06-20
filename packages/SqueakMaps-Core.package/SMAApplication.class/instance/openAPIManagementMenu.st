select api
openAPIManagementMenu

	| menu |
	menu := MenuMorph new.
	menu
		 addTitle: 'API management';
		 add: 'API Keys' target: self selector: #apiKeyManagement;
		 add: 'Select API' target: self selector: #requestApiSelection;
		 popUpInWorld.