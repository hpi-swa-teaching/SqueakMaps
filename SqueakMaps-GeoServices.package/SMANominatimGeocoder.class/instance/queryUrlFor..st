as yet unclassified
queryUrlFor: queryString

	^ ('https://nominatim.openstreetmap.org/search/?q=', queryString encodeForHTTP, '&format=jsonv2&accept-language=en-US') asUrl