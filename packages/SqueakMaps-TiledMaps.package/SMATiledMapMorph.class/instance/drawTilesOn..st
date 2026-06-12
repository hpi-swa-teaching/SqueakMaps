drawing
drawTilesOn: aCanvas

	| form anyLoaded anyFailed |

	anyLoaded := false.
	anyFailed := false.
	self tilesDo: [:tile :formPromise |
		form := formPromise isResolved
			ifFalse: [ self loadingTile ]
			ifTrue: [ formPromise value
				ifNil: [ anyFailed := true. (Form extent: tileSize) fillGray ]
				ifNotNil: [:loaded | anyLoaded := true. loaded ] ].
		aCanvas drawImage: form at: (self tileCorner: tile) ].
	(anyFailed and: [anyLoaded not]) ifTrue: [ self drawTileLoadErrorOn: aCanvas ]