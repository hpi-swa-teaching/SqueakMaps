testing
testBingApiCreatesAllConfiguredSources

	| api expected |
	api := SMABingMapsApi new.
	expected := {
		#aerialTileSource -> 'Aerial'.
		#aerialWithLabelsOnDemandTileSource -> 'AerialWithLabelsOnDemand'.
		#aerialWithLabelsTileSource -> 'AerialWithLabels'.
		#canvasDarkTileSource -> 'CanvasDark'.
		#canvasGrayTileSource -> 'CanvasGray'.
		#canvasLightTileSource -> 'CanvasLight'.
		#ordnanceSurveyTileSource -> 'OrdnanceSurvey'.
		#roadOnDemandTileSource -> 'RoadOnDemand'.
		#roadTileSource -> 'Road' }.
	expected do: [:association |
		| source |
		source := api perform: association key.
		self assert: source class equals: SMABingMapsTileSource.
		self assert: source layer equals: association value].
	self assert: api tileSourceClass equals: SMABingMapsTileSource.
	self assert: api keyCheckURL notEmpty
