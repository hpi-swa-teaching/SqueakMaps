building
campusDetailTextForMensaMeal: aMensaMeal

	| text |

	text := aMensaMeal name.
	aMensaMeal studentPrice ifNotNil: [:price |
		text := text , ' - ' , (aMensaMeal formattedPrice: price)].
	aMensaMeal hasNotes ifTrue: [
		text := text , ' - ' , aMensaMeal notesText].
	^ text