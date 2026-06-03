building
buildGeoGuessrButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'GeoGuessr';
		model: self;
		action: #openGeoGuessr;
		help: 'Open the GeoGuessr game.';
		frame: (0 @ 0 corner: 1 @ 0.35);
		yourself