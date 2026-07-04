pin management
buildPinMenu: aMenu for: aPin

	aMenu
		addTitle: self pinOptionsMenuTitle.
	aMenu
		add: self changePinCategoryMenuLabel target: self selector: #changePinCategory:
		argumentList: (Array with: aPin).
	aMenu 
		add: self renamePinMenuLabel target: self selector: #renamePin:
		argumentList: (Array with: aPin).
	aMenu 
		add: self removePinMenuLabel target: self selector: #removePin:
		argumentList: (Array with: aPin).
	^ aMenu