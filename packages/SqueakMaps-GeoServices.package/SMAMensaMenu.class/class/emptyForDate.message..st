instance creation
emptyForDate: aDate message: aString

	^ self new
		date: aDate;
		meals: #();
		emptyMessage: aString;
		yourself