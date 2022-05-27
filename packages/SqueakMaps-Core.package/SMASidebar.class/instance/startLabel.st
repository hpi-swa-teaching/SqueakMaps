submorphs - labels
startLabel
	^ startLabel ifNil: 
		[startLabel := self basicLabel
						contents: 'Start: '; 
						fontName: (TextStyle defaultFont name) pointSize: (TextStyle defaultFont pixelSize) emphasis: 1;
						yourself.]