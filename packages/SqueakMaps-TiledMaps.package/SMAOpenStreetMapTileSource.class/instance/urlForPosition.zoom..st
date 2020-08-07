as yet unclassified
urlForPosition: aScaledPosition zoom: aZoom

	^ ('http://tile.openstreetmap.org/', aZoom asString, '/', aScaledPosition x asString, '/', aScaledPosition y asString, '.png') asUrl
