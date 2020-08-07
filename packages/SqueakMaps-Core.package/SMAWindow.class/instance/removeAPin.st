pin management
removeAPin

	| pins pinPosition |

	pins := self tiledMapMorph pins.
	pinPosition := self requestPinSelectionFrom: pins.
	(pinPosition > 0)
		ifTrue: [	self tiledMapMorph removePin: (pins at: pinPosition).
				self tiledMapMorph refreshMap]