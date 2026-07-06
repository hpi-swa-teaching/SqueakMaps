formatting
priceSummary

	| prices |

	prices := OrderedCollection new.
	self studentPrice ifNotNil: [:price |
		prices add: 'Studierende: ' , (self formattedPrice: price)].
	self employeePrice ifNotNil: [:price |
		prices add: 'Mitarbeitende: ' , (self formattedPrice: price)].
	self otherPrice ifNotNil: [:price |
		prices add: 'Gäste: ' , (self formattedPrice: price)].
	^ String streamContents: [:stream |
		prices
			do: [:priceText | stream nextPutAll: priceText]
			separatedBy: [stream nextPutAll: ', ']]
