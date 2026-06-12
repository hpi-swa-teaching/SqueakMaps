searching
testRouteToGpx

	|  resultingRoutes |
	
	self geocoderMock mockLocateWith: [:query |
		self assert: query equals: 'Berlin'.
		{ self berlinLocation }].
	self geocoderMock mockLocateWith: [:query | 
		self assert: query equals: 'Paris'.
		{ self parisLocation }].
	self geocoderMock mockLocateWith: [:query | 
		self assert: query equals: 'London'.
		{ self londonLocation }].
	
	
	self routingAPIMock mockGetRouteFromToByWith: [:from :to :by |
	| currentWaypoints |
	currentWaypoints := (from = self berlinLocation coordinates)
		ifTrue: [ { self berlinLocation coordinates . self parisLocation coordinates } ]
		ifFalse: [ { self parisLocation coordinates . self londonLocation coordinates } ].

	SMARoute new
		waypoints: currentWaypoints;
		boundingBox: (1 @ 1 corner: 3 @ 3);
		yourself].
	
	self model hopSearchInput: 'Berlin'.
	self model addHopSearchInput.
	self model hopSearchInput: 'Paris'.
	self model addHopSearchInput.
	self model hopSearchInput: 'London'.
	self model addHopSearchInput.
	self model searchDirections.

	resultingRoutes := self model routes.
	
	self assert: ((self model parseToGPXStringFromARoute: resultingRoutes) = '<?xml version="1.0" encoding="UTF-8"?>
<gpx version="1.1" creator="SMAApp">
<trk>
<trkseg>
<trkpt lat="1" lon="1"></trkpt>
<trkpt lat="3" lon="3"></trkpt>
</trkseg>
<trkseg>
<trkpt lat="3" lon="3"></trkpt>
<trkpt lat="2" lon="2"></trkpt>
</trkseg>
</trk>
</gpx>')