url creation
mealsUrlForDate: aDate canteenId: anInteger

	^ self baseUrl , '/' , anInteger asString , '/days/' ,
		(self dateStringFor: aDate) , '/meals'