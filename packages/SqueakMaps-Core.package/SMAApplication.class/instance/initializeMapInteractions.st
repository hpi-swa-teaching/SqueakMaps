building
initializeMapInteractions

	self tiledMapMorph
		onDoubleClickAction: [:aPoint |
			self searchLocationFromCoordinates:
				(SMAMapConfigurator
					worldPosToGeoCoordinates: aPoint)];
		onOverlayClickAction: [:anOverlay |
			self selectCampusDetailTarget: anOverlay model]