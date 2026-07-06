private
configuredMap
	| map |
	map := SMADecoratedMapMorph new.
	map
		extent: 800 @ 600;
		tileSource: SMATestTileSource new;
		center: 0.5 @ 0.5;
		zoom: 19.
	map instVarNamed: 'tileLoader' put: SMATestImmediateTileLoader new.
	map layoutChanged.
	^ map
