accessing
campusDetailModel

	campusDetailModel ifNil: [
		campusDetailModel := SMACampusDetailModel new
			mensaProvider: self mensaMenuAPI;
			poiSource: self tiledMapMorph;
			yourself].
	self tiledMapMorph ifNotNil: [
		campusDetailModel poiSource: self tiledMapMorph].
	^ campusDetailModel
