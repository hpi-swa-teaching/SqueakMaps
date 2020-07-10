select api
requestPinSelection
	| pinlist index |
	pinlist := self tiledMapMorph pins asList.
	index := UIManager default chooseFrom: (pinlist collect: [:pin | (pin label, ' (', (pin latLong), ')') asString]).
	^index
