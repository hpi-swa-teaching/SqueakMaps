building
buildGeoGuessrButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'GeoGuessr';
		model: self;
		action: #showPin;
		help: 'Select a previously saved pin.';
		frame: (0 @ 0 corner: 1 @ 0.35);
		yourself