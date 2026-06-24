pin management
renamePin: aPin

	| answer |
	answer := UIManager default request: 'New Name'.
	(answer = '') ifTrue: [ 
		^ self inform: 'Please provide a valid name.'
		].
	(self class savedPins anySatisfy: [:p | p alias = answer]) ifTrue: [
		^ self inform: 'Can not rename to an existing alias.'
		].
	
	aPin alias: answer.
	self clear.
	self mapConfigurator
	displayLocation: aPin;
	focusLocation: aPin.
	self changed: #items.
