select api
savePin
	| pinlist index name |
	pinlist := self tiledMapMorph pins asList.
	index := UIManager default chooseFrom: (pinlist collect: [:pin | ((self getNameTo: pin latLong With: 11), ' (', (pin latLong), ')') asString]).
	(index > 0)
		ifTrue: [	name := UIManager default request: 'Please set the name of the chosen pin' initialAnswer: (self getNameTo: ((pinlist at: index) latLong) With: 11).
				SMAWindow savedPins add: (Association key: name value: (pinlist at: index) latLong)]
