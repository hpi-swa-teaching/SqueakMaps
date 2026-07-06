instance creation
defaultLevels
	"Add levels for GeoGuessr here"

	^ OrderedCollection new
		add: (GGEasyLevel newImagePath: 'levels/1.png' coordinates: (SMAGeoCoordinate newLong: 13.1326191 lat: 52.3932905));
		add: (GGMediumLevel newImagePath: 'levels/2.png' coordinates: (SMAGeoCoordinate newLong: 13.132733120203056 lat: 52.393232424487465));
		add: (GGHardLevel newImagePath: 'levels/3.png' coordinates: (SMAGeoCoordinate newLong: 13.129175169944801 lat: 52.393238971638404));
		yourself
