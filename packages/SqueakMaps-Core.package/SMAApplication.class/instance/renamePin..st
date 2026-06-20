pin management
renamePin: aPin

	| answer |
	answer := UIManager default request: 'New Name'.
	(answer = '') ifFalse: [ 
			aPin alias: answer.
			self clear.
			self mapConfigurator
				displayLocation: aPin;
				focusLocation: aPin.
			self changed: #items.
		].