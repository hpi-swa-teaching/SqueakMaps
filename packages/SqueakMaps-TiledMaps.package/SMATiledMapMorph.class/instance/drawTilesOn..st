private
drawTilesOn: aCanvas
	| form |
	self tilesDo: [:tile :formPromise |
		form := formPromise isResolved
			ifFalse: [ self loadingTile ]
			ifTrue: [ formPromise value ifNil: [ (Form extent: tileSize) fillGray ] ].
		aCanvas drawImage: form at: (self tileCorner: tile) ]