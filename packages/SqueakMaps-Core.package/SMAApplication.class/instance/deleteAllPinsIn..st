category management
deleteAllPinsIn: aCategory

	self class savedPins do:[:pin |
		pin category = aCategory ifTrue:[
			self removePin: pin
		]
	]