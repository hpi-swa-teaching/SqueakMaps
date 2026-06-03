initialization
focusCampus

	self tiledMapMorph
		center: (SMAMapConfigurator geoCoordinatesToWorldPos: self campusLocation);
		zoom: self campusZoom
