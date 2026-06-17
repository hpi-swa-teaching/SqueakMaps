parsing
mealFromJson: aJson

	^ SMAMensaMeal new
		id: (aJson at: 'id' ifAbsent: [nil]);
		name: (aJson at: 'name' ifAbsent: ['']);
		notes: (aJson at: 'notes' ifAbsent: [#()]);
		prices: (aJson at: 'prices' ifAbsent: [Dictionary new]);
		category: (aJson at: 'category' ifAbsent: ['']);
		yourself