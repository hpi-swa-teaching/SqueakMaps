building
getDestinationLabel

	^ {StringMorph new
		hResizing: #spaceFill;
		layoutInset: 4;
		contents: 'Destination: '; 
		fontName: (TextStyle defaultFont name) pointSize: (TextStyle defaultFont pixelSize) emphasis: 1;
		yourself}