pin management
removeAPin
	| pinlist index |
	pinlist := self tiledMapMorph pins.
	index := self requestPinSelectionFrom: pinlist.
	(index > 0)
		ifTrue: [	self tiledMapMorph pins remove: (pinlist at: index).
				self refreshMap]