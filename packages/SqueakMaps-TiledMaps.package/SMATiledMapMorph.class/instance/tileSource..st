accessing
tileSource: aTileSource

	tileSource := aTileSource.
	self 
		layoutChanged;
		changed;
		refreshMap