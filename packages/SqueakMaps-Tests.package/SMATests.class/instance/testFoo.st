ui
testFoo
	
	"self model searchManager geocoder: SMANominatimGeocoder new."
	
	self geocoderMock mockLocateWith: [:query | (SMALocationNameNotFoundError new requestedName: 'foo') signal].
	
	self model searchInput: 'foo'.
	[self model searchLocation] valueSupplyingAnswer: {'No location with name "foo" found.' . #closeDialog}.
	