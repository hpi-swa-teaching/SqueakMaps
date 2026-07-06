building
campusDetailLinesForMensaMenu: aMensaMenu onDate: aDate

	| lines label |

	lines := OrderedCollection new.
	label := aDate = Date today
		ifTrue: ['Heute']
		ifFalse: ['Montag (nächster Werktag, da Wochenende)'].
	aMensaMenu hasMeals ifFalse: [
		lines add: 'Speiseplan' -> aMensaMenu emptyMessage.
		^ lines].
	lines add: 'Speiseplan' -> label.
	aMensaMenu meals do: [:meal |
		lines add: (self campusDetailPrefixForMensaMeal: meal)
			-> (self campusDetailTextForMensaMeal: meal)].
	^ lines
