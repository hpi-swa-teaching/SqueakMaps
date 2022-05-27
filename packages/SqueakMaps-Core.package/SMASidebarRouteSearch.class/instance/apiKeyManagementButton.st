submorphs - buttons
apiKeyManagementButton
	^ apiKeyManagementButton ifNil: 
		[apiKeyManagementButton := self basicButton 
						label: 'manage API keys'; 
						setBalloonText: 
							'Click manage your API keys.';
						target: [self owner apiKeyManagement];
						actionSelector: #value;
						yourself.]