select api
deletePin
	| pinlist index |
	pinlist := self tiledMapMorph pins asList.
	index := self requestPinSelectionFrom: pinlist.
	(index > 0)
		ifTrue: [	self tiledMapMorph pins remove: (pinlist at: index).
				self refreshMap]