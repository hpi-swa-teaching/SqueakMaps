accessing
getNameTo: aLatLong With: aZoom

	| queryUrl result |
	
	queryUrl := ('https://nominatim.openstreetmap.org/reverse.php?lat=', aLatLong y, '&lon=', aLatLong x, '&zoom=', aZoom, '&format=jsonv2') asUrl.
	result  := Json readFrom: queryUrl retrieveContents contentStream.
	^ result at: 'name'