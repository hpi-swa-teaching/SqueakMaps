building
getStartLabel

	^ {StringMorph new
		hResizing: #spaceFill;
		layoutInset: 4;
		contents: 'Start: '; 
		fontName: (TextStyle defaultFont name) pointSize: (TextStyle defaultFont pixelSize) emphasis: 1;
		yourself}