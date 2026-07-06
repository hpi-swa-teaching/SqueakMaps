running - private
methodReferencesFor: classes
	| references |
	references := OrderedCollection new.
	classes asSet do: [:class |
		{class. class classSide} do: [:behavior |
			behavior selectors do: [:selector |
				references add: (MethodReference class: behavior selector: selector)]]].
	^ references
