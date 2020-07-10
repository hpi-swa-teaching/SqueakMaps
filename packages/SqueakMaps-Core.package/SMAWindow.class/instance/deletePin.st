select api
deletePin
	| pinlist index |
	pinlist := self tiledMapMorph pins asList.
	index := self requestPinSelection.
	(index > 0)
		ifTrue: [	self tiledMapMorph pins remove: (pinlist at: index).
				self refreshMap]