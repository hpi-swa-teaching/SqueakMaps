as yet unclassified
uncachedImageAtKey: key
	| p |
	p := Promise new.
	[ p resolveWith: (key third mapTileAt: key first zoom: key second) ] fork.
	^ p