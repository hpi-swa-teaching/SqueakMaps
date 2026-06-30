category management
buildPinMenu: aMenu for: aPin

	aMenu
		addTitle: 'Pin Options'.
	aMenu
		add: 'Change pin category' target: self selector: #changePinCategory:
		argumentList: (Array with: aPin).
	aMenu 
		add: 'Rename Pin' target: self selector: #renamePin:
		argumentList: (Array with: aPin).
	aMenu 
		add: 'Remove Pin' target: self selector: #removePin:
		argumentList: (Array with: aPin).
		
	^ aMenu