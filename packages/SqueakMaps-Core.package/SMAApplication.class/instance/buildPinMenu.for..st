category management
buildPinMenu: aMenu for: aPin

	aMenu 
		add: 'Rename'
		target: self
		selector: #renamePin:
		argumentList: (Array with: aPin).
	aMenu 
		add: 'Remove'
		target: self
		selector: #removePin:
		argumentList: (Array with: aPin).
	aMenu
		add: 'Change Pin Category'
		target: self
		selector: #changePinCategory:
		argumentList: (Array with: aPin).
		
	^ aMenu