building
filterPins
	| categories selectedCategories done index |

	categories := OrderedCollection withAll:
		#('Freizeit' 'Arbeit' 'Essen' 'Fertig').

	selectedCategories := OrderedCollection new.
	done := false.

	[ done ] whileFalse: [

		index := UIManager default
			chooseFrom: categories
			title: 'Kategorien auswählen'.

		index = 0 ifTrue: [ ^ self ].

		(categories at: index) = 'Fertig'
			ifTrue: [ done := true ]
			ifFalse: [
				selectedCategories
					addIfNotPresent: (categories at: index)
			].
	].


	self visiblePinCategories: selectedCategories.
	self clear.