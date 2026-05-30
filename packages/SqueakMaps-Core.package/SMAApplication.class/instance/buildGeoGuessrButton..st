building
buildGeoGuessrButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'GeoGuessr';
		model: self;
		action: #openGeoGuessr;
		frame: (0 @ 0 corner: 1 @ 0.35);
		yourself