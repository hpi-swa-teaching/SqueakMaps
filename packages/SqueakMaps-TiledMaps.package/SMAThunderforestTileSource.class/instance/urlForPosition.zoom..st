url
urlForPosition: aScaledPosition zoom: aZoom

	| position |
	
	position := 'http://tile.thunderforest.com/', layer, '/', aZoom asString, '/', aScaledPosition x asString, '/', aScaledPosition y asString, '.png'.
	
	api apikey ifNotNil: [:apikey | position := position, '?apikey=', apikey].
	^ position asUrl