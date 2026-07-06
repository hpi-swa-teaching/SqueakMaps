tiles
urlForPosition: aPosition zoom: aZoom
	^ ('http://example.invalid/', aZoom asString, '/', aPosition x asString, '/', aPosition y asString) asUrl
