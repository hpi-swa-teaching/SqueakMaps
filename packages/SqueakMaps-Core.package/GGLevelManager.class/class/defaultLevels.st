instance creation
defaultLevels
	"Placeholder levels: the existing TestPicture plus distinct HPI coordinates and difficulties.
	Replace the image paths and coordinates here with real level data later."

	^ OrderedCollection new
		add: (GGEasyLevel newImagePath: 'levels/1.png' coordinates: (SMAGeoCoordinate newLong: 13.1306 lat: 52.3935));
		add: (GGMediumLevel newImagePath: 'levels/2.png' coordinates: (SMAGeoCoordinate newLong: 13.1320 lat: 52.3940));
		add: (GGHardLevel newImagePath: 'levels/3.png' coordinates: (SMAGeoCoordinate newLong: 13.1290 lat: 52.3928));
		yourself
