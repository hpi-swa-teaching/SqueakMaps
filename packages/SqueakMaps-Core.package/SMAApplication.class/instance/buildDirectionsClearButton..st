building
buildDirectionsClearButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Route löschen';
		model: self;
		action: #clearRoute;
		help: 'Aktuelle Route entfernen.';
		frame: (0 @ 0.78 corner: 1 @ 0.86);
		yourself