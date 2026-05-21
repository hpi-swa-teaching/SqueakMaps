building
renamePin

	| answer |
	answer := UIManager default request: 'New Name'.
	(answer = '') ifFalse: [ 
			self selectedPin label: answer.
			self clear.
			self mapConfigurator
				displayLocation: selectedPin;
				focusLocation: selectedPin.
		].