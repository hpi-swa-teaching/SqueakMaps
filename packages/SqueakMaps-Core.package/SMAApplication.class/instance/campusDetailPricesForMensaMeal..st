building
campusDetailPricesForMensaMeal: aMensaMeal

	| prices |

	prices := OrderedCollection new.
	aMensaMeal studentPrice ifNotNil: [:price |
		prices add: 'Studierende: ' , (aMensaMeal formattedPrice: price)].
	aMensaMeal employeePrice ifNotNil: [:price |
		prices add: 'Mitarbeitende: ' , (aMensaMeal formattedPrice: price)].
	aMensaMeal otherPrice ifNotNil: [:price |
		prices add: 'Gäste: ' , (aMensaMeal formattedPrice: price)].
	^ String streamContents: [:stream |
		| isFirst |
		isFirst := true.
		prices do: [:priceText |
			isFirst ifFalse: [stream nextPutAll: ', '].
			stream nextPutAll: priceText.
			isFirst := false]]