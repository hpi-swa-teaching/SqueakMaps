pin management
renamePin

	| answer |
	answer := UIManager default request: 'New Name'.
	(answer = '') ifFalse: [ 
			self selectedPin alias: answer.
			self clear.
			self mapConfigurator
				displayLocation: self selectedPin;
				focusLocation: self selectedPin.
		].