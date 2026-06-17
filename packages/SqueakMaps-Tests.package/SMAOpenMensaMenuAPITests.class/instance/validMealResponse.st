fixtures
validMealResponse

	^ {
		Dictionary new
			at: 'id' put: 123;
			at: 'name' put: 'Kartoffel-Gemüse-Pfanne';
			at: 'notes' put: #('vegan' 'bio');
			at: 'prices' put: (Dictionary new
				at: 'students' put: 2.95;
				at: 'employees' put: 4.25;
				yourself);
			at: 'category' put: 'Aktionstheke';
			yourself.
		Dictionary new
			at: 'id' put: 124;
			at: 'name' put: 'Tagessuppe';
			at: 'category' put: 'Suppe';
			yourself }