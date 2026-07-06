running
runAll
	^ self runAndReportResults: {
		self runUIAndMap.
		self runAPIGeoservices.
		self runGeoGuessrCore.
		self runRoutingDesign }
