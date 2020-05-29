accessing
tileSource: aTileSource
	tileSource := aTileSource.
	self layoutChanged.
	self changed.