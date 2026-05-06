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

	(UIManager default confirm: 'Neue Kategorie hinzufügen?')
		ifTrue: [
			| newCategory |

			newCategory := UIManager default
				request: 'Neue Kategorie:'.

			(newCategory notNil and: [ newCategory notEmpty ])
				ifTrue: [
					selectedCategories addIfNotPresent: newCategory
				].
		].

	self visiblePinCategories: selectedCategories.