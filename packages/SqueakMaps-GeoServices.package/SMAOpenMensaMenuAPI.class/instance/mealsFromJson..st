parsing
mealsFromJson: aJson

	(aJson isKindOf: Array)
		ifFalse: [Error signal: 'OpenMensa meals response must be an array'].
	^ aJson collect: [:mealJson | self mealFromJson: mealJson]