pin management
savePin

	| pins pinPosition |

	pins := self tiledMapMorph pins.
	pinPosition := self requestPinSelectionFrom: pins.
	(pinPosition > 0)
		ifTrue: [	(pins at: pinPosition) label: 
				(UIManager default request: 'please set the name of the chosen pin' initialAnswer: ((pins at: pinPosition) label)).
				self class savedPins add: (pins at: pinPosition)]