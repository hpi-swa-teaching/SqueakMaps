searching
testDeleteRouteOnSearch

	| route latLongPotsdam latLongAhrensfelde |

	route := self squeakMapsWindow tiledMapMorph route.
	
	latLongPotsdam := 13.0645@52.3906.
	latLongAhrensfelde:= 13.5747926@52.5817191.

	route points: {latLongPotsdam . latLongAhrensfelde}.
	
	self squeakMapsWindow searchInput: 'Ludwigfelde'.
	self squeakMapsWindow searchLocation.
	self assert: route points isEmpty
