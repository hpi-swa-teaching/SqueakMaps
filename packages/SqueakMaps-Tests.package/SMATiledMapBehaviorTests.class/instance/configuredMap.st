private
configuredMap
	| map |
	map := SMATiledMapMorph new.
	map
		extent: 640 @ 480;
		tileSource: SMATestTileSource new.
	map instVarNamed: 'tileLoader' put: SMATestImmediateTileLoader new.
	map layoutChanged.
	^ map
