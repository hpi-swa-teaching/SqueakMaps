building
initializeMap

	| osmStream |

	self tiledMapMorph ifNotNil: [^ self].

	osmStream := self
		readStreamForOSMAssetNamed: self defaultCampusOSMAssetName.

	self tiledMapMorph:
		(SMAOSMMapBuilder fromOSMFile: osmStream).

	self
		mapConfigurator:
			(SMAMapConfigurator newWith: self tiledMapMorph);
		initializeMapInteractions