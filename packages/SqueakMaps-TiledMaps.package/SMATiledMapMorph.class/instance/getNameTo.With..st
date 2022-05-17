accessing
getNameTo: aLongLat With: aZoom

	| queryUrl result |
	
	queryUrl := ('https://nominatim.openstreetmap.org/reverse.php?lat=', aLongLat y, '&lon=', aLongLat x, '&zoom=', aZoom, '&format=jsonv2') asUrl.
	result  := Json readFrom: queryUrl retrieveContents contentStream.
	^ result at: 'name'