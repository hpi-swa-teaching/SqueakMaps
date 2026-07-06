building
intrinsicLines

	^ self target attributes collect: [:attribute |
		(self labelFor: attribute key) -> attribute value]
