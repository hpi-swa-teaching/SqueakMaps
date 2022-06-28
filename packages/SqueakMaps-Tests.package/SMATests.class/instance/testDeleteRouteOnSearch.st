searching
testDeleteRouteOnSearch

	| tiledMapMorph latLongPotsdam latLongAhrensfelde |

	tiledMapMorph := self squeakMapsWindow tiledMapMorph.
	
	latLongPotsdam := 13.0645@52.3906.
	latLongAhrensfelde:= 13.5747926@52.5817191.

	tiledMapMorph route points: {latLongPotsdam . latLongAhrensfelde}.
	
	self squeakMapsWindow searchInput: 'Ludwigfelde'.
	self squeakMapsWindow searchLocation.
	self assert: tiledMapMorph route points isEmpty
