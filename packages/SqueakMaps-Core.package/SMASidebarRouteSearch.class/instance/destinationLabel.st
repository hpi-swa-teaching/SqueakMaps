submorphs - labels
destinationLabel
	^ destinationLabel ifNil: 
		[destinationLabel := self basicLabel
						contents: 'Destination: '; 
						fontName: (TextStyle defaultFont name) pointSize: (TextStyle defaultFont pixelSize) emphasis: 1;
						yourself.]