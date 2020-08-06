build buttons and input fields
buildApiKeyManagementButton

	self apiKeyManagementButton: (PluggableButtonMorph new
							label: 'manage api keys';
							target: [self apiKeyManagement];
							actionSelector: #value) 