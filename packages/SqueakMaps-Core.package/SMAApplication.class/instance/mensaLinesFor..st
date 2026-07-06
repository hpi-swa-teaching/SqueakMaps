building
mensaLinesFor: aCampusDetailTarget

	^ (SMACampusDetailPresenter
		on: aCampusDetailTarget
		mensaProvider: self mensaMenuAPI
		poiSource: self tiledMapMorph)
			mensaLines
