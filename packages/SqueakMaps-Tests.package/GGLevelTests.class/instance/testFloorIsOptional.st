testing
testFloorIsOptional

	| withoutFloor withFloor |

	withoutFloor := GGLevel newImagePath: 'x' coordinates: (SMAGeoCoordinate newLong: 0 lat: 0).
	withFloor := GGLevel newImagePath: 'x' coordinates: (SMAGeoCoordinate newLong: 0 lat: 0) floor: 'E.1'.
	self deny: withoutFloor hasFloor.
	self assert: withFloor hasFloor.
	self assert: withFloor floor equals: 'E.1'
