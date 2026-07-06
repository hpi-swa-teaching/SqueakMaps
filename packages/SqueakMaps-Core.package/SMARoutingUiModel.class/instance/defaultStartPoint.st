building
defaultStartPoint

	^ defaultStartPoint ifNil: [
		defaultStartPoint := SMAPoint new
			id: nil;
			lat: 52.3939869;
			lon: 13.1285557;
			yourself]
