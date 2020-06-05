select api
load: anAPI with: aMapType

	"
	Ein Problem mit diesem Ansatz ist, dass der oben angegebene Parameter anAPI als Instanzvariable zwischengespeichert werden müsste. Dafür müsste man in initialize diese Variablen anlegen. Dies ließe sich auch als Map vereinfachen.
	
	Ich würde in jedem Fall empfehlen, dass der MapType angegeben werden kann.
	"
	
	| apiName |
	
	apiName := anAPI class asString.
	(anAPI apikey isNil)
		"TODO: UIManager Anfrage refactor"
		ifTrue: [anAPI apikey: (UIManager default request: ('{1} Key eingeben' format: apiName))].
	(anAPI apikey notNil)
		ifTrue: [	self tiledMapMorph
						tileSource: (anAPI tileSourceForLayer: aMapType);
						"TODO: Vielleicht sollte hier das Window refreshed werden oder der Code in eine Methode refactored werden."
						zoomIn;
						zoomOut];
		ifFalse: [
			UIManager default inform: 'Invalid key, please try again'.
			anAPI apikey: nil]
			"SqueakMapsWindow bingApiKey: (UIManager default request: 'Your entered BingMapsApiKey is not valid. Please re-enter').
				self setBingAsApi]"