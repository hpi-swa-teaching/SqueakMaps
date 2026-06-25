building
campusDetailTextForMensaMeal: aMensaMeal

	| priceText text |

	text := aMensaMeal name.
	priceText := self campusDetailPricesForMensaMeal: aMensaMeal.
	priceText isEmpty ifFalse: [
		text := text , ' - ' , priceText].
	aMensaMeal hasNotes ifTrue: [
		text := text , ' - ' , aMensaMeal notesText].
	^ text