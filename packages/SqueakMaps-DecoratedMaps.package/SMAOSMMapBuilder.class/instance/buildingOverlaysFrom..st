private
buildingOverlaysFrom: aCollectionOfBuildings

	^ aCollectionOfBuildings collect: [:building | SMAGeoPolygonMorph forBuilding: building]
