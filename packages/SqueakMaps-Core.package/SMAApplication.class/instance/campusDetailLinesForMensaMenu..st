building
campusDetailLinesForMensaMenu: aMensaMenu

	| lines |

	lines := OrderedCollection new.
	aMensaMenu hasMeals ifFalse: [
		lines add: 'Speiseplan' -> aMensaMenu emptyMessage.
		^ lines].
	lines add: 'Speiseplan' -> 'Heute'.
	aMensaMenu meals do: [:meal |
		lines add: (self campusDetailPrefixForMensaMeal: meal)
			-> (self campusDetailTextForMensaMeal: meal)].
	^ lines