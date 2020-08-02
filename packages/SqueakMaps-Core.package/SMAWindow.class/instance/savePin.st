select api
savePin
	| pinlist index |
	pinlist := self tiledMapMorph pins asList.
	index := self requestPinSelectionFrom: pinlist.
	(index > 0)
		ifTrue: [	(pinlist at: index) label: (UIManager default request: 'please set the name of the chosen pin' initialAnswer: ((pinlist at: index) label)).
				self class savedPins add: (pinlist at: index)]