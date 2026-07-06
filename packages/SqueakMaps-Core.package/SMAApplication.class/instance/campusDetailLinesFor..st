building
campusDetailLinesFor: aCampusDetailTarget

	^ (SMACampusDetailPresenter
		on: aCampusDetailTarget
		mensaProvider: self mensaMenuAPI
		poiSource: self tiledMapMorph)
			detailLines
