category management
getMenu: aMenu
	
	((self selectionList select:[:i | i ]) size = 1) ifTrue:[
		self buildPinOrCategoryMenu: aMenu
		]
	ifFalse: [
		self buildPinRouteMenu: aMenu
		].	
	^ aMenu