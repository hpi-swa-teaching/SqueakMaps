url
urlForPosition: aScaledPosition zoom: aZoom

	| position |
	
	position := 'http://tile.thunderforest.com/', self layer, '/', aZoom asString, '/', aScaledPosition x asString, '/', aScaledPosition y asString, '.png'.
	
	self api class apiKey ifNotNil: [:apikey | position := position, '?apikey=', apikey].
	^ position asUrl