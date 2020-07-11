as yet unclassified
setUp
	self wantsToTest: (SMAWindow new extent: 200@200; fullBounds; yourself).
	pinManagementButton := self subject findByLabel: 'manage pins and saved pins'.