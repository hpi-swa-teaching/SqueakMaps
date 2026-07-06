building
campusDetailTimeLinesFor: aCampusDetailTarget

	^ (SMACampusDetailPresenter
		on: aCampusDetailTarget
		mensaProvider: self mensaMenuAPI
		poiSource: self tiledMapMorph)
			timeLines
