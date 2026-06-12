building
writeFullRouteGpxToFile: fileName
	| gpx allCoordinates |

	allCoordinates := self routes collect: [:route |
		route waypoints ].

	gpx := String streamContents: [:stream |

		stream nextPutAll: '<?xml version="1.0" encoding="UTF-8"?>'; cr.
		stream nextPutAll: '<gpx version="1.1" creator="SMAApp">'; cr.
		stream nextPutAll: '<trk>'; cr.

		allCoordinates do: [:waypoints |

			stream nextPutAll: '<trkseg>'; cr.

			waypoints do: [:coord |
				stream
					nextPutAll: '<trkpt lat="';
					nextPutAll: coord lat asString;
					nextPutAll: '" lon="';
					nextPutAll: coord long asString;
					nextPutAll: '"></trkpt>'; cr ].

			stream nextPutAll: '</trkseg>'; cr ].

		stream nextPutAll: '</trk>'; cr.
		stream nextPutAll: '</gpx>'.
	].

	FileStream forceNewFileNamed: fileName do: [:f |
		f nextPutAll: gpx ].