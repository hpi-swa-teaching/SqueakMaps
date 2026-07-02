building
defaultStartPoint
	"Cached default routing start point: S Griebnitzsee Bahnhof/Süd.
	It sits next to the existing campus path; routing snaps it to the nearest path vertex."

	^ defaultStartPoint ifNil: [
		defaultStartPoint := SMAPoint new
			id: nil;
			lat: 52.3939869;
			lon: 13.1285557;
			yourself]