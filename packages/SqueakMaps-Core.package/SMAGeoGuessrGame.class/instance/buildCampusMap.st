building
buildCampusMap

	^ SMATiledMapMorph new
		center: (SMAMapConfigurator geoCoordinatesToWorldPos: self campusLocation);
		zoom: self campusZoom;
		yourself
