select api
savePin
	| pinlist index |
	pinlist := self tiledMapMorph pins.
	index := self requestPinSelectionFrom: pinlist.
	(index > 0)
		ifTrue: [	(pinlist at: index) label: (UIManager default request: 'please set the name of the chosen pin' initialAnswer: ((pinlist at: index) label)).
				SMAWindow savedPins add: (pinlist at: index)]