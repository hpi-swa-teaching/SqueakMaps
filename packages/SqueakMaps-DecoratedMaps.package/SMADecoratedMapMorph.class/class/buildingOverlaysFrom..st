as yet unclassified
buildingOverlaysFrom: aCollectionOfBuildings

	^ aCollectionOfBuildings collect: [:building |
		SMAGeoPolygonMorph forBuilding: building]