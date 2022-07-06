private
uncachedImageAtKey: aKey
	
	| promise |
	
	promise := Promise new.
	
	[ promise resolveWith: (aKey third mapTileAt: aKey first zoom: aKey second) ] fork.
	^ promise