as yet unclassified
urlForPosition: scaledPos zoom: zoom
	"^ ('http://mt.google.com/vt?lyrs=', aChar asString, '&hl=en&x=', scaledPos x asString, '&y=', scaledPos y asString, '&z=', zoom asString) asUrl"
	^ ('http://tile.openstreetmap.org/', zoom asString, '/', scaledPos x asString, '/', scaledPos y asString, '.png') asUrl
	"^ ('http://tile.opencyclemap.org/cycle/', zoom asString, '/', scaledPos x asString, '/', scaledPos y asString, '.png') asUrl"
	"^ ('http://tile2.opencyclemap.org/transport/', zoom asString, '/', scaledPos x asString, '/', scaledPos y asString, '.png') asUrl"