helping
getBoundingBoxOf: aFirstSMAMapLocationMarker and: aSecondSMAMapLocationMarker

	| location1 location2 padding boundingBox point1 point2 boundingBoxResult |
	location1 := aFirstSMAMapLocationMarker worldPos.
	location2 := aSecondSMAMapLocationMarker worldPos.
	padding := (location1 dist: location2) * 0.0. "TODO: Why does padding not work?"
	"self halt."
	boundingBox := Array new: 4.
	location1 y > location2 y 
		ifTrue:[
			boundingBox at: 1 put: (location2 y + padding).
			boundingBox at: 2 put: (location1 y - padding)]
		ifFalse:[
			boundingBox at: 1 put: (location1 y + padding).
			boundingBox at: 2 put: (location2 y - padding)].
	location1 x > location2 x 
		ifTrue:[
			boundingBox at: 3 put: (location2 x - padding).
			boundingBox at: 4 put: (location1 x + padding)]
		ifFalse:[
			boundingBox at: 3 put: (location1 x - padding).
			boundingBox at: 4 put: (location2 x + padding)].

	point1 := SMAMapTileLoader worldPosToLatLong: ((boundingBox at: 1) @ (boundingBox at: 3)).
	point2 := SMAMapTileLoader worldPosToLatLong: ((boundingBox at: 2) @ (boundingBox at: 4)).
	boundingBoxResult := Array new: 4.
	boundingBoxResult at: 1 put: point1 x.
	boundingBoxResult at: 2 put: point2 x.
	boundingBoxResult at: 3 put: point1 y.
	boundingBoxResult at: 4 put: point2 y.
		
		
	^ boundingBoxResult
	