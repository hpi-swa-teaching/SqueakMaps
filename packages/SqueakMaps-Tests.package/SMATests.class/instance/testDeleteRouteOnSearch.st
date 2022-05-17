searching
testDeleteRouteOnSearch

	| route longLatPotsdam longLatAhrensfelde |

	longLatPotsdam := 13.0645@52.3906.
	longLatAhrensfelde := 13.5747926@52.5817191.
	
	route := self squeakMapsWindow tiledMapMorph route.
	route points: {longLatPotsdam . longLatAhrensfelde}.
	self squeakMapsWindow searchBar setText: 'Ludwigfelde'.
	self squeakMapsWindow searchLocation.
	
	self assert: route points isEmpty
