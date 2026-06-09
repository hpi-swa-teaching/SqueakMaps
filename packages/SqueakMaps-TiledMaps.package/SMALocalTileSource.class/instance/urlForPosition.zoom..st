url
urlForPosition: aScaledPosition zoom: aZoom


	^ ('file://localhost/home/kong/mapnik-test/tiles-20/20/', aScaledPosition x asString, '/', aScaledPosition y asString, '.png') asUrl
