updating
okToChange

	^ self dependents allSatisfy: [:ea |
		(ea respondsTo: #okToChangeModel) ==> [ea okToChangeModel]]