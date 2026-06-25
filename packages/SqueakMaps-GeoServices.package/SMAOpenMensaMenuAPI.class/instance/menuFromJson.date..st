parsing
menuFromJson: aJson date: aDate

	| meals |

	meals := self mealsFromJson: aJson.
	^ SMAMensaMenu new
		date: aDate;
		meals: meals;
		emptyMessage: (meals isEmpty
			ifTrue: ['Heute sind keine Speiseplandaten verfügbar.']
			ifFalse: [nil]);
		yourself