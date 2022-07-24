url
reverseUrlFor: aSMAGeoCoordinate withZoom: aZoom

	^ ('https://nominatim.openstreetmap.org/reverse.php?lat=', aSMAGeoCoordinate lat, '&lon=', aSMAGeoCoordinate long, '&zoom=', aZoom, '&format=jsonv2&accept-language=en-US') asUrl