building
campusDetailPOILineFor: aCampusDetailTarget

	^ (SMACampusDetailPresenter
		on: aCampusDetailTarget
		mensaProvider: self mensaMenuAPI
		poiSource: self tiledMapMorph)
			poiLine
