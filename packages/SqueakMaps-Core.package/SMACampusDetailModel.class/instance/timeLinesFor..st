building
timeLinesFor: aCampusDetailTarget

	^ (SMACampusDetailPresenter
		on: aCampusDetailTarget
		mensaProvider: self mensaProvider
		poiSource: self poiSource)
			timeLines
