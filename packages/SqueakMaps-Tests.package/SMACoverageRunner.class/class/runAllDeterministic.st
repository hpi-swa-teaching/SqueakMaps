running
runAllDeterministic
	^ self runAndReportResults: {
		self runUIAndMapDeterministic.
		self runAPIGeoservices.
		self runGeoGuessrCore.
		self runRoutingDesign }
