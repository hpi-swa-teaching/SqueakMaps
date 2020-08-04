as yet unclassified
urlForPosition: scaledPos zoom: zoom
	self error: 'It is against the Google Maps terms of service to retrieve tiles using anything other than their Google Maps API. Do not proceed. You have been warned.'.
	^ ('http://mt.google.com/vt?lyrs=', self layer, '&hl=en&x=', scaledPos x asString, '&y=', scaledPos y asString, '&z=', zoom asString) asUrl