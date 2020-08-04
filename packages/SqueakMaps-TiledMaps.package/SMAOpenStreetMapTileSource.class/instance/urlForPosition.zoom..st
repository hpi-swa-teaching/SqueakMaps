as yet unclassified
urlForPosition: scaledPos zoom: zoom
	^ ('http://tile.openstreetmap.org/', zoom asString, '/', scaledPos x asString, '/', scaledPos y asString, '.png') asUrl
