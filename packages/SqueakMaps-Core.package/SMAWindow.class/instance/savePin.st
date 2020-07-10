select api
savePin
	| pinlist index name |
	pinlist := self tiledMapMorph pins asList.
	index := self requestPinSelection.
	(index > 0)
		ifTrue: [	name := UIManager default request: 'Please set the name of the chosen pin' initialAnswer: ((pinlist at: index) label).
				SMAWindow savedPins add: (Association key: name value: (pinlist at: index) latLong)]
