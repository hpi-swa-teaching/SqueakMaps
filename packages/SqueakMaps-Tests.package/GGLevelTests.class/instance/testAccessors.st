testing
testAccessors

	| coordinates level |

	coordinates := SMAGeoCoordinate newLong: 13.1 lat: 52.4.
	level := GGLevel newImagePath: 'a/b.png' coordinates: coordinates.
	self assert: level imagePath equals: 'a/b.png'.
	self assert: level coordinates equals: coordinates
