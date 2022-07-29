url
urlForPosition: aScaledPosition zoom: aZoom

	| position |
	
	position := 'http://tile.thunderforest.com/', self layer, '/', aZoom asString, '/', aScaledPosition x asString, '/', aScaledPosition y asString, '.png'.
	
	position := position, '?apikey=', self api class apiKey.
	^ position asUrl