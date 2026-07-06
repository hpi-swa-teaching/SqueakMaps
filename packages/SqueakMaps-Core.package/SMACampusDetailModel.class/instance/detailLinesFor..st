building
detailLinesFor: aCampusDetailTarget

	^ (SMACampusDetailPresenter
		on: aCampusDetailTarget
		mensaProvider: self mensaProvider
		poiSource: self poiSource)
			detailLines
