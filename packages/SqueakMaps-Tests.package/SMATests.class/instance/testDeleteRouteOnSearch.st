searching
testDeleteRouteOnSearch

	| tiledMapMorph coordinatesPotsdam coordinatesAhrensfelde |

	tiledMapMorph := self squeakMapsWindow tiledMapMorph.
	
	coordinatesPotsdam := SMAGeoCoordinate newFrom: 13.0645 @ 52.3906.
	coordinatesAhrensfelde := SMAGeoCoordinate newFrom: 13.5747926 @ 52.5817191.
	
	tiledMapMorph route points: {
		SMAMapConfigurator geoCoordinatesToWorldPos: coordinatesPotsdam . 
		SMAMapConfigurator geoCoordinatesToWorldPos: coordinatesAhrensfelde}.
	
	self squeakMapsWindow searchInput: 'Ludwigfelde'.
	self squeakMapsWindow searchLocation.
	self assert: tiledMapMorph route points isEmpty
