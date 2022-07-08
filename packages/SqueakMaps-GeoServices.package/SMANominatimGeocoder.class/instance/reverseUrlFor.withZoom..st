url
reverseUrlFor: aLatLong withZoom: aZoom

	^ ('https://nominatim.openstreetmap.org/reverse.php?lat=', aLatLong y, '&lon=', aLatLong x, '&zoom=', aZoom, '&format=jsonv2&accept-language=en-US') asUrl