json responses
validRouteResponse

	^ Json readFrom: '{
		"type": "FeatureCollection",
		"features": [
			{
				"bbox": [
					13.128474,
					52.39385,
					13.129373,
					52.393877
				],
				"type": "Feature",
				"properties": {
					"segments": [
						{
							"distance": 61.1,
							"duration": 14.7,
							"steps": [
								{
									"distance": 61.1,
									"duration": 14.7,
									"type": 11,
									"instruction": "Head east on Prof.-Dr.-Helmert-Straße",
									"name": "Prof.-Dr.-Helmert-Straße",
									"way_points": [
										0,
										4
									]
								},
								{
									"distance": 0.0,
									"duration": 0.0,
									"type": 10,
									"instruction": "Arrive at Prof.-Dr.-Helmert-Straße, straight ahead",
									"name": "-",
									"way_points": [
										4,
										4
									]
								}
							]
						}
					],
					"summary": {
						"distance": 61.1,
						"duration": 14.7
					},
					"way_points": [
						0,
						4
					]
				},
				"geometry": {
					"coordinates": [
						[
							13.128474,
							52.39385
						],
						[
							13.128613,
							52.393854
						],
						[
							13.128937,
							52.393864
						],
						[
							13.129165,
							52.39387
						],
						[
							13.129373,
							52.393877
						]
					],
					"type": "LineString"
				}
			}
		],
		"bbox": [
			13.128474,
			52.39385,
			13.129373,
			52.393877
		],
		"metadata": {
			"attribution": "openrouteservice.org | OpenStreetMap contributors",
			"service": "routing",
			"timestamp": 1653140526243,
			"query": {
				"coordinates": [
					[
						13.128471,
						52.393886
					],
					[
						13.129373,
						52.393876
					]
				],
				"profile": "driving-car",
				"format": "json"
			},
			"engine": {
				"version": "6.7.0",
				"build_date": "2022-02-18T19:37:41Z",
				"graph_date": "2022-05-01T11:29:11Z"
			}
		}
	}' readStream